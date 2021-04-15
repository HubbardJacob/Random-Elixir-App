defmodule SocialMediaExWeb.PageController do
  use SocialMediaExWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
