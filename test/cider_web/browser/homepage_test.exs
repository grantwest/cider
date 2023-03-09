defmodule CiderWeb.Browser.HomepageTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  feature "show home page", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.text("Peace of mind from prototype to production."))
  end
end
