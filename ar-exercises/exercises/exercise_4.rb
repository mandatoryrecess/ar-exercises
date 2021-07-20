require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel:  true, mens_apparel: false)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel:  false, mens_apparel: true)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel:  true, mens_apparel: true)

puts Store.count

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "Store:#{store.name} how much money! HOW MUCH 🤑!!#{store.annual_revenue}"
end

