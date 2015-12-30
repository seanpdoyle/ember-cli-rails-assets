Rails.application.routes.draw do
  mount_ember_assets "my-app", to: "/"

  get "/nested" => "application#index", as: :nested
  get "/relative/" => "application#relative", as: :relative

  root to: "application#index"
end
