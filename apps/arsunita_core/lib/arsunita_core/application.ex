defmodule ArsunitaCore.Application do
  @moduledoc """
  The ArsunitaCore Application Service.

  The arsunita_core system business domain lives in this application.

  Exposes API to clients such as the `ArsunitaCore.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(ArsunitaCore.Repo, []),
    ], strategy: :one_for_one, name: ArsunitaCore.Supervisor)
  end
end
