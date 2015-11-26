Rails.application.routes.draw do
  namespace :recursion do
    get "friends/:id" => "friends#show"
  end
end
