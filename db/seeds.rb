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
  school_id: 1, role: 0, group_id: 1, number: 1, address: "Sofia"},
  {name: 'Antony Stoyanov',
  email: 'tonkata@example.com', password: 'password',
  password_confirmation: 'password', admin: false,
  school_id: 1, role: 2},
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
Group.find_or_create_by(
  {
    grade: 10,
    name: 'a',
    school_id: 1,
    user_id: 5
  }
)
Course.find_or_create_by(
  {
    subject_id: 1,
    school_id: 1,
    year: 2017,
    grade: 10,
    group_id: 1,
    user_id: 5,
    study_hours: 120
  }
)
Timetable.find_or_create_by(
  {
    school_id: 1
  }
)
Slot.find_or_create_by(
  {
    timetable_id: 1,
    start_time: 26700,
    end_time: 29400
  }
)
Schedule.find_or_create_by(
  {
    timetable_id: 1,
    group_id: 1
  }
)
Lesson.find_or_create_by(
  {
    schedule_id: 1,
    course_id: 1,
    day: 0
  }
)
Lesson.find_or_create_by(
  {
    schedule_id: 1,
    course_id: 1,
    day: 3
  }
)

puts 'Done ...'
