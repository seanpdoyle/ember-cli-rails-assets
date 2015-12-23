Rails.application.routes.draw do
  mount_ember_assets "my-app", to: "/"

  get "/nested" => "application#index", as: :nested

  root to: "application#index"
end
