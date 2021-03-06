# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by(
  username: "ピノコ",
  email: "pinoko@chottomir.test"
)

User.find_or_create_by(
  username: "キリコ",
  email: "kiriko@chottomir.test"
)

Category.find_or_create_by(text: "Drug")
Category.find_or_create_by(text: "Shot")
Category.find_or_create_by(text: "Poop")
Category.find_or_create_by(text: "Accident")
