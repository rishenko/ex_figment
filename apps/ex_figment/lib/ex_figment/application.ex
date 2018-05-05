defmodule ExFigment.Application do
  @moduledoc """
  The ExFigment Application Service.

  The ex_figment system business domain lives in this application.

  Exposes API to clients such as the `ExFigmentWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      
    ], strategy: :one_for_one, name: ExFigment.Supervisor)
  end
end
