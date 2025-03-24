import Config

config :ex_textstack,
  base_url: "https://v3-staging.textstack.io//api",
  api_key: "<api-secret>"

import_config "#{config_env()}.exs"
