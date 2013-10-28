# User Stories

http://imgur.com/aAM4aKr

http://imgur.com/rGPosYH

http://imgur.com/doUftup

---

After thinking through what I am ultimately building my app for, keeping in mind the problem I am trying to solve, I only have one table for now.  Before moving forward with another table I'd like to just speak with one of the instructors first about the 2 options I am considering.  So right now an ERD doesn't make too much sense.

My one table (players) has the following columns:

# Table name: players

 id               :integer          not null, primary key
 
-  first_name       :string(255)
 
-  last_name        :string(255)
 
- email            :string(255)
 
-  city             :string(255)
 
-  state            :string(255)
 
-  date_of_birth    :string(255)
 
-  photo_url        :text
 
-  gender           :string(255)
 
 
-  gpa              :integer

-  sat_score        :integer

-  graduation_year  :integer

-  academic_honors  :text

-  clubs            :text

-  high_school_team :string(255)

-  club_team        :string(255)

-  video_url        :text

-  position         :string(255)

-  height           :string(255)

-  weight           :string(255)

-  athletic_honors  :text

-  other_sports     :text

-  top_five_schools :text

-  password_digest  :string(255)

-  created_at       :datetime         not  null
 
-  updated_at       :datetime         not null
