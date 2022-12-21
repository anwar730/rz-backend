# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding"

# jobseekers
js1=Jobseeker.create(username: "Anwar",password:"123456",email: "anwar123@gmail.com",role:"user",rating:5,skills:"good in python",isloggedin: "true",admin_id:1)
js2=Jobseeker.create(username: "Mercy",password:"123456",email: "mercy123@gmail.com",role:"user",rating:5,skills:"good in js",isloggedin: "true",admin_id:1)
js3=Jobseeker.create(username: "Kevin",password:"123456",email: "kevin123@gmail.com",role:"user",rating:5,skills:"good in react",isloggedin: "true",admin_id:1)
js4=Jobseeker.create(username: "Harrison",password:"123456",email: "harrison123@gmail.com",role:"user",rating:5,skills:"good in C",isloggedin: "true",admin_id:1)
js5=Jobseeker.create(username: "Leslie",password:"123456",email: "leslie123@gmail.com",role:"user",rating:5,skills:"good in java",isloggedin: "true",admin_id:1)
js6=Jobseeker.create(username: "Steve",password:"123456",email: "steve123@gmail.com",role:"user",rating:5,skills:"good in ruby",isloggedin: "true",admin_id:1)
js7=Jobseeker.create(username: "Solomon",password:"123456",email: "solomon123@gmail.com",role:"user",rating:5,skills:"good in react",isloggedin: "true",admin_id:1)
js8=Jobseeker.create(username: "Riddick",password:"123456",email: "riddick123@gmail.com",role:"user",rating:5,skills:"good in python",isloggedin: "true",admin_id:1)
js9=Jobseeker.create(username: "Mary",password:"123456",email: "mary123@gmail.com",role:"user",rating:5,skills:"good in js",isloggedin: "true",admin_id:2)
js10=Jobseeker.create(username: "Yahya",password:"123456",email: "yahya123@gmail.com",role:"user",rating:5,skills:"good in c",isloggedin: "true",admin_id:1)


# employers
e1=Employer.create(company_name: "tracom", username:"hana",password:"123456",email:"hana123@gmail.com",role:"employer",isloggedin:"true",admin_id:1)
e1=Employer.create(company_name: "siyama", username:"siya",password:"123456",email:"siya123@gmail.com",role:"employer",isloggedin:"true",admin_id:1)
e1=Employer.create(company_name: "safaricom", username:"charles",password:"123456",email:"charles123@gmail.com",role:"employer",isloggedin:"true",admin_id:1)



