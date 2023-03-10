defmodule CiderWeb.Browser.HomepageTest do
  use CiderWeb.BrowserCase

  feature "show home page", %{session: session} do
    session
    |> visit(~p"/home")
    |> assert_has(Query.text("Peace of mind from prototype to production."))
  end

  feature "show index", %{session: session} do
    session
    |> visit(~p"/")
    |> assert_has(Query.text("This is Cider"))
  end
end
