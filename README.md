# ExFigment - Simulating Worlds

## Overview

ExFigment is an open source application focused on simulating worlds (hereafter
called figments). This includes figment generation, figment history, and creating
the various entities within. During and after creation, the core engine will
simulate the various entities in each figment as they live and interact with one
another

For us lowly humans, ExFigment will provide a means to interact with each figment
and their creations through a variety of means - including but not limited to
telnet, SSH, web browsers, and more.

This project was born out of initial work and ideas written for
[ExFigment MUD](http://github.com/rishenko/ex_figment_mud).

## Project Status

The project is currently in the conceptual and architectural stage. 

## Technology Stack

1. PostgreSQL 9.6
1. Erlang/OTP 20
1. Elixir 1.6
1. Phoenix 1.3

## Documentation

ExFigment has a variety of types of documentation:
* ExDoc documentation that can be generated by running `mix docs`.
* Unit tests for the codebase showing how pieces can be used.
* The repository's wiki.


## Licensing

Apache 2.0 Licensing. See the LICENSE.txt file.

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_figment](https://hexdocs.pm/ex_figment).