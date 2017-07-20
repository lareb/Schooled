require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'that you can register' do
    get new_users_path
    assert 200, status

    post users_path, params: {
      user: {
        email: 'pesho@abv.bg',
        password: '123123',
        password_confirmation: '123123'
      }
    }

    assert User.find_by(email: 'pesho@abv.bg')
  end
end
