#!/usr/bin/env elixir

# Load the application
Code.require_file("lib/servy.ex", __DIR__)

# Test the bears route
request = """
GET /bears HTTP/1.1\r
Host: example.com\r
User-Agent: ExampleBrowser/1.0\r
Accept: */*\r
\r
"""

response = Servy.Handler.handle(request)
IO.inspect(response, label: "Response")
IO.inspect(String.length(response), label: "Length")
