ActionController::Routing::Routes.draw do |map|
  map.resources :memos, :only => [:new, :create]
end
