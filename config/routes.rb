Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/departments", to: "departments#index"
  get "/employee/:id", to: "employees#show"
  post "/employee/:id/tickets", to: "employee_tickets#create"
end
