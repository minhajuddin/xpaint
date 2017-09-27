defmodule XPWeb.LayoutView do
  use XPWeb, :view

  def partial(conn, template) do
    Phoenix.View.render(XPWeb.SharedView, template, assigns: conn.assigns, conn: conn)
  end
end
