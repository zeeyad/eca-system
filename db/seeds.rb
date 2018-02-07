# SEMESTER CREATE

Semester.create(session: 'September 2016', year: 2016, status: true)
puts 'Semester has been created'

# USER CREATE

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



###### #1
######
###### EXECUTIVE: SPORTS & RECREATION
###### OFFICE: STUDENT ACTIVITIES & DEVELOPMENT OFFICE
###### ASPECTS: PHYSICAL & HEALTH; SOCIAL COMMUNITY; MENTAL & PSYCHOLOGICAL 
######
######

# 1. KELAB SENI PENCAK SILAT UBD (KSPS UBD)
Club.create(name: "KELAB SENI PENCAK SILAT UBD (KSPS UBD)", 
            about: 'A Malay self-defense club, focusing on Brunei Malay traditional martial arts such as, Cakak Asli Brunei and Kuntau',
            objective: "To uphold the Malay culture, especially in its martial art; to preserve the Brunei Malay heritage; to introduce the Malay culture to the younger generation; to build the positive character through every training; to prepare oneself in a dangerous situation and to be more alert with surrounding",
            member_benefit: 'A healthy body and mind and well prepared in the dangerous situation. A person learning self-defense can be very tactical, analytical and calculated',
            community_benefit: 'Silat can be used to save anyone in danger. Apart from defense purpose, it is one of many ways to promote Brunei Malay culture to public when invited to perform in a public event',
            usual_venue: 'Basement, CH',
            usual_day: 'Wednesday',
            hours_per_week: '2 hours',
            user_id: 1,
            semester_id: 1
            )

# 2. UBD KENDO CLUB
Club.create(name: "UBD KENDO", 
            about: '"The UBD Kendo Club aims to train its members in The way of the Swords by training them from the basic footwork to the different types of cuts and ending the session by testing these fundamentals against each other whenever possible."',
            objective: 'The objectives of UBD Kendo Club is to promote the learning of Kendo (The way of the sword), discipline and Japanese culture through its art in UBD, and to foster friendship among its members and Kendo practitioner both in Brunei and internationally.',
            member_benefit: '1. Opportunity to learn and experinece the descipline and etiquette of Kendo.
                            2. Exposure to parts of the Japanese Culture
                            3. Foster friendship among kendoka practitioner in and outside of UBD and Brunei
                            4. Opportunity to improve the mental and physical of oneself through the teaching of Kendo',
            community_benefit: '1. Opportunity to learn and experinece the descipline and etiquette of Kendo.
                            2. Exposure to parts of the Japanese Culture
                            3. Foster friendship among kendoka practitioner in and outside of UBD and Brunei
                            4. Opportunity to improve the mental and physical of oneself through the teaching of Kendo',
            usual_venue: 'CLT FOYER OR MPH',
            usual_day: 'TUESDAY AND THURSDAY',
            hours_per_week: '2 hours',
            user_id: 1,
            semester_id: 1
            )

# 3. UBD RENGOKAI KARATE-DO CLUB
Club.create(name: "UBD RENGOKAI KARATE-DO", 
            about: 'Rengokai is one of the five main principle styles that are affiliated to BRUKAF (Brunei Karatedo Federation). Rengokai Karatedo (Shotokan) is a self-defense martial arts which martial arts is now considered a sport and has been contested in events such as Sukan Kebangsaan Brunei Darussalam (SKBD), SUKMA and SEA games.',
            objective: "1. ‘Jinkaku Kansei Ni Tsutomuru Koto’
                        = Each person must strive for the completion and perfection of one's character (Integrity)
                        2. ‘Makoto No Michi O Mamoru Koto’
                        = Each person must be faithful and protect the way of truth (Loyalty)
                        3. Doryoku No Seishin O Yashinau Koto
                        = Each person must endeavor (Effort)
                        4. Reigi O Omonzuru Koto
                        = Each person must respect others (Etiquette)
                        5. Kekki No Yuu O Imashimuru Koto
                        = Each person must refrain from violent behaviour (Control)",
            member_benefit: 'Improved concentration for better work and study habits; stress reduction and the ability to relax; confidence in knowing you can defend yourself and your loved ones; motivation and an "I Can Do It" attitude; improved reflexes and coordination; increased strength and stamina; increased flexibility and weight control for better overall fitness; cardiovascular workouts to keep you in top shape; greatly improve balance; ability to defend yourself; a positive attitude toward life through self-confidence and self-discipline; self-esteem and your outlook on life; respect for yourself and those around you',
            community_benefit: 'Karate-Do can be used to save anyone in danger. Apart from defense purpose, it can be used as sport and recreational purpose that will make a healthy lifestyle community',
            usual_venue: 'Menglait Sports Complex',
            usual_day: 'Wednesday',
            hours_per_week: '2 hours',
            user_id: 1,
            semester_id: 1
            )

