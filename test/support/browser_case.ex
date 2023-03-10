defmodule CiderWeb.BrowserCase do
  @moduledoc """
  This module defines the test case to be used by
  e2e browser tests powered by Wallaby.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.Feature
      use CiderWeb, :verified_routes
    end
  end
end
