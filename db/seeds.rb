# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Invoice.delete_all
Customer.delete_all
Employee.delete_all
#Employee Type Seed
employeeTypes = [
    ["Manager", "Owner and/or administrator of the business"], 
    ["Supervisor", "Runs the scrapyard and supervises yard workers"], 
    ["Yard Worker", "Works in the Scrapyard and performs metalworking"]
]

EmployeeType.delete_all
employeeTypes.each do |emptype, typedesc|
    et = EmployeeType.create(employee_type: emptype, employee_type_desc: typedesc)
end


#Employee Status Seed
employeeStatuses = [
    ["Active", "Employee is currently actively working for the business"], 
    ["Terminated", "Employee is no longer working for the business"],
    ["Ghosted", "Employee has become unreachable, and no longer works for the business"]
]

EmployeeStatus.delete_all
employeeStatuses.each do |empstat, statdesc|
    es = EmployeeStatus.create(employee_status: empstat, employee_status_desc: statdesc)
end


#Metal Type Seed
metalTypes = [
    ["Aluminum", ""], 
    ["Brass", ""], 
    ["Lead", ""], 
    ["Copper", ""], 
    ["Insulated Copper", ""], 
    ["Iron or Steel", ""], 
    ["Nonferrous Metal", ""]
]

MetalType.delete_all
metalTypes.each do |mettype, typedesc|
    mt = MetalType.create(metal_type: mettype, metal_type_desc: typedesc)
end


#Invoice Status Seed
invoiceStatuses = [
    ["Paid", "The invoice has been paid"], 
    ["Unpaid", "The invoice has not been paid"]
]

InvoiceStatus.delete_all
invoiceStatuses.each do |invstat, statdesc|
    is = InvoiceStatus.create(invoice_status: invstat, invoice_status_desc: statdesc)
end


#Invoice Type Seed
invoiceTypes = [
    ["Buyer", "The invoice pertains to metal being purchased from Texan Scrap Metal"], 
    ["Seller", "The invoice pertains to metal being sold to Texan Scrap Metal"]
]

InvoiceType.delete_all
invoiceTypes.each do |invtype, typedesc|
    it = InvoiceType.create(invoice_type: invtype, invoice_type_desc: typedesc)
end


#Customer Type Seed
customerTypes = [
    ["Regular", ""],
    ["One-time", ""]
]

CustomerType.delete_all
customerTypes.each do |custtype, typedesc|
    ct = CustomerType.create(customer_type: custtype, customer_type_desc: typedesc)
end


#Customer Status Seed
customerStatuses = [
    ["Active", "Customer is active"],
    ["Flagged", "Customer has been marked by a government entity"],
    ["Inactive", "Customer is inactive"]
]

CustomerStatus.delete_all
customerStatuses.each do |custstat, statdesc|
    cs = CustomerStatus.create(customer_status: custstat, customer_status_desc: statdesc)
end


#Vehicle Status Seed
vehicleStatuses = [
    ["Active", "Customer Vehicle is active"],
    ["Inactive", "Customer Vehicle is not active"]
]

VehicleStatus.delete_all
vehicleStatuses.each do |vecstat, statdesc|
    vs = VehicleStatus.create(vehicle_status: vecstat, vehicle_status_desc: statdesc)
end


#Vehicle Manufacturer Seed
manufacturers = ["Acura","Audi","BMW","Buick","Cadillac","Chevrolet","Chrysler","Dodge",
    "Fiat","Ford","Gennesis","GMC","Honda","Hyundai","Infiniti","Jaugar","Jeep","Kia","Land Rover","Lexus","Lincoln",
    "Mazda","Mercedes-Benz","Mini","Mitsubishi","Nissan","Porsche","Ram","Subaru","Tesla","Toyota","Volkswagen","Volvo"
]

Make.delete_all
Manufacturer.delete_all
manufacturers.each do |manuf|
    mf = Manufacturer.create(manufacturer_name: manuf)
end


#Vehicle Model Seed
models = [
    ["Toyota", 
        ["Camry","Celica","Prius","Cruiser","Yaris","Corolla","Supra","4Runner","Tundra","Tacoma"]
    ],
    ["Ford",
        ["F150", "Focus", "Mustang", "Ranger", "Explorer", "Expedition", "Fiesta"]
    ]
]

models.each do |manuf, model|
    mf = Manufacturer.find_by(manufacturer_name: manuf)
    model.each do |name|
        Make.create(make_name: name, manufacturer_id: mf.id())
    end
end


