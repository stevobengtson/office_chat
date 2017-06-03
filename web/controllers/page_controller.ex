defmodule OfficeTalk.PageController do
  use OfficeTalk.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
