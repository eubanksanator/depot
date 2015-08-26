# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.delete_all

Product.create!(title: 'Shredded Abs',
  description:
    %{
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
   functionality wrapped in a cleaner, more succinct syntax. In the first
   book on this exciting new language, CoffeeScript guru Trevor Burnham
   shows you how to hold onto all the power and flexibility of JavaScript
   while writing clearer, cleaner, and safer code.
      },
  image_url:   'gc.jpg',
  price: 9.99)
# . . .
Product.create!(title: 'Bicep Basher',
  description:
    %{
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      },
  image_url: 'gc.jpg',
  price: 9.99)
# . . .

Product.create!(title: 'Toned Now Legs',
  description:
    %{
        Rails Test Prescriptions is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      },
  image_url: 'gc.jpg',
  price: 14.99)
