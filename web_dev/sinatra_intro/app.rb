# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write /contact route that displays an address 

get '/contact' do 
  "111 Main Street <br> Evanston, IL 60201"
end 

# write /great_job route that takes name as query param 
# if query param not present, the route says 'good job!'

get '/great_job' do 
  name == params[:name]
  if name 
    "Good job, #{name}!"
  else 
    "Good job!"
  end 
end 

# route that uses route parameters to add 2 nums and respond with the result 
# when will the data need to be (or arrive as) a string? 
get '/:number1/plus/:number2' do 
  "#{params[:number1].to_i + params[:number2].to_i}"
end

