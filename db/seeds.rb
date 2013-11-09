# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
Book.create(isbn:'1937785564',title:'Agile Web Development with Rails 4',image_url:'http://ecx.images-amazon.com/images/I/51mDoYHFrEL._SX258_BO1,204,203,200_.jpg',price:9.99)
Book.create(isbn:'9781934356739',title:'Crafting Rails Applications: Expert Practices for Everyday Rails Development',image_url:'http://imagery.pragprog.com/products/240/jvrails_xlargecover.jpg?1298589987',price:7.99)

CollegeClass.delete_all
CollegeClass.create(name:'Ruby 101',course_id: 'r101')
CollegeClass.create(name:'Ruby 102',course_id: 'r102')