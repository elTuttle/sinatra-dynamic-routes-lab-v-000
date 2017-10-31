require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse!
    "#{@user_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @result = ""
    @number.times {
      @result += @phrase
    }
    "#{@result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @result = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@result}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]

    @result = ""

    if @operation == "add"
      @result
    elsif @operation == "subtract"

    elsif @operation == "multiply"

    elsif @operation == "divide"

    end
    "#{@result}"
  end

end
