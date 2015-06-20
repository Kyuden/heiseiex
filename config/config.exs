use Mix.Config

config :trot, :port, 8080
config :trot, :router, TrotExample.Router

port = System.get_env("PORT")
if port do
  IO.puts "Running HerokuBuildpackWithPlug with Cowboy on http://localhost:#{port}"
  Plug.Adapters.Cowboy.http HerokuBuildpackWithPlug, [], port: binary_to_integer(port)
else
  IO.puts "Running HerokuBuildpackWithPlug with Cowboy on http://localhost:4000"
  Plug.Adapters.Cowboy.http HerokuBuildpackWithPlug, []
end
