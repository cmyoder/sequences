Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/", { :controller => "lion", :action => "guesses"})
  get("/all_guesses", { :controller => "lion", :action => "guesses"})
  get("/show_answer", {:controller => "lion", :action => "answer"})
end
