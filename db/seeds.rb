# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

## CATEGORIES

cat1 = Category.find_or_create_by! name: 'Nature'
cat2 = Category.find_or_create_by! name: 'Friends'
cat3 = Category.find_or_create_by! name: 'Pets'

## PHOTOS

Photo.destroy_all

cat1.photos.create!({
  name:  'Clementine',
  description: 'Dog in park',
  image_url: 'https://images.unsplash.com/photo-1591451639613-de71552102d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80'
})

cat2.photos.create!({
  name:  'Clementine',
  description: 'Dog in park',
  image_url: 'https://images.unsplash.com/photo-1591451639613-de71552102d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80'
})

cat3.photos.create!({
  name:  'Clementine',
  description: 'Dog in park',
  image_url: 'https://images.unsplash.com/photo-1591451639613-de71552102d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80'
})