# Gaslight's super awesome slide deck

Featuring an awesome Gaslight theme powered by [Sass](http://sass-lang.com/),
[Bourbon](http://thoughtbot.com/bourbon/) and [Grunt](http://gruntjs.com/)
Use this as a starting point for your next presentation. Might not make much
sense unless you're a Gaslighter or a huge fan, though.

## Setup

Want to make changes? Just follow these steps:

1. `git clone git://github.com/gaslight/slides.git`
1. `cd slides`
1. `npm install grunt-cli -g`
1. `npm install`
1. `grunt`

That's it! Edit `slides.eco` and `stylesheets/index.scss` to change your presentation.
It'll automagically compile everything to the `compiled` dir so you can just reload the
page to see your changes. Browse to http://localhost:8000/ and bask in the glory.

## Alternative Template Engines

Don't like eco? Thats ok, we support all these:

  - [dust](https://github.com/akdubya/dustjs) [(website)](http://akdubya.github.com/dustjs/)
  - [eco](https://github.com/sstephenson/eco)
  - [ejs](https://github.com/visionmedia/ejs)
  - [haml](https://github.com/visionmedia/haml.js) [(website)](http://haml-lang.com/)
  - [haml-coffee](https://github.com/9elements/haml-coffee) [(website)](http://haml-lang.com/)
  - [handlebars](https://github.com/wycats/handlebars.js/) [(website)](http://handlebarsjs.com/)
  - [hogan](https://github.com/twitter/hogan.js) [(website)](http://twitter.github.com/hogan.js/)
  - [jade](https://github.com/visionmedia/jade) [(website)](http://jade-lang.com/)
  - [jazz](https://github.com/shinetech/jazz)
  - [jqtpl](https://github.com/kof/node-jqtpl) [(website)](http://api.jquery.com/category/plugins/templates/)
  - [liquor](https://github.com/chjj/liquor)
  - [mustache](https://github.com/janl/mustache.js)
  - [QEJS](https://github.com/jepso/QEJS)
  - [swig](https://github.com/paularmstrong/swig) [(website)](http://paularmstrong.github.com/swig/)
  - [underscore](https://github.com/documentcloud/underscore) [(website)](http://documentcloud.github.com/underscore/)
  - [walrus](https://github.com/jeremyruppel/walrus) [(website)](http://documentup.com/jeremyruppel/walrus/)
  - [whiskers](https://github.com/gsf/whiskers.js/tree/)

Example: to use jade, just do this:

1. `npm install jade`
1. Swap out `slides.eco` with `slides.jade`
1. Open `Gruntfile.coffee` and change `template = "slides.eco"` to `template = "slides.jade"`
1. BOOM!

## Contributing

Make your changes, submit a pull request!

## License

MIT licensed

Copyright (C) 2011-2012 Hakim El Hattab, http://hakim.se