# 4. KARATE WADOKAI CLUB
Club.create(name: "KARATE WADOKAI", 
            about: 'Our club has been established in UBD since as early as 2007 and still running until present. We focus on educating our members on the importance of self defense as well as learning the history of traditional karate. Contact details : ubd.karatewadokai@gmail.com',
            objective: "To promote self defense with educational values, and to improve fitness level through its activities.",
            member_benefit: 'Maintaining fitness level and regular health',
            community_benefit: 'Creating awareness towards self defense',
            usual_venue: 'UBD CLT FOYER',
            usual_day: 'MONDAY & WEDNESDAY',
            hours_per_week: '4 hours',
            user_id: 1,
            semester_id: 1
            )

# 5. UBD HOCKEY CLUB
Club.create(name: "UBD HOCKEY", 
            about: 'field hockey',
            objective: " To ensure the right fundamentals, teachings and techniques of field hockey and at the same time unite the students of UBD.",
            member_benefit: 'gain more skills in field hockey',
            community_benefit: 'introducing more hockey athletes',
            usual_venue: 'Artificial Hockey Turf, UBD Sports Complex',
            usual_day: 'Wednesday',
            hours_per_week: '2.5 hours',
            user_id: 1,
            semester_id: 1
            )


# 6. UBD BASKETBALL CLUB
Club.create(name: "UBD BASKETBALL", 
            about: 'UBD Basketball Club is a sports club which allows local or international students to interact and play together to build friendship among each other. We compete in local tournaments as well from time to time such as the UBD Cup which we have been successful in the past few years winning multiple times.',
            objective: "1) Promote healthy lifestyle among UBD Students. 2) Promote the game of basketball to UBD Students",
            member_benefit: 'Usage of multipurpose court during our scheduled time',
            community_benefit: 'Hosting social activities such as tournaments for the community',
            usual_venue: 'UBD Multipurpose Hall',
            usual_day: 'THURSDAY',
            hours_per_week: '2 hours',
            user_id: 1,
            semester_id: 1
            )


# 7. UBDPPC
Club.create(name: "UBDPPC [ August 2015 (sem 1) ]", 
            about: 'it’s the fastest sport in earth',
            objective: "to make ubd student capable to play pingpong",
            member_benefit: 'new friends, healthy body',
            community_benefit: 'new generations for pingpong sports',
            usual_venue: 'Female Hostel Hall',
            usual_day: 'Wednesday',
            hours_per_week: '3 hours per week in 1 semester',
            user_id: 1,
            semester_id: 1
            )


# 8. TAEKWONDO CLUB
Club.create(name: "TAEKWONDO", 
            about: 'UBD Taekwondo (TKD for short) Club has been formed since the 1990’s.  The club has existed for more or less 16 years.  UBD TKD Club is also under the advisement of Brunei Darussalam Taekwondo Association (BDTA) which is recognized by the World Taekwondo Federation and the Department of Youth and Sports, Ministry of Culture, Youth and Sports. ',
            objective: "Creating a well-disciplined, healthy and visionary life through teamwork and leadership.",
            member_benefit: 'To find potential athletes that can represent UBD in Taekwondo tournaments. To give aid in achieving the highest standard of training and level of expertise for serious Taekwondoist in the institution. To create a healthy, discipline and at the same time fun, stress-relieving controlled environment.',
            community_benefit: 'To expose the Korean martial art and the knowledge it offers in terms of self-defense. To create interest and awareness about the martial art.',
            usual_venue: 'Dewan Asrama Peremuan (Monday) and CLT Foyer (Wednesday',
            usual_day: 'Monday and Wednesday',
            hours_per_week: '2 hours each day',
            user_id: 1,
            semester_id: 1
            )


# 9. UBD DODGEBALL CLUB
Club.create(name: "UBD DODGEBALL", 
            about: 'Ubd dodgeball club was established since 2013. Currently we have 8 comittees in total and had recruit more than 100 members.',
            objective: "Our objective is to expose UBD student to the sport of dodgeball.",
            member_benefit: 'Gain new knowledge and experience to expertise in dodgeball.',
            community_benefit: 'Strengthen and enhance the community to infuse physically and mentally balanced with sport.',
            usual_venue: 'Futsal Court 1, UBD Sport Complex.',
            usual_day: 'Thursday',
            hours_per_week: '2 hours',
            user_id: 1,
            semester_id: 1
            )

# 10. UBD ULTIMATE FRISBEE CLUB
Club.create(name: "UBD ULTIMATE FRISBEE", 
            about: 'The Ultimate Frisbee club was formed in 2011 due to the growing sport of Ultimate and to introduce this sport to institution of higher learning. At the time of the formation, this sport was quite new but thanks to the growing community of Ultimate players, the club now works together with the Bruneian Ultimate community. After joining tournaments for the past 3 year, UBD has successfully came as Champion for 3 consecutive years.',
            objective: "previously the club main objective was to create an official UBD Ultimate team that could represent UBD in various tournament and leagues that will be held in the future.  However, that have been achieved when UBD team won the first title during Graduation Cup in 2013. Now, the clubs objectives is to maintain the titled the club hold for the past 3 year as champion for the ulti-uni cup that is held every year. And ofcourse to spread the awareness between team member regarding how SOTG is extremely important in Ultimate.",
            member_benefit: 'New members will get to experience firsthand on how to play Ultimate and to meet with new people and as well as to travel around Brunei as most Ultimate tournaments are held on various sport complexes across the nation. Other than that, there is a chance to join international tournaments abroad as well',
            community_benefit: 'Once student from UBD graduated, they could help the community by teaching the basic of Ultimate to primary schoool to spread the Ultimate as nowadays it have gained much attention towards primary and secondary school.',
            usual_venue: 'Field A, Sport Complex UBD',
            usual_day: 'Wednesday',
            hours_per_week: '2hour 30 minutes',
            user_id: 1,
            semester_id: 1
            )

