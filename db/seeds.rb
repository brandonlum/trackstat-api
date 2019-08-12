# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create([
    {
        name: 'TestName1',
        username: 'testuser1',
        password_digest: 'password1',
        age: 10,
        handicap: 15,
        status: 'Amateur'
    },
    {
        name: 'TestName2',
        username: 'testuser2',
        password_digest: 'password2',
        age: 30,
        handicap: 8,
        status: 'Amateur'
    },
    {
        name: 'TestName3',
        username: 'testuser3',
        password_digest: 'password3',
        age: 28,
        handicap: -4,
        status: 'Professional'
    }
])
Scorecard.create([
    {
        course_name: "Johnson CC",
        date_played: '12/1/2018', # dd/mm/year
        front_nine_score: 46,
        back_nine_score: 40,
        combined_score: 86,
        front_par: 36,
        back_par: 36,
        total_par: 72,
        user_id: 1
    },
    {   
        course_name: "Riviera CC",
        date_played: '12/3/2018',
        front_nine_score: 43,
        back_nine_score: 45,
        combined_score: 88,
        front_par: 35,
        back_par: 37,
        total_par: 72,
        user_id: 1
    }
])
