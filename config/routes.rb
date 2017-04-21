Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:the_number", {:controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:the_number", {:controller => "calculations", :action => "flex_square_root"})
end
