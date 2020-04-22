# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [ 
    {
      username: 'kawa',
      email: 'kawa@gmail.com',
      password: '123456',
      sign_in_count: '1',
      current_sign_in_at: '2020-4-21 16:00:00',
      last_sign_in_at: '2020-4-21 15:55:55',
      created_at: '2020-4-21 16:00:00',
      updated_at: '2020-4-21 16:00:00',
      points: '1',
      impressions_count: '1',
    },
    {
      username: 'satou',
      email: 'satou@gmail.com',
      password: '12345678',
      sign_in_count: '0',
      current_sign_in_at: '2020-5-21 16:00:00',
      last_sign_in_at: '2020-5-21 15:55:55',
      created_at: '2020-5-21 16:00:00',
      updated_at: '2020-5-21 16:00:00',
      points: '1',
      impressions_count: '1',
    },
    {
      username: 'tanaka',
      email: 'tanaka@gmail.com',
      password: '098765',
      sign_in_count: '1',
      current_sign_in_at: '2020-6-21 16:00:00',
      last_sign_in_at: '2020-6-21 15:55:55',
      created_at: '2020-6-21 16:00:00',
      updated_at: '2020-6-21 16:00:00',
      points: '1',
      impressions_count: '1',
    }     
  ]
)

Impression.create!(
  [ 
    {
      impressionable_type: 'User',
      user_id:'1',
      created_at: '2020-4-21 16:00:00',
      updated_at: '2020-4-21 16:00:00',
    },
    {
      impressionable_type: 'User',
      user_id:'1',
      created_at: '2020-5-21 16:00:00',
      updated_at: '2020-5-21 16:00:00',
    },
    {
      impressionable_type: 'User',
      user_id:'2',
      created_at: '2020-6-21 16:00:00',
      updated_at: '2020-6-21 16:00:00',
    }
  ]
)