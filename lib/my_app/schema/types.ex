defmodule MyApp.Schema.Types do
  use Absinthe.Schema.Notation

  object :activities do
    field :org_id, :integer
  end
end
