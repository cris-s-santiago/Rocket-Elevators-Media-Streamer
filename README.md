🚀 Rocket_Elevators_Media_Streamer 📈

🎯 About Week 10 - The marketing department at Rocket Elevators has long been waiting for the opportunity to do media content placement in the company's elevators. To meet their needs, we implement a content delivery module.

📌 This module:

- Reusable library. (in the 'lib' directory of your information system.)
- Entirely developed with the "red-green-refactor" method
- The TDD is made by using RSpec ( http://rspec.info )
- All the content available and accessible via the getContent method.

📌 Media source:

- Open Weather API: https://openweathermap.org/api
- Joke API: http://api.icndb.com/jokes/random

📌 For testing:

Streamer:
- File : ./spec/lib/Elevator_Media/streamer_spec.rb
- Test command: rspec ./spec/lib/Elevator_Media/streamer_spec.rb

Unit tests:
Controllers
- File: ./spec/controller/customers_controller_spec.rb
   Test command: rspec ./spec/controller/customers_controller_spec.rb
   
- File: ./spec/controller/interventions_controller_spec.rb
   Test command: rspec ./spec/controller/interventions_controller_spec.rb
   
- File: ./spec/controller/quotes_controller_spec.rb
   Test command: rspec ./spec/controller/quotes_controller_spec.rb

Models  
- File: ./spec/models/employee_spec.rb
   Test command: rspec ./spec/models/employee_spec.rb

- File: ./spec/models/interventions_controller_spec.rb
   Test command: rspec ./spec/models/interventions_controller_spec.rb

- File: ./spec/models/routes_spec.rb
   Test command: rspec ./spec/models/routes_spec.rb

- File: ./spec/models/user_spec.rb
   Test command: rspec ./spec/models/user_spec.rb

📌 For help:

gem 'factory_bot'

⚡ Factory Bot, originally known as Factory Girl,[1] is a software library for the Ruby programming language that provides factory methods to create test fixtures for automated software testing.
