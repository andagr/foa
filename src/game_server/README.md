# Fabric of Adventure


# GameServer

To start your Phoenix server:

* Run `mix setup` to install and setup dependencies
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix

## Project Structure

Here is an overview of the typical folders in this Elixir/Phoenix application:

### 📂 Core Folders

*   **`assets/`**: Frontend source code (JavaScript, CSS, fonts, images). Processed by tools like esbuild/tailwind.
*   **`lib/`**: The heart of the application.
    *   **`lib/game_server`**: Business logic, contexts, and schemas (backend logic).
    *   **`lib/game_server_web`**: Web-facing code (Controllers, LiveViews, Templates, Router).
*   **`config/`**: Configuration files (`config.exs`, `dev.exs`, `runtime.exs`, etc.).
*   **`priv/`**: Resources needed at runtime (database migrations in `repo/`, compiled assets in `static/`).
*   **`test/`**: Automated tests, mirroring the `lib/` structure.

### ⚙️ System & Build Folders

*   **`deps/`**: Project dependencies managed by Mix.
*   **`_build/`**: Compiled artifacts and build output.

### 📄 Key Files

*   **`mix.exs`**: Project definition, dependencies, and versioning.
*   **`mix.lock`**: Exact dependency versions lockfile.
