ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'memos', :action => 'new'
  map.resources :memos, :only => [:new, :create]
end
