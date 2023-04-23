Dir["model/*.rb"].each { |file| load file }

city = City.new(name: "bhopal", pincode: "102333")
movie1 = Movie.new(name: "KGF", duration: 100, language: "telugu")
movie2 = Movie.new(name: "Kahani", duration: 120, language: "hindi")

theatre1 = Theatre.new(name: "PVR Bhopal", city: city, address: "ABC park, near station")
screen1 = Screen.new(screen_id: "PVR Bhopal: Screen 1", theatre: theatre1, category: Screen::CATEGORY["NORMAL"])
screen2 = Screen.new(screen_id: "PVR Bhopal: Screen 2", theatre: theatre1, category: Screen::CATEGORY["PREMIUM"])

show1 = Show.new(movie: movie1, screen: screen1, time: "2023-04-23 04:00:00")
show2 = Show.new(movie: movie1, screen: screen1, time: "2023-04-23 08:00:00")

show3 = Show.new(movie: movie2, screen: screen2, time: "2023-04-23 04:00:00")
show4 = Show.new(movie: movie2, screen: screen2, time: "2023-04-23 08:00:00")

seat1 = Seat.new(seat_id: "PVR_SCREEN_1_SEAT_A1", screen: screen1, cost: 300, category: Seat::CATEGORY["NORMAL"])
seat2 = Seat.new(seat_id: "PVR_SCREEN_1_SEAT_A2", screen: screen1, cost: 600, category: Seat::CATEGORY["RECLINER"])

seat3 = Seat.new(seat_id: "PVR_SCREEN_2_SEAT_A1", screen: screen2, cost: 300, category: Seat::CATEGORY["NORMAL"])
seat4 = Seat.new(seat_id: "PVR_SCREEN_2_SEAT_A2", screen: screen2, cost: 600, category: Seat::CATEGORY["RECLINER"])

user1 = User.new(name: "SJ")
user2 = User.new(name: "Ramesh")

user1.select_city(city: city) #bhopal
user2.select_city(city: city) #bhopal

theatres = city.list_theatres
shows = theatres[0].list_shows
puts "selected show: #{shows[0].movie.name}"
seats = shows[0].screen.list_seats
puts "selected seat: #{seats[0].seat_id}"

user1.book_seats(seats: [seats[0]], payment_mode: PaymentFactory::MODES["UPI"])




# NOTE: can use factory design pattern for PaymentService









# flow--
# - user will select a location
# - all events/movies will be listed to user
# - user can select any event and select seat
# - user will select seats
# - user will do the payment
# - invoice will be generated


# requirements--
# - user should be able to select/change location
# - events and its description(seats, price, time, address) can be added/modified
# - user can select an event and book seats
# - user can pay from different modes
# - invoice is generated for user

# objects identification-- 
# - user -> name, email, phone
# - movie -> name, duration, language
# - theatre -> name, city, screens
# - city -> name, pincode, theatres
# - screen -> screen_id, theatre, shows, seats
# - show -> screen, movie, time, booked_seats
# - seat -> screen, number, category, cost
# - booking -> user, show, seats, total_cost, payment
# - payment -> booking, user, payment_mode
# - invoice -> payment, user