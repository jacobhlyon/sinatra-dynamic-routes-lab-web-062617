require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
  	@reversed_name = params[:name].reverse!
  	"#{@reversed_name}"
  end

  get '/square/:number' do 
  	@squared_number = (params[:number].to_i) ** 2
  	"#{@squared_number}"
  end

  get '/say/:number/:phrase' do 
  	@new_phrase = ""
  	(params[:number].to_i).times do
  		@new_phrase += params[:phrase]
  	end
  	"#{@new_phrase}"
    end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  	@first = params[:word1]
  	@second = params[:word2]
  	@third = params[:word3]
  	@fourth = params[:word4]
  	@fifth = params[:word5]
  	"#{@first} #{@second} #{@third} #{@fourth} #{@fifth}."
  end

  get '/:operation/:number1/:number2' do 
  	@final_number = 0
  	if params[:operation] == 'add'
  		@final_number = params[:number1].to_i + params[:number2].to_i
  	elsif params[:operation] == 'subtract'
  		@final_number = params[:number1].to_i - params[:number2].to_i
  	elsif params[:operation] == 'multiply'
  		@final_number = params[:number1].to_i * params[:number2].to_i
  	elsif params[:operation] == 'divide'
  		@final_number = params[:number1].to_i / params[:number2].to_i
  	end
  	"#{@final_number}"
  end

end