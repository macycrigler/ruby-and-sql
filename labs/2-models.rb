# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all #never do in production just to make it easier for us to learn 

#this behavior has to be Idempotent 

# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Michael"
new_salesperson["last_name"] = "Scott"
new_salesperson["email"] = "michael.scott@example.com"
new_salesperson.save
#p new_salesperson

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Dwight"
new_salesperson["last_name"] = "Schrute"
new_salesperson["email"] = "dwight.schrute@example.com"
new_salesperson.save
#p new_salesperson

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Jim"
new_salesperson["last_name"] = "Halpert"
new_salesperson["email"] = "jim.halpert@example.com"
new_salesperson.save
#p new_salesperson

#p "There are #{Salesperson.all.count} salespeople" 

# 3. write code to display how many salespeople rows are in the database
#p "There are #{Salesperson.all.count} salespeople" 

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

jim = Salesperson.find_by({"first_name" => "Jim", "last_name" => "Halpert"})
jim["first_name"] = "Jimothy"
jim.save

#p jim
# CHALLENGE:
# 5. write code to display each salesperson's full name


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

salespeople = Salesperson.all

for person in salespeople
    first_name = person["first_name"]
    last_name = person["last_name"]
    puts "#{first_name} #{last_name}"
end