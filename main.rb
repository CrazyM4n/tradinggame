require 'sinatra'
require 'securerandom'

get '/' do
	erb :index
end
get '/getlogincode' do
	@userLoginCode = SecureRandom.hex(20)
	File.new("users/#{@userLoginCode}", "w")
	erb :getcode
end
get '/play' do
	"it's not done babyyyy"
end