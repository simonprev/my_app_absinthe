defmodule MyApp.MyRouter do
  use Plug.Router

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Absinthe.Plug,
    schema: MyApp.Schema

  match _ do
    send_resp(conn, 404, "oops")
  end
end
