puts "Generating seeds..."

School.find_or_create_by(
  {name: 'SMG',
  address: 'Sofia', 
  phone_number: '0885955926'
  }
)

users_seed = [
  {name: 'Kristiyan Tsvetanov',
  email: 'kris@example.com', password: 'password',
  password_confirmation: 'password', admin: true},
  {name: 'Nikola Jichev',
  email: 'niko@example.com', password: 'password',
  password_confirmation: 'password', admin: true},
  {name: 'Ivancho',
  email: 'ivancho@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 0, group_id: 1},
  {name: 'Antony Stoyanov',
  email: 'tonkata@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 3},
  {name: 'Veliko Kolev',
  email: 'kolev@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 1}
]

users_seed.each do |user_params|
  User.create(user_params)
end

Subject.find_or_create_by(
  {
    name: 'Mathematics',
    grade: 10
  }
)
Course.find_or_create_by(
  {
    subject_id: 1,
    school_id: 1,
    year: 2017
  }
)
Group.find_or_create_by(
  {
    grade: 10,
    name: 'a',
    school_id: 1
  }
)
CourseGroup.find_or_create_by(
  {
    course_id: 1,
    group_id: 1
  }
)
CourseGroupTeacher.find_or_create_by(
  {
    course_group_id: 1,
    user_id: 5
  }
)
CourseStudent.find_or_create_by(
  {
    course_id: 1,
    user_id: 3
  }
)

puts 'Done ...'
