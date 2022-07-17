defmodule WallabyTestGithubActionsWeb.PageController do
  use WallabyTestGithubActionsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
