# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.create!(first_name: "Tia", last_name: "Sipper", email: "example@email.com", address: "221 B Baker St.")

Tea.create!(title: "SleepyTime", description: "A delightful blend of chamomile and other herbs to put you to bed", temperature: 180, brew_time: 300)
Tea.create!(title: "Mint Majesty", description: "All the mint none of the caffeine", temperature: 150, brew_time: 360)
Tea.create!(title: "Earl Grey", description: "perfect for making a london fog", temperature: 150, brew_time: 360)

Subscription.create!(customer_id: 1, tea_id: 1, title: "SleepyTime", price: 399, status: "subscribed", frequency: 1)
Subscription.create!(customer_id: 1, tea_id: 3, title: "Earl Grey", price: 399, status: "subscribed", frequency: 1)
Subscription.create!(customer_id: 1, tea_id: 2, title: "Mint Majesty", price: 399, status: "unsubscribed", frequency: 1)
