defmodule SourceTextEditor.Repo do
  use Ecto.Repo,
    otp_app: :source_text_editor,
    adapter: Ecto.Adapters.Postgres
end
