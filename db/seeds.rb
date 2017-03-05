# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require File.join(Rails.root, 'db/seeds/review_company_seeds.rb')

Admin.create(email: 'ianflorentino88@gmail.com', password: 'password')
@company = Company.create(name: 'Starbucks', email: 'admin@starbucks.com', password: 'password', redirect_url: 'www.starbucks.com', domain: 'starbucks-san-francisco')
LandingPage.create(company_id: @company.id, title: 'Starbucks San Francisco', subtitle: 'Not your average coffee shop on the corner') 
SiteMessage.create(company_id: @company.id, company_message: "Best Dam Coffee Ever??", positive_message: 'Thank you for the awesome review guy', negative_message: "Oh no, I'm sorry you feel that way")
EmailMessage.create(company_id: @company.id, positive_message: 'Positive Review! Great job guys!', negative_message: "DAM, Another negative review... let's get to the bottom of this")
