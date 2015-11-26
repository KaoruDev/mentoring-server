Rails.application.routes.draw do
  namespace :recursion do
    get "friends/:level" => "friends#show"
  end
end
