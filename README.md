# Overview

The goal of this project is to provide a [language server](https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol) implementation for ruby in ruby.

# Status

Alpha.  Totally feature incomplete.  Mostly stable.  Used day-to-day.

Help wanted.

# Features

* Definitions (somewhat)
* Completions (a little)
* Please see the [FAQ_ROADMAP.md](./FAQ_ROADMAP.md)

# Requirements

* [Docker](http://docker.com/)
* I use [Atom](https://atom.io/) as a client - I'm hoping others work
* I use OS X - I'm hoping others work

# Development

Clone.  I love git [HubFlow](https://datasift.github.io/gitflow/).

```sh
docker run -it -v $PWD:/tmp/src -w /tmp/src ruby_language_server bash -c 'bundle && guard'
```

(in zsh:)
```sh
while (true)
do
  docker build -t local_ruby_language_server .
  sleep 2
done
```

* In Atom: install the ide-ruby.  
* Settings > Packages > ide-ruby > Image Name > local_ruby_language_server
* CMD-ALT-CTRL-l (that's an L) will reload the window
* CMD-ALT-i will show debugging info

Write tests and guard will run them.  Make changes and reload the window.  Test them out.

# Similar

* [language_server-ruby](https://github.com/mtsmfm/language_server-ruby)

# Authors

* [Kurt Werle](kurt@CircleW.org)

# Contributors

* *Your name here!*