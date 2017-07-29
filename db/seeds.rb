puts "Generating seeds..."

User.find_or_create_by([
           {name: 'Kristiyan Tsvetanov',
            email: 'kris@example.com', password: 'password',
            password_confirmation: 'password', admin: true}
])
User.find_or_create_by([
           {name: 'Nikola Jichev',
            email: 'niko@example.com', password: 'password',
            password_confirmation: 'password', admin: true}
])
User.find_or_create_by([
           {name: 'Antony Stoyanov',
            email: 'tonkata@example.com', password: 'password',
            password_confirmation: 'password', admin: false}
])
User.find_or_create_by([
           {name: 'Veliko Kolev',
            email: 'kolev@example.com', password: 'password',
            password_confirmation: 'password', admin: false}
])
User.find_or_create_by([
           {name: 'Ivancho',
            email: 'ivancho@example.com', password: 'password',
            password_confirmation: 'password', admin: false}
])
School.find_or_create_by([
           {name: 'Sofia High School of Mathematics',
            address: 'Sofia', 
          	phone_number: '0885955926'}
])

puts 'Done ...'
