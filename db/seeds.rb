# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bmc_employee = [
  ["bhushan","bhushan@bmc.com","9720147456",50000,"sell.do"],
  ["jayesh","jayesh@bmc.com","3434343434",51000,"Sell.do"],
  ["akash","akash@bmc.com","2121212121",50000,"Sell.do"],
  ["shubham","shubham@bmc.com","5656565656",50000,"hub"],
  ["amrut","amrut@bmc.com","4242424242",48000,"hub"]
]



bmc_employee.each do |ae|
  Company.find_by(company_name:"BMC").employees.create!(employee_name:ae[0],email:ae[1],phone:ae[2],salary:ae[3],designation:ae[4])

end