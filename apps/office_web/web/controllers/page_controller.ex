defmodule OfficeWeb.PageController do
  use OfficeWeb.Web, :controller

  def index(conn, _params) do
    message = User.hello()
    render conn, "index.html", message: message
  end
end
