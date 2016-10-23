use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: :dev

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :default do
  set pre_start_hook: "rel/hooks/pre_start"
  set post_start_hook: "rel/hooks/post_start"
end

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"n^>GcBv^}[zig4a-0z}|>Sq5{/BRZS@=M/qW[RqeO.CD3!LLyh:QsNc-[TdvVJOX"
end

environment :staging do
  set include_erts: true
  set include_src: false
  set cookie: :"n^>GcBv^}[zig4a-0z}|>Sq5{/BRZS@=M/qW[RqeO.CD3!LLyh:QsNc-[TdvVJOX"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"n^>GcBv^}[zig4a-0z}|>Sq5{/BRZS@=M/qW[RqeO.CD3!LLyh:QsNc-[TdvVJOX"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :rumbrella do
  set version: "0.1.0"
  set applications: [
    info_sys: :permanent,
    rumbl: :permanent
  ]
end

