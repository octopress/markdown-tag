require 'octopress-markdown-tag/version'

module Octopress
  module Tags
    module Markdown
      class Tag < Liquid::Block
        alias_method :render_block, :render

        def initialize(tag_name, markup, tokens)
          super
        end

        # Uses the default Jekyll markdown parser to
        # parse the contents of this block
        #
        def render(context)
          site = context.registers[:site]
          converter = site.getConverterImpl(::Jekyll::Converters::Markdown)
          converter.convert(render_block(context))
        end
      end
    end
  end
end

Liquid::Template.register_tag('markdown', Octopress::Tags::Markdown::Tag)

if defined? Octopress::Docs
  Octopress::Docs.add({
    name:        "Octopress Markdown Tag",
    gem:         "octopress-markdown-tag",
    version:     Octopress::Tags::Markdown::VERSION,
    description: "Write markdown anywhere with this simple liquid tag",
    path:        File.expand_path(File.join(File.dirname(__FILE__), "../")),
    source_url:  "https://github.com/octopress/markdown-tag"
  })
end

