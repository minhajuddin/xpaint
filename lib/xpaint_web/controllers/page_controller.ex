defmodule XPWeb.PageController do
  use XPWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
