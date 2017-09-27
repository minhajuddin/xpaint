defmodule XPWeb.SharedView do
  use XPWeb, :view

  def render_if(input, inner_html_fun) do
    if input do
      inner_html_fun.(input)
    end
  end

  def alert_css_class(:info), do: "alert-info"
  def alert_css_class(:error), do: "alert-danger"
end

