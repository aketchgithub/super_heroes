# Description
This is a super_heroes API project for tracking heroes and their superpowers that implements the use of Ruby on Rails in building custom apis.

The super_heroes is a simple custom web API where you can make CRUD requests to the server in implementing a super_hero Application.

# Ruby version
Ruby~v2.7.+

# How to Use the API
Clone the repo, 'git clone 'https://github.com/aketchgithub/super_heroes'

cd super_heroes

# Install the required dependencies using bundle;
'bundle install'

# Create migrations with rails

rails db:migrate

If you would like to use the seed data 

rails db:seed

# Start the server

rails s   
   or
 rails server

# Example Relationships within the database

- A `Hero` has many `Power`s through `HeroPower`
- A `Power` has many `Hero`s through `HeroPower`
- A `HeroPower` belongs to a `Hero` and belongs to a `Power`

