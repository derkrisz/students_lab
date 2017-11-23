require( 'sinatra' )
require( 'sinatra/reloader' )
require( 'pry-byebug' )

require_relative( './models/student.rb' )

#INDEX
get '/students' do
  @students = Student.find_all
  erb ( :students )
end
