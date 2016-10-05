# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cat1 = Cat.create!(birth_date: "2015/01/20", color: :black, name: "Tom", sex: "M", description: "Tom is fun!")
cat2 = Cat.create!(birth_date: "2014/03/22", color: :white, name: "Tommy", sex: "M", description: "Tommy is naughty!")
cat3 = Cat.create!(birth_date: "2005/05/12", color: :orange, name: "Bob", sex: "M", description: "Bob is angry!")
cat4 = Cat.create!(birth_date: "2011/03/31", color: :brown, name: "Sarah", sex: "F", description: "Sarah is nice!")
cat5 = Cat.create!(birth_date: "2012/02/02", color: :tuxedo, name: "Julia", sex: "F", description: "Julia is friendly!")
cat6 = Cat.create!(birth_date: "1990/01/01", color: :grey, name: "Tinkee", sex: "F", description: "Tinkee is wild!")
cat7 = Cat.create!(birth_date: "1990/01/01", color: :calico, name: "Sprinkles", sex: "F", description: "Sprinkles is lazy!")

rental_request1 = CatRentalRequest.create!(cat_id: 1, start_date: "2016/10/4", end_date: "2017/10/4", status: "APPROVED")
rental_request2 = CatRentalRequest.create!(cat_id: 1, start_date: "2015/10/4", end_date: "2016/10/3")
rental_request3 = CatRentalRequest.create!(cat_id: 2, start_date: "2016/10/4", end_date: "2017/10/4")
rental_request4 = CatRentalRequest.create!(cat_id: 2, start_date: "2015/10/4", end_date: "2016/10/3")
rental_request5 = CatRentalRequest.create!(cat_id: 3, start_date: "2016/10/4", end_date: "2017/10/4")
rental_request6 = CatRentalRequest.create!(cat_id: 3, start_date: "2015/10/4", end_date: "2016/10/3")
rental_request7 = CatRentalRequest.create!(cat_id: 4, start_date: "2016/10/4", end_date: "2017/10/4")
rental_request8 = CatRentalRequest.create!(cat_id: 5, start_date: "2016/10/4", end_date: "2017/10/4")
rental_request9 = CatRentalRequest.create!(cat_id: 6, start_date: "2016/10/4", end_date: "2017/10/4")
rental_request9 = CatRentalRequest.create!(cat_id: 7, start_date: "2016/10/4", end_date: "2017/10/4")
