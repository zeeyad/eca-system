# SEMESTER Create

Semester.create(session: '2018', year: 2018, status: true)
puts 'Semester has been created'

# USER Create

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


20.times do |student|
  Student.create( 
    name: "Student #{student + 1}",
    student_reg: "student_reg_#{student + 1}",
    user_id: 1)
end

puts '7 Student has been created'




##### NETBALL

# NETBALL Club

Club.create(name: 'Netball', semester_id: 1, user_id: 1 )
puts 'Netball Club has been created'

# NETBALL Activity

3.times { |activity| Activity.create(user_id: 1, club_id: 1, name: "Netballsy #{activity + 1}", no_of_hours: 3, weightage: 10, dev_aspect: 1) }
puts '3 Activity have been created for the Netball club'

7.times { |activity| Activity.create(user_id: 1, club_id: 1, name: "Painting Challenge #{activity + 4}", no_of_hours: 3, weightage: 10, dev_aspect: 3) }
puts '7 Activity have been created for the Netball club'

# NETBALL Member

7.times {|member| Member.create(club_id: 1, student_id: "#{member + 1}") }
puts '7 members have been created for the Netball club'

7.times { |member| Member.create(club_id: 1, student_id: "#{member + 8}") }
puts '7 members have been created for the Kendo club'


# NETBALL Attendance

15.times { |member| Attendance.create(activity_id: 1, member_id: "#{member + 1}", status: 1) }
puts '15 Attendance have been created for the First Activity of the Netball Club' 

15.times { |member| Attendance.create(activity_id: 2, member_id: "#{member + 6}", status: 1) }
puts '15 Attendance have been created for the Second Activity of the Netball Club' 





##### KOREAN - Arts & Culture

# KOREAN Club

Club.create(name: 'Korean', semester_id: 1, user_id: 1 )
puts 'Korean Club has been created'

# KOREAN Activity

Activity.create(user_id: 1, club_id: 4, name: "Korean Run", no_of_hours: 2, weightage: 6, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "Korean Sports", no_of_hours: 2, weightage: 6, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "Korean Competition", no_of_hours: 3, weightage: 40, dev_aspect: 1) 
Activity.create(user_id: 1, club_id: 4, name: "Lectures, Seminar Taddabur", no_of_hours: 15, weightage: 18, dev_aspect: 2) 
Activity.create(user_id: 1, club_id: 4, name: "Showcase Booth", no_of_hours: 5, weightage: 15, dev_aspect: 3) 
Activity.create(user_id: 1, club_id: 4, name: "Forum", no_of_hours: 3, weightage: 15, dev_aspect: 4) 
puts '6 Activities have been created for the Korean club'




##### BPMFASS - Leadership & Innovation

# BPMFASS Club

Club.create(name: 'BPMFASS', semester_id: 1, user_id: 1 )
puts 'BPMFASS Club has been created'

# BPMFASS Activity

Activity.create(user_id: 1, club_id: 4, name: "BPMFASS Run", no_of_hours: 2, weightage: 6, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "BPMFASS Sports", no_of_hours: 2, weightage: 6, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "BPMFASS Competition", no_of_hours: 3, weightage: 40, dev_aspect: 1) 
Activity.create(user_id: 1, club_id: 4, name: "Lectures, Seminar Taddabur", no_of_hours: 15, weightage: 18, dev_aspect: 2) 
Activity.create(user_id: 1, club_id: 4, name: "Showcase Booth", no_of_hours: 5, weightage: 15, dev_aspect: 3) 
Activity.create(user_id: 1, club_id: 4, name: "Forum", no_of_hours: 3, weightage: 15, dev_aspect: 4) 
puts '6 Activities have been created for the BPMFASS club'




##### NASYID - Religious and Spiritual

# NASYID Club

Club.create(name: 'Nasyid', semester_id: 1, user_id: 1 )
puts 'Nasyid Club has been created'

# NASYID Activity

Activity.create(user_id: 1, club_id: 4, name: "Larian Ukhwah", no_of_hours: 2, weightage: 7, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "Sukan IPT Muslimin dan Muslimat", no_of_hours: 2, weightage: 7, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "Nasyid and Tauseh Competition", no_of_hours: 3, weightage: 10, dev_aspect: 1) 
Activity.create(user_id: 1, club_id: 4, name: "Lectures, Seminar Taddabur", no_of_hours: 15, weightage: 50, dev_aspect: 2) 
Activity.create(user_id: 1, club_id: 4, name: "Showcase Booth", no_of_hours: 5, weightage: 16, dev_aspect: 3) 
Activity.create(user_id: 1, club_id: 4, name: "Forum", no_of_hours: 3, weightage: 10, dev_aspect: 4) 
puts '6 Activities have been created for the Nasyid club'


