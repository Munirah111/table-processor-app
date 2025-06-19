Rails.application.routes.draw do
  root "table_entries#index"
  get "/calculations", to: "table_entries#calculations"
end
