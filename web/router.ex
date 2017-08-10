defmodule ProjectX.Router do
  use ProjectX.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ProjectX do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/hello", HelloController, :index
    get "/register", RegistrationController, :new
    post "/register", RegistrationController, :create


# login画面表示
# login処理
# logout処理

    get "/login", SessionController, :new
    post "/login", SessionController, :create
    delete "/logout", SessionController, :delete
  end

  # Other scopes may use custom stacks.
  # scope "/api", ProjectX do
  #   pipe_through :api
  # end
end