# 11. KELAB SILAT VARSITI GERAK-41
Club.create(name: "KELAB SILAT VARSITI GERAK-41", 
            about: "The club practices traditional silat art. the skills and techniques learnt through this club such as buah baji and mayang are as taught by persatuan gerak 41, one of the biggest silat organisation in brunei. the club itself is also one of the organisation's active branch in brunei.",
            objective: "To help the members to learn ways to protect themselves and make a quick but good decision especially when trapped in conflict",
            member_benefit: 'Healthy lifestyle, self-defense skills, connecting with fellow members.',
            community_benefit: 'Promoting Bruneian culture in the form of silat. exposing silat as 1 of the major martial arts in the world. ',
            usual_venue: 'TAMAN RAKIS, UBD',
            usual_day: 'WEDNESDAY (SEPARATE SESSIONS FOR BOYS & GIRLS) & SATURDAY',
            hours_per_week: '4 HOURS/WEEK.',
            user_id: 1,
            semester_id: 1
            )

# 12. UBD VOLLEYBALL CLUB
Club.create(name: "UBD VOLLEYBALL", 
            about: "we want to let the member experience a different kind of sport",
            objective: 'Purpose and objective of this club created is:- 
                    • To provide a different way for UBDian to have a healty lifestyle. 
                    • To teach the proper way of playing volleyball.
                    • To find talented UBDian in volleyball.
                    • To develop, encourage and work with one another not only for the Volleyball UBD team but also for self-construction.
                    • To show volleyball is a simple interesting sport.
                    • To unite the UBDian’s.',
            member_benefit: 'member will get to know a sport than before and volleyball is a good sport to release tension',
            community_benefit: 'they will know that in ubd there is volleyball club',
            usual_venue: 'Dewan Asrama Perempuan(soon to change to sport complex)',
            usual_day: 'Thursday and Saturday',
            hours_per_week: '2  hours 30 mins for one session so total 5 hours',
            user_id: 1,
            semester_id: 1
            )


# 13. BADMINTON CLUB
Club.create(name: 'BADMINTON', 
            about: 'UBD Badminton Club offers both competitive and leisure badminton sessions, so shuttlers of all levels are welcome! Besides free play, UBD Badminton Club also holds an Individual League (IL) every month whereby all members compete with each other in a competitive atmosphere to earn the Player of The Month title.',
            objective: 'To provide UBD Badminton Club members with enjoyable leisure activity and to improve and polish members badminton skills and game play.',
            member_benefit: 'Members will be able to improve their badminton skills and game play ; improvement on their fitness level ; to maintain their mental and physical well-being.',
            community_benefit: 'Well trained members will be able to help the community in improving in the badminton games, as well as able to leadd them towards a healthier lifestyle.',
            usual_venue: 'Dewan Pusat Belia, Bandar / Scouts Building',            
            usual_day: 'Wednesday',
            hours_per_week: '3 Hours/week',
            semester_id: 1, 
            user_id: 1,
            )

puts 'Badminton Club has been created'

# BADMINTON Activity SAMPLE

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


# 14. PARKOUR CLUB
Club.create(name: 'PARKOUR', 
            about: 'Fostered by BARA, UBD parkour is part of a widespread community across many IPTs and secondary schools',
            objective: 'Promote efficiency and effectiveness of movement through space with aesthetics as secondary objective',
            member_benefit: 'Fitness and safety in training',
            community_benefit: 'Dynamism, volunteerism',
            usual_venue: 'UTB Silver Jubilee, UBD Grandstand, Stadium',            
            usual_day: 'Wednesday, Friday, Saturday',
            hours_per_week: '2-3 hours per session',
            semester_id: 1, 
            user_id: 1,
            )

# 15. UBD RUGBY
Club.create(name: 'UBD RUGBY', 
            about: 'Since it’s founding on 19th August 2008 in Universiti Brunei Darussalam and its official registration under the Brunei Rugby Football Union, Sharks Rugby Football Club, also known as UBD SHARKS',
            objective: 'UBD Rugby (Sharks) is dedicated to the promotion and development in the sport of Rugby in Brunei Darussalam',
            member_benefit: '• To build healthy lifestyle in better way
                            • To expose university rugby for future',
            community_benefit: '• To build Rugby and Touch Rugby as a sport of recognition that is openly available to everyone regardless of gender, size, age, race, nationality, and so on. 
                                • To improve and intensify University Brunei Darussalam in term of Sports.',
            usual_venue: 'RUGBY FIELD AND TRACK FIELD ',
            usual_day: "MONDAY (CONTACT RUGBY TRAINING), TUESDAY (FITNESS SESSION) RUGBY TRAINING) ', WEDNESDAY (TOUCH RUGBY SESSION @CCA & CONTACT",
            hours_per_week: '2 HOURS PER SESSION AND 3 HOURS PER TRANING SESSION ',
            semester_id: 1, 
            user_id: 1,
            )

