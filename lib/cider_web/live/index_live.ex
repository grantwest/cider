defmodule CiderWeb.IndexLive do
  use CiderWeb, :live_view

  def render(assigns) do
    ~H"""
    <div>This is <%= @app %></div>
    """
  end

  def mount(_params, _, socket) do
    {:ok, assign(socket, :app, "Cider")}
  end
end
