# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


employeeTypes = [
    ["Manager", "Owner and/or administrator of the business"], 
    ["Supervisor", "Runs the scrapyard and supervises yard workers"], 
    ["Yard Worker", "Works in the Scrapyard and performs metalworking"]
]

employeeStatuses = [
    ["Active", "Employee is currently actively working for the business"], 
    ["Terminated", "Employee is no longer working for the business"],
    ["Ghosted", "Employee has become unreachable, and no longer works for the business"]
]
metalTypes = [
    ["Aluminum", ""], 
    ["Brass", ""], 
    ["Lead", ""], 
    ["Copper", ""], 
    ["Insulated Copper", ""], 
    ["Iron or Steel", ""], 
    ["Nonferrous Metal", ""]
]
invoiceStatuses = [
    ["Paid", "The invoice has been paid"], 
    ["Unpaid", "The invoice has not been paid"]
]
invoiceTypes = [
    ["Buyer", "The invoice pertains to metal being purchased from Texan Scrap Metal"], 
    ["Seller", "The invoice pertains to metal being sold to Texan Scrap Metal"]
]
customerTypes = [
    ["Regular", ""],
    ["One-time", ""]
]
customerStatuses = [
    ["Active", "Customer is active"],
    ["Flagged", "Customer has been marked by a government entity"],
    ["Inactive", "Customer is inactive"]
]
vehicleStatuses = [
    ["Active", "Customer Vehicle is active"],
    ["Inactive", "Customer Vehicle is not active"]
]

manufacturers = ["Acura","Audi","BMW","Buick","Cadillac","Chevrolet","Chrysler","Dodge",
    "Fiat","Ford","Gennesis","GMC","Honda","Hyundai","Infiniti","Jaugar","Jeep","Kia","Land Rover","Lexus","Lincoln",
    "Mazda","Mercedes-Benz","Mini","Mitsubishi","Nissan","Porsche","Ram","Subaru","Tesla","Toyota","Volkswagen","Volvo"
]

countries = ["Afghanistan", "Albania", "Algeria", "America", "Andorra", "Angola", "Antigua", "Argentina", "Armenia", "Australia", "Austria", 
    "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bhutan", "Bissau", "Bolivia", "Bosnia", 
    "Botswana", "Brazil", "British", "Brunei", "Bulgaria", "Burkina", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Central African Republic", 
    "Chad", "Chile", "China", "Colombia", "Comoros", "Congo", "Costa Rica", "Croatia", "Cuba", "Cyprus", "Czech", "Denmark", "Djibouti", "Dominica", "East Timor", 
    "Ecuador", "Egypt", "El Salvador", "Emirate", "England", "Eritrea", "Estonia", "Ethiopia", "Fiji", "Finland", "France", "Gabon", "Gambia", 
    "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Grenada", "Grenadines", "Guatemala", "Guinea", "Guyana", "Haiti", "Herzegovina", "Honduras", "Hungary", 
    "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Ivory Coast", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea", 
    "Kosovo", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Madagascar", "Malawi", 
    "Malaysia", "Maldives", "Mali", "Malta", "Marshall", "Mauritania", "Mauritius", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Morocco", "Mozambique", 
    "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua", "Paraguay", 
    "Peru", "Philippines", "Poland", "Portugal", "Qatar", "Romania", "Russia", "Rwanda", "Samoa", "San Marino", "Sao Tome", "Saudi Arabia", "Scotland", "Senegal", "Serbia", 
    "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon", "Somalia", "South Africa", "South Sudan", "Spain", "Sri Lanka", 
    "St. Kitts", "St. Lucia", "St. Kitts", "St. Lucia", "Saint Kitts", "Santa Lucia", "Sudan", "Suriname", "Swaziland", "Sweden", "Switzerland", "Syria", 
    "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Tobago", "Togo", "Tonga", "Trinidad", "Tunisia", "Turkey", "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", 
    "United Kingdom", "United States", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican", "Venezuela", "Vietnam", "Yemen", "Zambia", "Zimbabwe"
]

states = ["Alabama" ,"Alaska" ,"Arizona" ,"Arkansas" ,"California" ,"Colorado" ,"Connecticut" ,
    "Delaware" ,"Florida" ,"Georgia" ,"Hawaii" ,"Idaho" ,"Illinois" ,"Indiana" ,"Iowa" ,"Kansas" ,"Kentucky" ,"Louisiana" ,
    "Maine" ,"Maryland" ,"Massachusetts" ,"Michigan" ,"Minnesota" ,"Mississippi" ,"Missouri" ,"Montana" ,"Nebraska" ,"Nevada" ,
    "New Hampshire" ,"New Jersey" ,"New Mexico" ,"New York" ,"North Carolina" ,"North Dakota" ,"Ohio" ,"Oklahoma" ,"Oregon" ,"Pennsylvania" ,
    "Rhode Island" ,"South Carolina" ,"South Dakota" ,"Tennessee" ,"Texas" ,"Utah" ,"Vermont" ,"Virginia" ,"Washington" ,"West Virginia" ,"Wisconsin" ,"Wyoming"
]

EmployeeType.delete_all
employeeTypes.each do |emptype, typedesc|
    et = EmployeeType.create(employee_type: emptype, employee_type_desc: typedesc)
end

EmployeeStatus.delete_all
employeeStatuses.each do |empstat, statdesc|
    et = EmployeeType.create(employee_status: emptype, employee_status_desc: statdesc)
end

MetalType.delete_all
metalTypes.each do |mettype, typedesc|
    et = EmployeeType.create(metal_type: emptype, metal_type_desc: typedesc)
end


Country.delete_all
countries.each do |country|
    ct = Country.create(country_name: country)
end

StateProvince.delete_all
states.each do |state|
    st = StateProvince.create(state_province_name: state)
end