# 16. NETBALL CLUB
Club.create(name: 'NETBALL', 
            about: '-',
            objective: 'to give more knowledge and skills about the sport and to develop skill in sport',
            member_benefit: 'open up the opportunity to the students to represent UBD in local and international tournament',
            community_benefit: 'Open up more chances for the students to joined the national netball team to represent the country as a whole',
            usual_venue: 'UBD OUTDOOR COURT',
            usual_day: "MONDAY, WEDNESAY AND FRIDAY",
            hours_per_week: '6 HOURS',
            semester_id: 1, 
            user_id: 1,
            )

# 17. KELAB BOLASPEAK UNIVERSITI BRUNEI DARUSSALAM
Club.create(name: 'KELAB BOLASPEAK UNIVERSITI BRUNEI DARUSSALAM', 
            about: 'To create healthy lifestyle and brings benefits to the people.',
            objective: 'Memberikan kesedaran untuk menjaga kesihatan',
            member_benefit: 'Healthy lifestlye',
            community_benefit: 'Healthy lifestyle',
            usual_venue: 'Padang UBD A',
            usual_day: "Isnin Malam",
            hours_per_week: '2 HOURS',
            semester_id: 1, 
            user_id: 1,
            )

####### #2
#######
####### EXECUTIVE: ARTS & CULTURE
####### OFFICE: SUTDENT ACTIVITIES & DEVELOPMENT
####### 
#######


# 1. WRITERS' MOVEMENT (WRITER'S CLUB)
Club.create(name: "WRITERS' MOVEMENT (WRITER'S CLUB)", 
            about: "Writers' Movement dedicates their weekly session to explore and improve individual's potential in writing in all sorts of genre, be it formal (eg. academic writing) or informal (eg. poetry).",
            objective: "- To equip individuals with the necessary writing skills needed.
                        - To maximize writers' exposure to the plethora of genres and issues to write about.
                        - To tackle challenging topics by the appropriate style of writing and objectivity.",
            member_benefit: '- To act as a platform for writers to start or improve on their craft.',
            community_benefit: '- To uphold a standard discipline of writing principles and etiquette.',
            usual_venue: 'FASS G.20',
            usual_day: 'Wednesday',
            hours_per_week: '1.5 hours per session',
            user_id: 1,
            semester_id: 1
            )

# 2. ARABIC CLUB CULTURE
Club.create(name: "ARABIC CLUB CULTURE", 
            about: "Established on 2012, serving as a medium for the UBD students to learn arabic and culture.",
            objective: "To enhance the ability to communicate in arabic.",
            member_benefit: 'Learn new arabic words and are open to arabic culture',
            community_benefit: 'Increase the usage of arabic language among community',
            usual_venue: 'G.39 & G.40 FASS',
            usual_day: 'Wednesday',
            hours_per_week: '10 hours',
            user_id: 1,
            semester_id: 1
            )


# 3. KOREAN CULTURE CLUB UNIVERSITI BRUNEI DARUSSALAM (KCCUBD)
Club.create(name: "KOREAN CULTURE CLUB UNIVERSITI BRUNEI DARUSSALAM (KCCUBD)", 
            about: "Korean Culture Club of Universiti Brunei Darussalam was established in early 2006 with the support from Dr Kim Ji Yeon, who was a former Korean Language lecturer in UBD. Dr Kim has also created a motto for KCCUBD, that is '뿌리 깊은 나무는 바람에 흔들리지 않는다' which translates to 'Trees with deep rooted roots do not fall when swayed by the wind.' As a result, KCCUBD has survived for 10 years since it's establishment.",
            objective: "Allows members to be exposed to the beauty and diversity of the Korean culture  as well as practicing their social skills and to increase their confidence level.",
            member_benefit: 'In order for the community to understand other unique and different cultures that are existant within the society today. Not only that, it allows the locals to be more accepting of other cultures. ',
            community_benefit: 'Increase the usage of arabic language among community',
            usual_venue: 'CLT 1.13',
            usual_day: 'Wednesday',
            hours_per_week: '2 hours 30 Minutes',
            user_id: 1,
            semester_id: 1
            )

# 4. BRUNEI JAPAN FRIENDSHIP ASSOCIATION - UNIVERSITI BRUNEI DARUSSALAM (BJFA-UBD CHAPTER)
Club.create(name: "BRUNEI JAPAN FRIENDSHIP ASSOCIATION - UNIVERSITI BRUNEI DARUSSALAM (BJFA-UBD CHAPTER)", 
            about: "BJFA-UBD Chapter was established in 2004 by Brunei-Japan Friendship Association (BJFA; a private non-profit organization in Brunei) together with UBD. Since its establishment BJFA-UBD Chapter has been involved in many activities in Brunei and in Japan. As hosts, we also organize events which include cultural exchanges to welcome students, delegates and/or people from Japan who come to visit our country especially our university. With the club having connections with the Embassy of Japan, we are also involved with many events relating to Japan outside UBD, where we introduce them to Brunei’s culture, history and places of interest.",
            objective: "To promote the learning and understanding of both Bruneian and Japanese culture in UBD and also among the youth in Brunei Darussalam as well as to foster friendship among its members, youth from Japan, also to share and exchange culture with one another.",
            member_benefit: 'Members experience, practice and share different aspects of Japanese Culture, ideas and interests. They have the chance to socialize with students from Japan who come to Brunei for exchange programmes with UBD or come by to visit.',
            community_benefit: 'BJFA-UBD Chapter is involved in many public events that help build one’s character.',
            usual_venue: 'ROOM 4, LANGUAGE CENTRE',
            usual_day: 'Wednesday',
            hours_per_week: '2 HOURS TO 2.30 HOURS',
            user_id: 1,
            semester_id: 1
            )

