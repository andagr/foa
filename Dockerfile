FROM elixir:1.15

# Install hex and rebar (Elixir's package tools)
RUN mix local.hex --force && \
    mix local.rebar --force

# Install the Phoenix generator
RUN mix archive.install hex phx_new --force

# Install inotify-tools for Phoenix live reload
RUN apt-get update && apt-get install -y inotify-tools watchman && rm -rf /var/lib/apt/lists/*

WORKDIR /app
