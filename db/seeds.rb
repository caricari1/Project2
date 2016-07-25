# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jobs = Job.create([
  {title: 'Junior Front End Developer', organization: 'Vaco Technology', location: 'Downtown Los Angeles', salary: 65000, description: 'Working with the Sr Developer to build an internal facing custom business apllication - Customer Relationship Management (CRM) system. 2+ years of experience with JavaScript. 6+ months experience with Angular.js 2+ years of experience with HTML, CSS PHP experience a plus', date_posted: July 19, 2016},
  {title: 'Jr/Entry Level Programmer / Developer', organization: 'P. Murphy & Associates', location: 'Northridge', description: "Work with development teams supporting various applications including order  management, purchase order, warehouse management, retail, ERP package, etc. Learn development tools to support existing products in an AS400 environment Write database queries to access Oracle databases. HTML, JQuery, Javascript, CSS, SQL. Nice to have: XML.", notes: "Requires 2-3 manager references."},
  {title: 'Web developer/graphic designer', organization: 'Signature Card Services', location: 'Los Angeles', salary: 32000, description: 'The successful candidate will be well versed in Adobe CC products (specifically Photoshop, Illustrator, Indesign) and will be experienced in creating HTML, PHP, and WordPress websites for small to medium sized businesses and startups. This developer should be familiar with all facets of installing, customizing, and maintaining these websites. Responsibilities include working collaboratively with the creative team and sales team to define project goals and specifications, and delivering websites and other digital projects that meet client requirements in a timely fashion. The ideal candidate should have an eye for clean and unique design and possess superior user interface design skills. This position will be solely responsible for building and maintaining company website and must be able to conceptualize original ideas that bring simplicity and user friendliness to complex design.' date_posted: July 1, 2016, notes: 'part-time'}
])