# 5. UBD PERFORMING ARTS CLUB
Club.create(name: "UBD PERFORMING ARTS", 
            about: 'The Performing Arts Club was founded and formed in 2012. It is established with a purpose to promote and support performing arts among UBD students. The club aims to be a platform and creative hub for UBD students who are passionate about perfoming and non-performing aspects of theatre.',
            objective: "The objectives of the club is to provide students with the opportunities to develop their talents in performing (and non-performing) arts, including but not limited to,  singing, acting dancing, set design, lighting/sound, make-up/wardrob",
            member_benefit: 'Showcase talents in performing and/or non-performing arts, learn theories and practices of theatre production',
            community_benefit: 'To allow performing arts to be recognised in the community, and to give to-be UBD students platform for performing.',
            usual_venue: 'Room 7, Basement Rooms, UBD Chancellor Hall',
            usual_day: 'Wednesday',
            hours_per_week: '3-6 hours per week',
            user_id: 1,
            semester_id: 1
            )

# 6. PHONEMIC CLUB
Club.create(name: "PHONEMIC", 
            about: 'Phonemic Club is basically a music club. The club recruits vocalists, guitarists, bassists, drummers etc And those who want to learn music. The club performs every semester on campus. No auditions are required to enter the club. Members of the club are equipped with various Genres; rock, progressive metal, acoustic, R&B, Soul, pop, ballad.',
            objective: "To establish a pool of various musicians and singers, play together and Learn together as a team. Also, to allow members to experience performing. Live in front of a crowd and the essentials needed to plan musical events; To give members the opportunity to show their talents.",
            member_benefit: 'Members can learn from each other so they can expand their Knowledge about music; the Experience of performing in Front of crowds and planning Events such as concerts. Also, To boost self-confidence & Teamwork.',
            community_benefit: 'Providing entertainment to the Community with various genres of Music performed by talented members. Showing the community that all kinds of Music are accepted; the courage to be Yourself.',
            usual_venue: 'Central Lecture Theater, Room 1.11',
            usual_day: 'Wednesday',
            hours_per_week: '2 – 3 hours',
            user_id: 1,
            semester_id: 1
            )

# 7. KELAB ORKESTRA GULINGTANGAN VARSITI ( KOGV )
Club.create(name: "KELAB ORKESTRA GULINGTANGAN VARSITI ( KOGV )", 
            about: 'Learning about brunei traditional song ',
            objective: "Maintain cultural brunei",
            member_benefit: 'Know brunei traditional song',
            community_benefit: '-',
            usual_venue: 'Common room near pmubd office',
            usual_day: 'Wednesday',
            hours_per_week: '2 hours',
            user_id: 1,
            semester_id: 1
            )

# 8. UBD SAWADDEE CLUB
Club.create(name: "UBD SAWADDEE CLUB", 
            about: 'The UBD Sawaddee Club is established with a purpose to introduce Thai Culture among UBD students and to help the students to increase their understanding on foreign cultures specifically Thai cultures which benefit them in terms of social relationships. This is important as we live in a community where there are different people with different cultural backgrounds.',
            objective: "A) To broaden knowledge on foreign culture specifically Thai Culture;  B) To provide cultural activities and programs for the members of the club; &  C) To expose the members to Thai peoples, cultures, customs & traditions by organizing educational trip as well as through Community work. ",
            member_benefit: '-',
            community_benefit: '-',
            usual_venue: 'CLT ROOM G1.1',
            usual_day: 'Wednesday',
            hours_per_week: '1 HR 30MIN TO 2HRS',
            user_id: 1,
            semester_id: 1
            )

# 9. KELAB PENDETA BAHASA
Club.create(name: "KELAB PENDETA BAHASA", 
            about: '-',
            objective: "-",
            member_benefit: '-',
            community_benefit: '-',
            usual_venue: 'Library',
            usual_day: 'Wednesday',
            hours_per_week: '1 Hour',
            user_id: 1,
            semester_id: 1
            )

