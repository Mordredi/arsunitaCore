defmodule ArsunitaCore.Web.Router do
  use ArsunitaCore.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ArsunitaCore.Web do
    pipe_through :api
  end
end
