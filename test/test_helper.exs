ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Cider.Repo, :manual)
Application.put_env(:wallaby, :base_url, CiderWeb.Endpoint.url())
{:ok, _} = Application.ensure_all_started(:wallaby)
