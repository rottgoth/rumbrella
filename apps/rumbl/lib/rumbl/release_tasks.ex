defmodule Release.Tasks do  
  def migrate do
    {:ok, _} = Application.ensure_all_started(:rumbl)

    path = Application.app_dir(:rumbl, "priv/repo/migrations")

    Ecto.Migrator.run(Rumbl.Repo, path, :up, all: true)
  end
end  