Rails.application.routes.draw do
  root to: "cats#index"
  resources :cats do
    resources :cat_rental_requests
  end

  post "cat_rental_requests/:id/approve", to: "cat_rental_requests#approve", as: "approve_cat_rental_request"
  post "cat_rental_requests/:id/deny", to: "cat_rental_requests#deny", as: "deny_cat_rental_request"
end
