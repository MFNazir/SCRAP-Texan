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
    ["Inactive", "Employee is currently not working for the business"],
    ["Fired", "Employe is not longer working for the business"],
    ["Retired", "Employee has retired"],
    ["Ghosted", "Employee has become unreachable, and no longer works for the business"],
    ["Deleted", "Employee has been logically deleted from the application"]
]

EmployeeStatus.delete_all
employeeStatuses.each do |empstat, statdesc|
    es = EmployeeStatus.create(employee_status: empstat, employee_status_desc: statdesc)
end


#Metal Type Seed
metalTypes = [
    ["Aluminum", "A light silvery-gray metal"], 
    ["Brass", "A yellow alloy of copper and zinc"], 
    ["Lead", "A soft, silvery white or grayish metal"],
    ["Carbide", "A very hard mixture of sintered carbides of various heavy metals"],
    ["Cobalt", "A hard silvery-white magnetic meta"], 
    ["Copper", "A malleable, ductile, metallic element having a characteristic reddish-brown color"], 
    ["Ferrous Metals", "Some common ferrous metals include alloy steel, carbon steel, cast iron and wrought iron"],
    ["Insulated Copper", "Plain copper wires with a thin coating of enamel, used for insulation purposes"], 
    ["Iron", "A a strong, hard magnetic silvery-gray metal"],
    ["Nickel", "A silvery-white metal"], 
    ["Nonferrous Metal", "Non-ferrous metals include aluminum, copper, lead, zinc and tin, as well as precious metals like gold"],
    ["Silver", "A precious shiny grayish-white metal"],
    ["Steel", "A  hard, strong, gray or bluish-gray alloy of iron with carbon"],
    ["Mild Steel", "A steel containing a small percentage of carbon, strong and tough but not readily tempered."],
    ["Carbon Steel", "A plain-carbon steel, is a metal alloy. It is a combination of two elements, iron and carbon."],
    ["Stainless Steel", "A form of steel containing chromium, resistant to tarnishing and rust."],
    ["Titanium", "A hard silver-gray metal"],
    ["Tungsten", "A hard steel-gray metal of the transition series."], 
    ["Tin", "A silvery-white metal"],
    ["Zinc", "A silvery-white metal that is a constituent of brass and is used for coating (galvanizing) iron and steel to protect against corrosion."],
]

MetalType.delete_all
metalTypes.each do |mettype, typedesc|
    mt = MetalType.create(metal_type: mettype, metal_type_desc: typedesc)
end


#Invoice Status Seed
invoiceStatuses = [
    ["Pending", "The invoice has been created and is pending further processing"], 
    ["Processed", "The invoice has been processed and sent to appropriate reporting agencies"],
    ["Revision Needed", "The invoice may have some errors in them and needs management intervention"],
    ["Reported", "The invoice has been reported by the federal agencies or the agencies for potential crimial activities"],
    ["Deleted", "The invoice has not been logically deleted from the application"]
    
]

InvoiceStatus.delete_all
invoiceStatuses.each do |invstat, statdesc|
    is = InvoiceStatus.create(invoice_status: invstat, invoice_status_desc: statdesc)
end


#Invoice Type Seed
invoiceTypes = [
    ["Sale", "The invoice pertains to metal being sold by Texan Scrap Metal"], 
    ["Purchase", "The invoice pertains to metal being purchased by Texan Scrap Metal"]
]

InvoiceType.delete_all
invoiceTypes.each do |invtype, typedesc|
    it = InvoiceType.create(invoice_type: invtype, invoice_type_desc: typedesc)
end


#Customer Type Seed
customerTypes = [
    ["Regular Buyer", "A regular customer that purchases metal from the business but does not have a contract with the business"],
    ["One-Time Buyer", "A one time purchase from a buyer"],
    ["Contract Buyer", "A regular customer that has signed a contract with the business to buy metals from them at a fixed rate"],
    ["Seller", "A customer that sells metals to the business"]

]

CustomerType.delete_all
customerTypes.each do |custtype, typedesc|
    ct = CustomerType.create(customer_type: custtype, customer_type_desc: typedesc)
end


#Customer Status Seed
customerStatuses = [
    ["Active", "Customer is active"],
    ["Inactive", "Customer is no longer active in either the sale or purchase of metals from the business"],
    ["Prohibited", "Customer has been prohibited by either the business or federal agencies from further business transactions"],
    ["Deleted", "Customer has been logically deleted from the database"]
]

CustomerStatus.delete_all
customerStatuses.each do |custstat, statdesc|
    cs = CustomerStatus.create(customer_status: custstat, customer_status_desc: statdesc)
end


