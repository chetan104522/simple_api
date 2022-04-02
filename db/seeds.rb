# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# GET index
# curl http://localhost:3000/books


# POST - Create
# curl --request POST http://localhost:3000/books -v

# POST - CRETAE (PARAMS)
# curl --header "Content-Type: application/json" --request POST --data '{"author": "jamesh","title": "new james"}' http://localhost:3000/books -v

# 6
# destroy! # used ! becouse it return (true or false)it will rais errors if id not found

# 7 errors exceptions

# 1 when new exception come so we make new rescue
# 2 and we want to used rescue to the same or other controller delete method call and rails same exception
# so we used

#8 namespace and versioning
# namespace and versioning very important api end points


# 9 Api test with RSpec --->> suppose we changes in our application and so we have to test that new functionality 
# and all privouse functionality is working properly

# problem
# so we have to check every api  

# solution --->> unit testing
# we used RSpec gem so its not nessary to check all api RSpec provides functionality so we can used and test 
# and RSpec also provides the testcases so when run RSpec so if there any errors so its show us.