use Mix.Config

config :trot, :port, 8080
config :trot, :router, TrotExample.Router

Plug.Adapters.Cowboy.http HerokuBuildpackWithPlug, [], port: 8080
