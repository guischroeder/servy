# Servy

A minimal HTTP server built with pure Elixir and the Erlang runtime.

This project is designed to refresh core fundamentals of Elixir, including:

* processes and concurrency (BEAM model)
* pattern matching
* recursion
* raw TCP sockets via `:gen_tcp`

No frameworks, no abstractions

---

## Running the Server

Start an interactive shell:

```bash
iex -S mix
```

Then run:

```elixir
Servy.start(4000)
```

You should see:

```
Listening on http://localhost:4000
```

---

## Try it out

In another terminal:

```bash
curl http://localhost:4000/
curl http://localhost:4000/health
```

---

## What this project demonstrates

* Handling HTTP over raw TCP
* Spawning a process per request
* Parsing request lines manually
* Building HTTP responses from scratch