#Vehicle Status Seed
vehicleStatuses = [
    ["Active", "The vehicle is still under the ownership of the assigned Customer"],
    ["Inactive", "The Customer no longer owns the vehicle"],
    ["Deleted", "The vehicle has been logically deleted from the application"]
]

VehicleStatus.delete_all
vehicleStatuses.each do |vecstat, statdesc|
    vs = VehicleStatus.create(vehicle_status: vecstat, vehicle_status_desc: statdesc)
end


#Vehicle Manufacturer Seed
manufacturers = ["Acura","Audi","BMW","Buick","Cadillac","Chevrolet","Chrysler","Dodge",
    "Ford","GMC","Honda","Hyundai","Infiniti","Jeep","Kia","Lexus","Lincoln",
    "Mazda","Mercedes-Benz","Mitsubishi","Nissan","Ram","Subaru","Toyota","Volkswagen","Volvo"
]

Make.delete_all
Manufacturer.delete_all
manufacturers.each do |manuf|
    mf = Manufacturer.create(manufacturer_name: manuf)
end


#Vehicle Model Seed
models = [
    ["Acura", 
        ["ILX","MDX","RDX","RLX","TLX"]
    ],
    ["Audi", 
        ["A3","A4","A5","A6","A7","Q3","Q5","Q7","S3","S4"]
    ],
    ["BMW", 
        ["2 Series","3 Series","4 Series","5 Series","6 Series"," 7 Series","M2","M3","M4","X1","X2","X3","X4","X5"]
    ],
    ["Buick", 
        ["Cascada","Enclave","Encore","Envision","LaCrosse","Regal"]
    ],
    ["Cadillac", 
        ["ATS","ATS-V","CT6","CT5","Escalade","SRX","XT4","XT5","XTS"]
    ],
    ["Chevrolet", 
        ["Bolt","Camaro","Corvette","Cruze","Equinox","Imapala","Malibu","Silverado 1500","Silverado 2500","Suburban","Tahoe","Volt"]
    ],
    ["Chrysler", 
        ["200","300","Prius","Cruiser"]
    ],
    ["Dodge", 
        ["Challenger","Charger","Durango","Grand Caravan"]
    ],
    ["Ford",
        ["F150","F250","F350", "Focus", "Mustang", "Ranger", "Explorer", "Expedition", "Fiesta"]
    ], 
    ["GMC", 
        ["Acadia","Canyon","Savana Cargo","Siera 1500","Siera 2500HD","Sierra 3500HD","Terrain","Yukon","Yukon XL"]
    ],
    ["Honda", 
        ["Accord","Civic","CR-V","CR-Z","Fit","Odyssey","Pilot"]
    ],
    ["Hyundai", 
        ["Accent","Azera","Elantra","Genesis","Santa Fe","Sonata","Veloster"]
    ],
    ["Infiniti", 
        ["Q50","Q60","Q70","QX30","QX50","QX60","QX70","QX80"]
    ],
    ["Jeep", 
        ["Cherokee","Compass","Grand Cherokee","Patriot","Wrangler"]
    ],
    ["Kia", 
        ["Cadenza","Forte","K900","Optima","Sedona","Sorento","Soul","Sportage","Stinger"]
    ],
    ["Lexus", 
        ["IS 200t","IS 250","IS 300","IS 350","LS 460","NX 200t","NX 300","RC 300","RC 350","RX 350"]
    ],
    ["Lincoln", 
        ["Continental","MKC","MKT","MKX","MKZ","Navigator"]
    ],
    ["Mazda", 
        ["CX-3","CX-5","CX-9","Mazda3","Mazda6","MX-5 Miata"]
    ],
    ["Mercedes-Benz", 
        ["CLA","CLS","E-Class","GL-Class","GLA","GLC","GLE","GLS","M-Class","S-Class"]
    ],
    ["Mitsubishi", 
        ["Mirage","Outlander"]
    ],
    ["Nissan", 
        ["Altima","Armada","Frontier","JUKE","Maxima","Murano","Pathfinder","Rogue","Sentra","Titan","Versa"]
    ],
    ["Ram", 
        ["5500","Ram Pickup 1500","Ram Pickup 2500","Ram Pickup 2500"]
    ],
    ["Subaru", 
        ["Ascent","Crosstreck","Forester","Impreza","Legacy","Outback","WRX"]
    ],
    ["Toyota", 
        ["Camry","Celica","Prius","Cruiser","Yaris","Corolla","Supra","4Runner","Tundra","Tacoma"]
    ],
    ["Volkswagen", 
        ["Atlas","Golf","Golf GTI","Jetta","Passat","Tiguan"]
    ],
    ["Volvo", 
        ["S60","S90","V60","V90","XC60","XC90"]
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

