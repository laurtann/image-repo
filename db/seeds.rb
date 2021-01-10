# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

## PHOTOS

Photo.destroy_all

Photo.create!({
  category: 'Nature',
  image_url: 'https://images.unsplash.com/photo-1591451639613-de71552102d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80'
})

Photo.create!({
  category: 'Friends',
  image_url: 'https://images.unsplash.com/photo-1596432519180-30b51f38fb6f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'
})

Photo.create!({
  category: 'Pets',
  image_url: 'https://images.unsplash.com/photo-1576530126257-cce5811df0c6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'
})