# 10. ART CLUB
Club.create(name: "ART", 
            about: "Creativity, Aesthetic, Talent are the terms define the Art Club.  The club's members will have the chance to experiment with creative artworks by using basic materials and mediums (E.g. paints pencils, and clay), exploring variety of styles and techniques, and developing their original idea on the works they produce.",
            objective: "1) To demonstrate knowledge and understanding of a variety of styles that offers in fine art. 2) To encourage fine art awareness and increase the art department's presence. 3) To promote and support art enthusiasts.",
            member_benefit: "1) Use art confidently as a form of expression and communication. 2) Learn a range of technical skills with different materials, mediums and styles. 3) Appreciate and appraise their work and that of others.",
            community_benefit: "1) Arts can give a message in a variety of different forms - people can use this for positive purposes. 2) Art connect by using collaborative art that bring us together. 3) Working on a project, people can see how beneficial it is to spend time with people who have different skills and life experiences. 4) Art helps us to become accepting, respectful and patient person, by learning to work at each other’s pace and appreciate the different ways of doing things.",
            usual_venue: 'SHBIE G.38',
            usual_day: 'Wednesday',
            hours_per_week: 'Two hours (2pm - 4pm).',
            user_id: 1,
            semester_id: 1
            )

# 11. FRENCH METROPOLITAIN 
Club.create(name: "FRENCH METROPOLITAIN", 
            about: "The French Metropolitain club is a cultural club in UBD aimed to spread awareness of the beauty of the French Culture through activities and interactions between students. The club Consists of one session per week and runs events for the semester and are also a part of the annual UBD Cultural Week. ",
            objective: "To share with everyone, the beauty of the French culture and strengthen the relation between Brunei and France, starting with the people.",
            member_benefit: "To polish the French language amongst group members",
            community_benefit: "to share with everyone, the beauty of French Culture",
            usual_venue: 'Room 6, Language Centre',
            usual_day: 'Wednesday',
            hours_per_week: '11 hours TOTAL',
            user_id: 1,
            semester_id: 1
            )


####### #3
#######
####### EXECUTIVE: LEADERSHIP & INNOVATION
####### OFFICE: STUDENT ACTIVITIES & DEVELOPMENT OFFICE
#######
#######

# 1. SBE STUDENT COUNCIL
Club.create(name: "SBE STUDENT COUNCIL", 
            about: 'UBDSBESC is a group of student representatives from the UBD School of Business and Economics; responsible for helping out and responding to the faculty in general inclusive of the staff and students. The club is also responsible for conducting events within the scope of the School of Business and Economics.',
            objective: "1)To help out with the concerns of UBDSBE's staff and students 2)Providing members with an experience of working in an organization",
            member_benefit: '1)Enhance leadership and communication skills, 2) Allows Networking',
            community_benefit: '1) Well-rounded workforce',
            usual_venue: '-',
            usual_day: '-',
            hours_per_week: '-',
            user_id: 1,
            semester_id: 1
            )

# 2. FIT UNION
Club.create(name: "FIT UNION", 
            about: 'Faculty of Integrated Technologies Student Council, generally known as FIT Union, leadership skills are practised among the small community of engineering students. FIT Union is also responsible to lead and guide FIT students in organizing events smoothly.',
            objective: "To promote faculty of integrated sciences",
            member_benefit: 'To improve leadership and time management skills',
            community_benefit: 'As a representative of FIT students to collaborate with students to coordinate events and help develop the learning partnership between staff and student on campus',
            usual_venue: 'Faculty of integrated sciences building',
            usual_day: 'Wednesday',
            hours_per_week: '-',
            user_id: 1,
            semester_id: 1
            )

# 3. FACULTY OF SCIENCE STUDENT BODY
Club.create(name: "FACULTY OF SCIENCE STUDENT BODY", 
            about: '"Established in 2013, with only 18 members. Has participated in various activities within the university and collaborated with various organizations"',
            objective: 'To promote FOS to public, to support welfare of the faculty, to work together with the other student bodies and clubs for organizing activities and events, to strengthen the student-staff relationship',
            member_benefit: '"To unite and strengthen the student-student relationship"',
            community_benefit: 'To strengthen the student-community relationship',
            usual_venue: 'MPH, FSM 2.18, Dewan Asrama Perempuan',
            usual_day: 'Wednesday',
            hours_per_week: '4 hours',
            user_id: 1,
            semester_id: 1
            )

# 4. BPMFASS
Club.create(name: "BPMFASS", 
            about: 'BPM FASS is a student body that caters to the welfare of the students and staff of FASS (Faculty Of Arts & Social Sciences).',
            objective: 'To help the UBD Community, especially FASS students; to inspire others and; to make UBD life more memorable',
            member_benefit: 'Members will be able to learn skills that will be an extension of their formal education',
            community_benefit: 'More memorable experiences through our events; help the students by sharing their ideas, interests and concerns and letting their voices be heard. ',
            usual_venue: 'FASS',
            usual_day: 'Wednesday',
            hours_per_week: '2-3 hours',
            user_id: 1,
            semester_id: 1
            )

# 5. PAPRSB IHS STUDENT COUNCIL
Club.create(name: "PAPRSB IHS STUDENT COUNCIL", 
            about: 'IHS Student Council offers a medium for the IHS students on issues that directly influence them. We are also aim to give support to PAPRSB IHS administrative with the purpose of reducing their burden and to help the administration to its simplicity. In addition, we provide opportunities and preparations for PAPRSB IHS students to gain experience and skills as well as information relevant to their respective choice of fields.',
            objective: '• To instill and enrich their leadership skill. 
                        • As a medium of communication in relaying health information and advice between the IHS students of different courses, within UBD and outside community. 
                        • To represent IHS students in the UBD community and develop good rapport among students and also with other faculties.',
            member_benefit: 'As a pre-exposure and to aid them to face the real world once they graduate.',
            community_benefit: "Receive information about the IHS, it's  courses provided and the health informations to be shared among the students to the community.",
            usual_venue: 'PAPRSB IHS area',
            usual_day: 'Wednesday',
            hours_per_week: '-',
            user_id: 1,
            semester_id: 1
            )

