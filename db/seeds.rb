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
    user_id: 1
    )
end

puts '7 Student has been created'

##### BADMINTON

# BADMINTON Club

Club.create(name: 'Badminton', 
            semester_id: 1, 
            user_id: 1,
            about: 'UBD Badminton Club offers both competitive and leisure badminton sessions, so shuttlers of all levels are welcome! Besides free play, UBD Badminton Club also holds an Individual League (IL) every month whereby all members compete with each other in a competitive atmosphere to earn the Player of The Month title.',
            objective: 'To provide UBD Badminton Club members with enjoyable leisure activity and to improve and polish members badminton skills and game play.',
            member_benefit: 'Members will be able to improve their badminton skills and game play ; improvement on their fitness level ; to maintain their mental and physical well-being.',
            community_benefit: 'Well trained members will be able to help the community in improving in the badminton games, as well as able to leadd them towards a healthier lifestyle.',
            usual_day: 'Wednesday',
            hours_per_week: '3',
            usual_venue: 'Dewan Pusat Belia, Bandar / Scouts Building'
            )
puts 'Badminton Club has been created'

# BADMINTON Activity

3.times { |activity| Activity.create(
            user_id: 1,
            club_id: 1, 
            name: "Badminton #{activity + 1}", 
            no_of_hours: 3, 
            weightage: 10, 
            dev_aspect: 1,
            week_no: "#{activity + 1}",
            date: Date.today + ("#{(activity + 1) * 7}").to_i.days,
            time: Time.now,
            description: 'Take bench forkball baltimore chop fall classic, sport passed ball breaking ball relief pitcher. Hot dog force national pastime knuckleball sacrifice walk off base on balls. Corner club sacrifice bunt ball earned run hardball doubleheader diamond. Steal cup of coffee hardball rip screwball double play mound. '
            ) 
        }
puts '3 Activity have been created for the BADMINTON club'

7.times { |activity| Activity.create(
            user_id: 1, 
            club_id: 1, 
            name: "Painting Challenge #{activity + 4}", 
            no_of_hours: 3, 
            weightage: 10, 
            dev_aspect: 3,
            week_no: "#{activity + 1}",
            date: Date.today + ("#{(activity + 4) * 7}").to_i.days,
            time: Time.now,
            description: 'Take bench forkball baltimore chop fall classic, sport passed ball breaking ball relief pitcher. Hot dog force national pastime knuckleball sacrifice walk off base on balls. Corner club sacrifice bunt ball earned run hardball doubleheader diamond. Steal cup of coffee hardball rip screwball double play mound. '
            ) 
        }
puts '7 Activity have been created for the BADMINTON club'

# BADMINTON Member

7.times {|member| Member.create(club_id: 1, student_id: "#{member + 1}") }
puts '7 members have been created for the BADMINTON club'

7.times { |member| Member.create(club_id: 1, student_id: "#{member + 8}") }
puts '7 members have been created for the Kendo club'


# BADMINTON Attendance

15.times { |member| Attendance.create(activity_id: 1, member_id: "#{member + 1}", status: 1) }
puts '15 Attendance have been created for the First Activity of the BADMINTON Club' 

15.times { |member| Attendance.create(activity_id: 2, member_id: "#{member + 6}", status: 1) }
puts '15 Attendance have been created for the Second Activity of the BADMINTON Club' 





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


