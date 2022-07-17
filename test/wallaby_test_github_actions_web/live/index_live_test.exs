defmodule WallabyTestGithubActionsWeb.IndexLiveTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  feature "can increment number", %{session: session} do
    session
    |> visit("/wtga")
    |> assert_has(Query.css("h3", text: "0"))
    |> click(Query.button("Increment"))
    |> assert_has(Query.css("h3", text: "1"))
    |> click(Query.button("Increment"))
    |> click(Query.button("Increment"))
    |> assert_has(Query.css("h3", text: "3"))
  end
end