# 6. BADAN PERHUBUNGAN DAN KESEJAHTERAAN MAHASIWA/I AKADEMI PENGAJIAN BRUNEI (BKMAPB)
Club.create(name: "BADAN PERHUBUNGAN DAN KESEJAHTERAAN MAHASIWA/I AKADEMI PENGAJIAN BRUNEI (BKMAPB)", 
            about: 'Penubuhan Badan Perhubungan dan Kesejahteraan Akademi Pengajian Brunei adalah sebagai satu badan di bawah naungan Akademi Pengajian Brunei dan Persatuan Mahasiswa Universiti Brunei Darussalam ',
            objective: '- untuk membolehkan Mahasiswa/i APB dan Mahasiswa/i fakulti lain bergerak sebagai satu badan kebajikan dan sosial
                        - untuk memberi khidmat yang berguna kepada APB dan UBD serta masyarakat sebagai saluran yang sah di sisi undang-undang.
                        - untuk menyatupadukan mahasiswa/i dengan menggalakkan perasaan mahabbah melalui beberapa kegiatan dan aktiviti. 
                        - untuk mengeratkan hubungan antara mahasiwa/i dengan tenaga-tenaga akademik di UBD.',
            member_benefit: '- ',
            community_benefit: "- Dapat berkhidmat kepada UBD sebagai saluran yang sah di sisi undang-undang. 
                                - Dapat bekerjasama dengan mahasiswa lain 
                                - Dapat pengalaman dalam mengendalikan program atau aktiviti.",
            usual_venue: 'Ofis BPKMAPB',
            usual_day: 'Saturday',
            hours_per_week: '2 Hour',
            user_id: 1,
            semester_id: 1
            )

# 7. PLATUN KADET TENTERA UNIVERSITI BRUNEI DARUSSALAM
Club.create(name: "PLATUN KADET TENTERA UNIVERSITI BRUNEI DARUSSALAM", 
            about: 'The very first uniform squad established among the higher-learning institutions and colleges of Brunei Darussalam. Divided into 3 different sections; Uniform, Bravo and Delta. ',
            objective: 'To create a competent uniformed body that will work towards producting a generation of people that are beneficial for the development and the maintainance of peace of the country. To provide a variety of exercises and activities that will produce a generation of people who are knowledgeable, competent and militarily disciplined',
            member_benefit: 'Teaches one person the importance of discipline, organization and teamwork',
            community_benefit: "Forms a generation of people which give benefits towards the community's development with the skills learned, by contributing their time, energy and knowledge.",
            usual_venue: 'CHANCELLOR HALL PARKING LOT / ASMDB RIMBA KEM',
            usual_day: 'Wednesday',
            hours_per_week: '3-4 HOURS',
            user_id: 1,
            semester_id: 1
            )



####### #4
#######
#######
####### EXECUTIVE: RELIGIOUS & SPIRITUAL
####### OFFICE: SPRITUAL & COMMUNITY SERVICE
#######
#######



# 1. QURANIC GENERATION (QUGEN) CLUB
Club.create(name: "QURANIC GENERATION (QUGEN)", 
            about: 'Previously known as “Kelab Al-Qur’an”, Quranic Generation (QuGen) Club is a club under EKK. This semester, our club aims to inspire members to develop their leadership skills and unleash their potentials to motivate others using their own personal talents, using Al-Qur’an as our main source of inspiration. ',
            objective: '- To inspire the members to apply extensive leadership qualities in various aspects and areas according to their own personal creativity and talents,
                        - To search for students who have potentials and eagerness to motivate other people by using their own talents, for example, photography, videography, social media, writing and painting',
            member_benefit: 'Members will be exposed to a series of talks on the ideal characteristics of a good Muslim leader by certified invited speakers. The members will also get to do activities, which will help them to trigger thoughts, share their views and be inspired, and then inspire others in return.',
            community_benefit: 'InshaAllah, the members who join our club will have the ability to process their own thoughts, voice out their own opinions, and share with people around them the knowledge that they will gain both from attending the talks (theory) and doing the activities (practical). By helping to unleash their potentials and leadership skills based on examples and ayats from the Qur’an, they will be able to reach the community and lead the society to become an eminent Quranic generation.',
            usual_venue: 'Inspiring Hall, Student Centre, UBD',
            usual_day: 'Wednesday',
            hours_per_week: '2.5 hours per week',
            user_id: 1,
            semester_id: 1
            )


