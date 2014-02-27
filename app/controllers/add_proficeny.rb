get '/add_proficiency' do
  if session[:user_id] 
   erb :add_proficiency
  else
    "you are not allowed to edit this session"
  end

end

post '/add_proficiency' do 
  
   puts params[:proficiency]
  #psuedocode 
  User.where(id: session[user_id]).first << proficiency{params[:proficiency][:skill]}

 


  redirect "/"
end