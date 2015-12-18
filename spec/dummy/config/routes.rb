Rails.application.routes.draw do
  mount_ember_assets "my-app", to: "/"

  get "/nested" => "ember#index", as: :nested

  root to: "ember#index"
end
