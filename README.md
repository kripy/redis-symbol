# Redis Symbol

During my port of Trineo's [Resque example](https://github.com/trineo/resque-example) to [Unicorn](https://github.com/kripy/to-the-resque), I came across an issue with the [Sinatra Redis](https://github.com/bmizerany/sinatra-redis) gem. The issue being that I can't get it to work in a modular application. (Note this gem hasn't been touched in three odd years.) I do understand the difference between classic and modular Sinatra applications. I've read into how scope is affected by the top-level DSL versus subclassing in a modular application, which happens to be my preference. What I really want to get an idea of is if it's possible to run this gem in a modular application, and, get it working on Heroku.

## Installation

Firstly, make sure you've [installed Ruby](http://www.ruby-lang.org/en/). Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/) as it includes [Foreman](https://github.com/ddollar/foreman) for running Procfile-based applications.

Then in terminal, clone me:

```
$ git clone https://github.com/kripy/redis-symbol redis-symbol
$ cd redis-symbol
$ bundle
$ foreman start
```

Open up a browser at ```http://localhost:5000/``` and you'll get a big, fat, error.

Pull request, anyone?

## MIT LICENSE

Copyright (c) 2013 Arturo Escartin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.