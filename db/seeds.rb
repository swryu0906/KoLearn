# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create(first_name: "Walli", last_name: "Smith", email: "walli.smith04@gmail.com", description: "AngularJs expert", image: "https://avatars1.githubusercontent.com/u/6549971?v=3&s=400", password: "1234")
u2 = User.create(first_name: "Brien", last_name: "Bier", email: "briansbier@gmail.com", description: "Javascript expert", image: "https://avatars2.githubusercontent.com/u/11370144?v=3&s=400" , password: "1234")
u3 = User.create(first_name: "Ernesto", last_name: "Espinoza", email: "espinoza.ern@gmail.com", description: "Ruby on Rails expert", image: "https://avatars0.githubusercontent.com/u/361381?v=3&s=400", password: "1234")
u4 = User.create(first_name: "Rob", last_name: "Ungar", email: "robungar@gmail.com", description: "Front-end developer", image: "https://avatars0.githubusercontent.com/u/3894093?v=3&s=400", password: "1234")
u5 = User.create(first_name: "Simon", last_name: "Babba", email: "smallbabba@gmail.com", description: "HTML & CSS expert", password: "1234")
u6 = User.create(first_name: "Sungwon", last_name: "Ryu", email: "swryu0906@gmail.com", description: "Back-end developer", password: "1234")


ca1 = Category.create(name: "AngularJs", image: nil)
ca2 = Category.create(name: "ASP.NET", image: "http://www.drewslair.com/wp-content/uploads/2015/03/31dfef58-1812-4523-ab35-c8bf20fcfd83.png")
ca3 = Category.create(name: "BackboneJs", image: "")
ca4 = Category.create(name: "Basic", image: nil)
ca5 = Category.create(name: "Bootstrap", image: "http://www.tagerr.com/wp-content/uploads/2014/09/advantages-of-using-bootstrap.jpg")
ca6 = Category.create(name: "CoffeeScript", image: nil)
ca7 = Category.create(name: "CSS", image: "http://www.forthuntparent.com/Academy/image:s/css.png")
ca8 = Category.create(name: "C++", image: nil)
ca9 = Category.create(name: "Django", image: nil)
ca10 = Category.create(name: "Ember", image: nil)
ca11 = Category.create(name: "ExpressJs", image: nil)
ca12 = Category.create(name: "Git", image: nil)
ca13 = Category.create(name: "HTML", image: "http://communicationsbureau.org/wp-content/uploads/2013/06/o-que-%C3%A9-html.jpg")
ca14 = Category.create(name: "Java", image: nil)
ca15 = Category.create(name: "JavaScript", image: "http://sdtimes.com/wp-content/uploads/2015/05/0506.sdt-javascript.jpg")
ca16 = Category.create(name: "JQuery", image: nil)
ca17 = Category.create(name: "Meteor", image: nil)
ca18 = Category.create(name: "NodeJs", image: nil)
ca19 = Category.create(name: "Objective-C", image: nil)
ca20 = Category.create(name: "PHP", image: nil)
ca21 = Category.create(name: "Physon", image: nil)
ca22 = Category.create(name: "Ruby", image: "https://www-eapps.r.worldssl.net/images/ruby-on-rails-hosting.png")
ca23 = Category.create(name: "Ruby on Rails", image: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/791px-Ruby_on_Rails.svg.png")
ca24 = Category.create(name: "Sass", image: nil)
ca25 = Category.create(name: "SQL", image: nil)
ca26 = Category.create(name: "Other", image: nil)


c1 = Course.create(name: "Learn HTML", category_id: ca13.id, city_name: "New York", description: "Hands-on learning for HTML beginners", image: nil, user_id: u1.id)
c2 = Course.create(name: "Learn CSS", category_id: ca7.id, city_name: "New York", description: "Hands-on learning for HTML beginners", image: nil, user_id: u3.id)
c3 = Course.create(name: "Learn Javascript", category_id: ca15.id, city_name: "Brooklyn", description: "Hands-on learning for HTML beginners", image: nil, user_id: u2.id)
c4 = Course.create(name: "Learn AngularJs", category_id: ca1.id, city_name: "New York", description: "Hands-on learning for HTML beginners", image: nil, user_id: u2.id)
c5 = Course.create(name: "Learn Ruby", category_id: ca22.id, city_name: "Queens", description: "Hands-on learning for HTML beginners", image: nil, user_id: u4.id)
c6 = Course.create(name: "Learn Rails", category_id: ca23.id, city_name: "New York", description: "Hands-on learning for HTML beginners", image: nil, user_id: u5.id)
c7 = Course.create(name: "Learn Bootstrap", category_id: ca5.id, city_name: "New York", description: "Hands-on learning for HTML beginners", image: nil, user_id: u6.id)
c8 = Course.create(name: "Learn JQuery", category_id: ca16.id, city_name: "Bronx", description: "Hands-on learning for HTML beginners", image: nil, user_id: u2.id)


e1 = Event.create(start_time: DateTime.strptime("09/01/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/01/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c1.id)
e2 = Event.create(start_time: DateTime.strptime("09/02/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/02/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c1.id)
e3 = Event.create(start_time: DateTime.strptime("09/03/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/03/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c2.id)
e4 = Event.create(start_time: DateTime.strptime("09/04/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/04/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c2.id)
e5 = Event.create(start_time: DateTime.strptime("09/05/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/05/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c3.id)
e6 = Event.create(start_time: DateTime.strptime("09/06/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/06/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c3.id)
e7 = Event.create(start_time: DateTime.strptime("09/07/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/07/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c4.id)
e8 = Event.create(start_time: DateTime.strptime("09/08/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/08/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c4.id)
e9 = Event.create(start_time: DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/09/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c5.id)
e10 = Event.create(start_time: DateTime.strptime("09/10/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/10/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c5.id)
e11 = Event.create(start_time: DateTime.strptime("09/11/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/11/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c6.id)
e12 = Event.create(start_time: DateTime.strptime("09/12/2015 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/12/2015 19:00", "%m/%d/%Y %H:%M"), course_id: c6.id)