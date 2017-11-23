require( 'sinatra' )
require( 'sinatra/reloader' )
require( 'pry-byebug' )

require_relative( './models/student.rb' )

#INDEX
get '/students' do
  @students = Student.find_all
  erb ( :index )
end

#NEW
get '/students/new' do
  erb( :new )
end

#SHOW
get '/students/:id' do
  @student = Student.find( params[:id] )
erb ( :show )
end

#CREATE
post '/students' do
  @student = Student.new( params )
  @student.save()
erb ( :create )
end
