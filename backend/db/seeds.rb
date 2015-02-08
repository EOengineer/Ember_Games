# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Projs = [{
  name: "Super Mario Bros",
  description: "Plumber misplaces wife in castle.  Shenanigans ongoing. "
  }, {
  name: "the Legend of Zelda",
  description: "Dude misplaces princess in castle.  Shenanigans ongoing. "
  }, {
  name: "Excitebike",
  description: "Bike overheats constantly. Everyone goes home angry."
  }
]

Chars = [
  {
  name: "Mario",
  description: "Little red and blue plumber guy. Shoots fireballs. ",
  bad_guy: false,
  project_id: 1
  }, {
  name: 'Bowser',
  description: 'Lizard with poor cornering.',
  bad_guy: true,
  project_id: 1
  }, {
  name: "Link",
  description: "Green elf looking guy.  Carries various swords and potions . ",
  bad_guy: false,
  project_id: 2
  }, {
  name: "Gannon",
  description: "Big looking guy.  Use the silver arrows. ",
  bad_guy: true,
  project_id: 2
  }, {
  name: "the Excitebiker",
  description: "little guy on a bike.",
  bad_guy: false,
  project_id: 3
  }, {
  name: "Heat",
  description: "Don't overheat the bike.",
  bad_guy: true,
  project_id: 3
  }
]


Projs.each do |project|
  Project.create(name: project[:name], description: project[:description])
end

Chars.each do |character|
  Character.create(name: character[:name], description: character[:description], bad_guy: character[:bad_guy], project_id: character[:project_id])
end
