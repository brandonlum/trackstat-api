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
        coursename: "Johnson CC",
        date: '12/1/2018', # dd/mm/year
        frontnine: 46,
        backnine: 40,
        combined: 86,
        par: 72,
        user_id: 1
    },
    {   
        coursename: "Riviera CC",
        date: '12/3/2018',
        frontnine: 43,
        backnine: 45,
        combined: 88,
        par: 72,
        user_id: 1
    }
])
