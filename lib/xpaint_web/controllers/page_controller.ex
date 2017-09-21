defmodule XPWeb.PageController do
  use XPWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
