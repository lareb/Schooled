class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @courses = @user.group.courses if @user.student?
    @courses = @courses.where(grade: params[:grade]) if params[:grade]
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    debugger
    @user = User.new(create_params)

    if @user.save
      session[:user_id] = @user.id
      case create_params[:role]
      when "student"
        @user.update_attribute('group_id', nil)
        @user.invitations.create(create_params.slice(:group_id, :identification, :address, :phone_number))
        redirect_to root_url, notice: 'Thank you for signing up! Your application to #{@user.school.name} is now awaiting confirmation from your teacher!'
      when "teacher"

      else

      end
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if current_user.update(update_params)
        format.html { redirect_to current_user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: current_user }
      else
        format.html { render :edit }
        format.json { render json: current_user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def create_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation, :school_id, :group_id, :identification, :address, :role, :number, :phone_number)
  end

  def update_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
