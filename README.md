# Octopress Markdown Tag

[![Gem Version](https://badge.fury.io/rb/octopress-markdown-tag.png)](http://badge.fury.io/rb/octopress-markdown-tag) [![Build Status](https://travis-ci.org/octopress/markdown-tag.png)](https://travis-ci.org/octopress/markdown-tag)

Why? Because you should be able to:

- Write markdown anywhere.
- {% include %} markdown files anywhere.

## Installation

If you're using bundler add this gem to your site's Gemfile in the `:jekyll_plugins` group:

    group :jekyll_plugins do
      gem 'octopress-markdown-tag'
    end

Then install the gem with Bundler

    $ bundle

Or install it manually:

    $ gem install octopress-markdown-tag

Then add the gem to your Jekyll configuration.

    gems:
      -octopress-markdown-tag

## Usage

#### Embed Markdown in HTML

Drop some markdown in your html, and it will render nicely

```html
<!-- Some random HTML file-->
<div>
{% markdown %}

## That's right folks!

Markdown in your `HTML`!

- Any template
- Any time

{% endmarkdown %}
</div>
```

#### Convert includes with markdown 

Correctly render markdown files which are included in an HTML page.

```html
<!-- Another random HTML file-->

<div>
{% markdown %}{% include coolcat.md %}{% endmarkdown %}
</div>
```

That's pretty much it. Have fun!

## Contributing

1. Fork it (https://github.com/octopress/markdown-tag/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
