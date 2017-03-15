defmodule MyApp.Schema do
  use Absinthe.Schema

  import_types MyApp.Schema.Types

  query do
    field :all_activities, list_of(:activities) do
      resolve fn _, _ ->
        {:ok, []}
      end
    end
  end
end
