get '/' do
  @user = User.first
  erb :index
end


