# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.new(email: 'thesuperadmin@gmail.com', password: '123456', user_type_id: 1)
u1.save!


u2 = User.new(email: 'restaurantadmin@gmail.com', password: '123456', user_type_id: 2)
u2.save!

u3 = User.new(email: 'restaurantguy@gmail.com', password: '123456', user_type_id: 3)
u3.save!

u4 = User.new(email: 'user@gmail.com', password: '123456', user_type_id: 4)
u4.save!


user_type1 = UserType.create(user_type: 'SuperAdmin')

user_type2 = UserType.create(user_type: 'Restaurant Admin')

user_type3 = UserType.create(user_type: 'Restaurant Guy')

user_type4 = UserType.create(user_type: 'User')



