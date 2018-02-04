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

Student.create( name: 'MUHAMMAD FAIZ BIN SHADUN', student_reg: '12B1143', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'NUR HAZIRAH BINTI AWG HAJI MATUSIN', student_reg: '12B8014', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'NURSAFIQAH AMERAH BINTI JEFFREE', student_reg: '12B8015', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'HAJAH EZZAH FAKHRIAH BTE HAJI MORSIDI', student_reg: '12B8016', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'MUNA AFIQAH BINTI MASRI', student_reg: '12B8037', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'ROSRATNADEWI BTE ROSNAN', student_reg: '12B8150', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'MUHD NUR AZIM BIN ROSLAN', student_reg: '12B8160', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'SITI NADIAH BTE AWANG TUSIN', student_reg: '12B8162', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'AMAL HAYATIE BINTI HAJI BAHAR', student_reg: '13B1060', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')
Student.create( name: 'NUR HANIS BINTI PG HJ MOHD JAAFAR', student_reg: '13B1066', user_id: 1, faculty: 'APB', degree: 'Bachelor of Arts')

Student.create( name: 'SAFURAA BINTI KAMARULZAMAN', student_reg: '13B1274', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')
Student.create( name: 'SARAH JANE WARD', student_reg: '13B1275', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')
Student.create( name: 'SHEIKH MOHAMED IZZAT BIN SHEIKH KHALID', student_reg: '13B1277', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')
Student.create( name: 'SITI HAMIZAH BINTI MERALI', student_reg: '13B1281', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')
Student.create( name: 'SITI HUMAIRAH BINTI SIUMOR', student_reg: '13B1282', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')

Student.create( name: 'SITI MARIYAM BINTI HAJI OSMAN', student_reg: '13B1286', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')
Student.create( name: 'SITI NOR AMALINA BINTI AHMAD', student_reg: '13B1284', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')
Student.create( name: 'SITI NOR AQILAH BINTI HJ ABAS', student_reg: '13B1285', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')
Student.create( name: 'SITI NOR KAMILAH @ MUNAH BINTI RAHMAN', student_reg: '13B1287', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')
Student.create( name: 'SITI NORAIN BTE AWANG BASAR', student_reg: '13B1288', user_id: 1, faculty: 'FASS', degree: 'Bachelor of Arts')

puts '20 Student has been created'


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
            usual_venue: 'Dewan Pusat Belia, Bandar / Scouts Building',            
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
            description: 'Take bench forkball baltimore chop fall classic, sport passed ball breaking ball relief pitcher. Hot dog force national pastime knuckleball sacrifice walk off base on balls. Corner club sacrifice bunt ball earned run hardball doubleheader diamond. Steal cup of coffee hardball rip screwball double play mound. ',
            venue: 'Dewan Pusat Belia, Bandar / Scouts Building'
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
            week_no: "#{activity + 4}",
            date: Date.today + ("#{(activity + 4) * 7}").to_i.days,
            time: Time.now,
            description: 'Take bench forkball baltimore chop fall classic, sport passed ball breaking ball relief pitcher. Hot dog force national pastime knuckleball sacrifice walk off base on balls. Corner club sacrifice bunt ball earned run hardball doubleheader diamond. Steal cup of coffee hardball rip screwball double play mound. ',
            venue: 'Dewan Pusat Belia, Bandar / Scouts Building'
            ) 
        }
puts '7 Activity have been created for the BADMINTON club'

# BADMINTON Member

7.times {|member| Member.create(club_id: 1, student_id: "#{member + 1}") }
puts '7 members have been created for the BADMINTON club'


# BADMINTON Attendance

10.times { |attendance| Attendance.create(activity_id: 1, member_id: "#{attendance + 1}", status: 1) }
puts '15 Attendance have been created for the First Activity of the BADMINTON Club' 

10.times { |attendance| Attendance.create(activity_id: 2, member_id: "#{attendance + 1}", status: 1) }
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


## NASYID - Religious and Spiritual

# NASYID Club

Club.create(name: 'Nasyid', 
            about: 'About Nasyid Club',
            objective: 'Objective Nasyid Club',
            member_benefit: 'Member Benefit Nasyid Club',
            community_benefit: 'Community Benefit Nasyid Club',
            semester_id: 1, 
            user_id: 1,
            phs_activity: 'Larian Ukhwah, Sukan IPT Mulimin dan Muslimat',
            phs_hours: 4, 
            phs_weightage: 14,
            culture_activity: 'NAsyid and Tausyeh Competition',
            culture_hours: 3,
            culture_weightage: 10,
            spiritual_activity: 'Lectures, Seminar, Taddabur',
            spiritual_hours: 15,
            spiritual_weightage: 50,
            social_activity: 'Showcase Booth, Invite IPT participation, invite schools',
            social_hours: 5,
            social_weightage: 16,
            mental_activity: 'Forum',
            mental_hours: 3,
            mental_weightage: 10,
             )
puts 'Nasyid Club has been created'

# NASYID Activity

# TODO --> Activity 

Activity.create(user_id: 1, club_id: 4, name: "Larian Ukhwah", no_of_hours: 2, weightage: 7, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "Sukan IPT Muslimin dan Muslimat", no_of_hours: 2, weightage: 7, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "Nasyid and Tauseh Competition", no_of_hours: 3, weightage: 10, dev_aspect: 1) 
Activity.create(user_id: 1, club_id: 4, name: "Lectures, Seminar Taddabur", no_of_hours: 15, weightage: 50, dev_aspect: 2) 
Activity.create(user_id: 1, club_id: 4, name: "Showcase Booth", no_of_hours: 5, weightage: 16, dev_aspect: 3) 
Activity.create(user_id: 1, club_id: 4, name: "Forum", no_of_hours: 3, weightage: 10, dev_aspect: 4) 
puts '6 Activities have been created for the Nasyid club'


# NASYID Member

7.times {|member| Member.create(club_id: 4, student_id: "#{member + 8}") }
puts '7 members have been created for the NASYID club'

# NASYID ATTENDANCE

10.times { |attendance| Attendance.create(activity_id: 11, member_id: "#{attendance + 1}", status: 1) }
puts '10 Attendance have been created for the First Activity of the NAYSID Club' 