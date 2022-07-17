defmodule WallabyTestGithubActionsWeb.IndexLive do
  use WallabyTestGithubActionsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :counter, 0)}
  end

  def handle_event("increment", _input, socket) do
    counter = socket.assigns.counter + 1
    {:noreply, assign(socket, :counter, counter)}
  end

  def render(assigns) do
    ~H"""
    <div class="container">
      <form action="#" phx-submit="increment" novalidate>
        <%= submit "Increment", phx_disable_with: "Incrementing..." %>
      </form>
    </div>
    <h3><%= @counter %></h3>
    """
  end
end