# 2. MUSLIM YOUTH CLUB (MYC) CLUB
Club.create(name: "MUSLIM YOUTH CLUB (MYC)", 
            about: 'Kelab dibawah naungan Badan EKK PMUBD. Ditubuhkan pada Ogos 2009. Ahli terdiri daripada Mahasiswa/wi UBD secara berdaftar.Kegiatan dan aktiviti dikendalikan oleh AJK MYC dan ahli-ahli MYC di samping itu juga mendapat bimbingan dari UKK UBD.',
            objective: 'Untuk menerapkan nilai-nilai Islam dalam kehidupan seharian dengan lebih mendalam dan menghayati ilmu serta nilai-nilai tentang Islam.',
            member_benefit: 'Mencorak peribadi mereka ke arah yang lebih baik melalui berkongsi ilmu pengetahuan dan pengalaman serta aktiviti.',
            community_benefit: 'Mendorong mahasisiwa/wi untuk meningkatkan sifat pemedulian terhadap masyarakat dan diri mereka sendiri serta tentang isu-isu semasa.',
            usual_venue: 'Dewan Muzakarah Lelaki dan Perempuan, Masjid UBD',
            usual_day: 'Wednesday',
            hours_per_week: '2 to 3 hours',
            user_id: 1,
            semester_id: 1
            )

# 3. KELAB HADRAH UBD
Club.create(name: "KELAB HADRAH UBD", 
            about: 'A traditional music club that emphasizes on team play and harmony',
            objective: 'To enable all members to be able to learn and play the tar smoothly ',
            member_benefit: 'Learn to play the tar in harmony.',
            community_benefit: 'The Bruneian tradition is kept.',
            usual_venue: 'CLT 1.05',
            usual_day: 'Wednesday',
            hours_per_week: '2 to 3 hours',
            user_id: 1,
            semester_id: 1
            )

# 4. KELAB DIKIR, NASYID DAN TAUSYEH (KDNDT) CLUB with SAMPLE
Club.create(name: 'KELAB DIKIR, NASYID DAN TAUSYEH (KDNDT)', 
            about: 'This club acts as a platform in UBD for students to learn and enjoy Islamic songs (Nasyid & Tausyeh)',
            objective: '1) To promote dzikir and praises to Allah and His Messenger 2) To expose members to various Islamic tunes and Qasidah  3) To learn Brunei Dikir (Old & New) ',
            member_benefit: 'Widens their skills in singing Islamic tunes',
            community_benefit: 'Members can contribute in Formal Events (Wedding etc)',
            usual_venue: 'CLT 1.05 (Muslimat) & SHBIE G.94 (Muslimin)',
            usual_day: 'Thursday',
            hours_per_week: '2 hours',
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

# NASYID ACTIVITY

# TODO --> ACTIVITY 

Activity.create(user_id: 1, club_id: 4, name: "Larian Ukhwah", no_of_hours: 2, weightage: 7, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "Sukan IPT Muslimin dan Muslimat", no_of_hours: 2, weightage: 7, dev_aspect: 0) 
Activity.create(user_id: 1, club_id: 4, name: "Nasyid and Tauseh Competition", no_of_hours: 3, weightage: 10, dev_aspect: 1) 
Activity.create(user_id: 1, club_id: 4, name: "Lectures, Seminar Taddabur", no_of_hours: 15, weightage: 50, dev_aspect: 2) 
Activity.create(user_id: 1, club_id: 4, name: "Showcase Booth", no_of_hours: 5, weightage: 16, dev_aspect: 3) 
Activity.create(user_id: 1, club_id: 4, name: "Forum", no_of_hours: 3, weightage: 10, dev_aspect: 4) 
puts '6 Activities have been created for the Nasyid club'


# NASYID MEMBER SAMPLE

7.times {|member| Member.create(club_id: 4, student_id: "#{member + 8}") }
puts '7 members have been created for the NASYID club'

# NASYID ATTENDANCE SAMPLE

10.times { |attendance| Attendance.create(activity_id: 11, member_id: "#{attendance + 1}", status: 1) }
puts '10 Attendance have been created for the First Activity of the NAYSID Club' 



####### #5
####### 
#######
####### EXECUTIVE: COMMUNITY SERVICE & STUDENTS' WELFARE
####### OFFICE: COUNSELING & DIVERSE LEARNING NEEDS OFFICE
#######
#######


#### 1. UBD VOLUNTEERING AND CHARITY

Club.create(name: 'UBD VOLUNTEERING AND CHARITY', 
            about: 'We volunteers to gain experience. Volunteers to help people, our community and country. In any aspects that we think as relevant and wort it. We strive for the best and to be the best. Thus, our objective strives towards a better future.',
            objective: "To support the university's intention of preparing undergraduates for global challenges. At the same time opening minds to new extremities and hence, to increase the awareness and expose more people to volunteerism and charity work.",
            member_benefit: 'Gain experinece life in a new way and acquire life-long lessons',
            community_benefit: 'To care for our environment as they will represent our generation in the future. This also could help strengthen humanitarian spirit so undergraduates will be more ready to face global challenges while not forgetting any humanitarian thoughts. Through volunteering could expose and nurture the spirit of hlping others as a daily pratice.',
            usual_venue: 'depend on where the events held',
            usual_day: 'Wednesday',
            hours_per_week: '2-4 hours',
            user_id: 1,
            semester_id: 1
            )
 