#Country Seed
countries = ["United States", "El Salvador", "Mexico", "Honduras", "Costa Rica", "Panama", "Afghanistan", "Albania", "Algeria", "America", "Andorra", "Angola", "Antigua", "Argentina", "Armenia", "Australia", "Austria", 
    "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bhutan", "Bissau", "Bolivia", "Bosnia", 
    "Botswana", "Brazil", "British", "Brunei", "Bulgaria", "Burkina", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Central African Republic", 
    "Chad", "Chile", "China", "Colombia", "Comoros", "Congo", "Croatia", "Cuba", "Cyprus", "Czech", "Denmark", "Djibouti", "Dominica", "East Timor", 
    "Ecuador", "Egypt", "Emirate", "England", "Eritrea", "Estonia", "Ethiopia", "Fiji", "Finland", "France", "Gabon", "Gambia", 
    "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Grenada", "Grenadines", "Guatemala", "Guinea", "Guyana", "Haiti", "Herzegovina", "Hungary", 
    "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Ivory Coast", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea", 
    "Kosovo", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Madagascar", "Malawi", 
    "Malaysia", "Maldives", "Mali", "Malta", "Marshall", "Mauritania", "Mauritius", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Morocco", "Mozambique", 
    "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Norway", "Oman", "Pakistan", "Palau", "Papua", "Paraguay", 
    "Peru", "Philippines", "Poland", "Portugal", "Qatar", "Romania", "Russia", "Rwanda", "Samoa", "San Marino", "Sao Tome", "Saudi Arabia", "Scotland", "Senegal", "Serbia", 
    "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon", "Somalia", "South Africa", "South Sudan", "Spain", "Sri Lanka", 
    "St. Kitts", "St. Lucia", "St. Kitts", "St. Lucia", "Saint Kitts", "Santa Lucia", "Sudan", "Suriname", "Swaziland", "Sweden", "Switzerland", "Syria", 
    "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Tobago", "Togo", "Tonga", "Trinidad", "Tunisia", "Turkey", "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", 
    "United Kingdom", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican", "Venezuela", "Vietnam", "Yemen", "Zambia", "Zimbabwe"
]

Country.delete_all
countries.each do |country|
    ct = Country.create(country_name: country)
end

# TODO: Add Mexican States, Salvadoran Departments, Hondurian, Costa Rican, and Panama
#State/Province Seed
states = ["Alabama" ,"Alaska" ,"Arizona" ,"Arkansas" ,"California" ,"Colorado" ,"Connecticut" ,
    "Delaware" ,"Florida" ,"Georgia" ,"Hawaii" ,"Idaho" ,"Illinois" ,"Indiana" ,"Iowa" ,"Kansas" ,"Kentucky" ,"Louisiana" ,
    "Maine" ,"Maryland" ,"Massachusetts" ,"Michigan" ,"Minnesota" ,"Mississippi" ,"Missouri" ,"Montana" ,"Nebraska" ,"Nevada" ,
    "New Hampshire" ,"New Jersey" ,"New Mexico" ,"New York" ,"North Carolina" ,"North Dakota" ,"Ohio" ,"Oklahoma" ,"Oregon" ,"Pennsylvania" ,
    "Rhode Island" ,"South Carolina" ,"South Dakota" ,"Tennessee" ,"Texas" ,"Utah" ,"Vermont" ,"Virginia" ,"Washington" ,"West Virginia" ,"Wisconsin" ,"Wyoming"
]

StateProvince.delete_all
states.each do |state|
    st = StateProvince.create(state_province_name: state)
end


#Seed Test Customer Data

case Rails.env
when "development"
    i = 50
    
    while i >= 1
    state_id = StateProvince.find_by(state_province_name: states.sample).id()
    country_id = Country.find_by(country_name: "United States").id()
    customer_status_id = CustomerStatus.find_by(customer_status: customerStatuses.sample).id()
    customer_type_id = CustomerType.find_by(customer_type: customerTypes.sample).id()
    cst = Customer.create(
        cust_f_name: Faker::Name.first_name,
        cust_l_name: Faker::Name.last_name,
        company: Faker::Company.name,
        cust_address: Faker::Address.street_address,
        cust_city: Faker::Address.city,
        zip_code: Faker::Address.zip,
        cust_phone: Faker::Number.number(digits: 10),
        cust_email: Faker::Internet.safe_email,
        dob: Faker::Date.birthday(min_age: 18, max_age: 70),
        state_province_id: state_id,
        country_id: country_id,
        dl_number: Faker::Bank.account_number(digits: 8),
        dl_state: StateProvince.where(id: state_id).pluck(:state_province_name).flatten.join(' '),
        customer_status_id: customer_status_id,
        customer_type_id: customer_type_id
    )
    i = i-1
end
end


#Seed an invoice for testing
#Invoice.create(
#    invoice_number: Faker::Bank.account_number(digits: 8),
#    invoice_date_time: Time.now,
#    material_image: "something.com/image.png",
#    customer_id: Customer.first.id(),
#    employee_id: Employee.first.id(),
#    invoice_type_id: InvoiceType.first.id(),
#    invoice_status_id: InvoiceStatus.first.id()
#)