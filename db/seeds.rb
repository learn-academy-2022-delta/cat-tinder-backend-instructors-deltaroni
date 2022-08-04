# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


cats = [
    {
        name: "Mishi",
        age: 2,
        enjoys: "Terrorizing the neighbourhood"
    },
    {
        name: "Dexter",
        age: 3,
        enjoys: "Eating everything and throwing up later"
    },
    {
        name: "Lucifer",
        age: 5,
        enjoys: "Doing nothing all day long"
    },
    {
        name: "Lucious",
        age: 15,
        enjoys: "prowling after the ladycats"
    }
]

cats.each do |attributes|
    Cat.create(attributes)
    p "creating cat #{attributes}"
end