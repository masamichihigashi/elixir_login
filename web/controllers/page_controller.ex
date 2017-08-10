defmodule ProjectX.PageController do
  use ProjectX.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
