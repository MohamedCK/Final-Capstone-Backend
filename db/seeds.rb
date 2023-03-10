# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


users = User.create([{name: "King_cake", email: 'cake@gmail.com', password: '123456', role: "admin"}])

motorcycles = Motocycle.create([{name: 'Vespa S 50 2V Sport', image: 'https://th.bing.com/th/id/OIP.rpU0uvi5W3lWVk39A1o5sQHaHT?pid=ImgDet&rs=1', description: "The Vespa S 50 2V Sport is a stylish and nimble scooter with a 49cc engine, producing 4.1 hp and a top speed of 40 mph. It features a retro design, disc brakes, and a comfortable seat for city commutes. Produced from 2011-2012.", price: '20', model: '2012'}])