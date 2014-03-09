resources :orders do
  get :autocomplete_customer_name, on: :collection
end
