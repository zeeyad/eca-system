Semester.create(session: '2018', year: 2018, status: true)
puts 'Semester has been created'

#User.create(username: 'Jack1411', name: 'Jack', email: 'jack@gmail.com', password: '123456', password_confirmation: '123456')

7.times do |user|
  User.create( 
    username: "User #{user + 1}",
    name: "Jack #{user + 1}",
    email: "jack#{user + 1}@gmail.com",
    password: '123456',
    password_confirmation: '123456'
    )
end
puts '7 Users have been created'

Club.create(name: 'Art', semester_id: 1, user_id: 1 )
puts 'Art Club has been created'

Club.create(name: 'Kendo', semester_id: 1, user_id: 1 )
puts 'Kendo Club has been created'

Club.create(name: 'Dance', semester_id: 1, user_id: 1 )
puts 'Dance Club has been created'

20.times do |student|
  Student.create( 
    name: "Student #{student + 1}",
    student_reg: "student_reg_#{student + 1}",
    user_id: 1)
end

puts '7 Student has been created'

7.times {|member| Member.create(club_id: 1, student_id: "#{member + 1}") }

puts '7 members have been created for the Art club'

7.times { |member| Member.create(club_id: 1, student_id: "#{member + 8}") }

puts '7 members have been created for the Kendo club'

3.times { |activity| Activity.create(user_id: 1, club_id: 1, name: "Artsy #{activity + 1}") }

puts '3 Activity have been created for the Art club'

7.times { |activity| Activity.create(user_id: 1, club_id: 1, name: "Painting Challenge #{activity + 4}") }

puts '7 Activity have been created for the Art club'

15.times { |member| Attendance.create(activity_id: 1, member_id: "#{member + 1}", status: 1) }

puts '15 Attendance have been created for the First Activity' 

15.times { |member| Attendance.create(activity_id: 2, member_id: "#{member + 6}", status: 1) }

puts '15 Attendance have been created for the Second Activity' 