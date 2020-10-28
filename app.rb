require_relative 'config/environment'

class App < Sinatra::Base
    # This is a sample static route.
    # get '/' do
    #     erb :index
    # end

    # This is a sample dynamic route.
    # post '/hello/:name' do
    #     erb :hello
    # end

    # Code your final two routes here:
    get '/goodbye/:name' do
        "Goodbye, #{params[:name]}."
    end

    get '/multiply/:num1/:num2' do
        n1 = params[:num1].to_i
        n2 = params[:num2].to_i
        @result = n1 * n2
        "#{@result}"
    end
end
