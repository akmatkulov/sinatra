require 'sinatra'

get '/' do
  erb :index
end

get '/contacts' do
  @title = "Contacts"
  @message = "Phone number: 89856351904"

  erb :message
end

get '/faq' do
  @title = "FAQ"
  @message = "Under constraction"

  erb :message
end

get '/something' do
  @title = "Something"
  @message = "Discover interesting projects and people to populate your personal news feed."

  erb :message
end

post '/' do
  @login = params[:aaa]
  @password = params[:bbb]

  if @login == 'admin' && @password == 'secret'
    erb :welcome
  elsif @login == 'admin' && @password == 'admin'
    @acces_denied = "Haha! Nice try!"
    erb :index
  else
    @acces_denied = "Access Denied!"
    erb :index
  end
end
