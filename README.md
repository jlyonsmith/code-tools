# Source Code Tools

A collection of useful command line development tools for general source code maintenance.  They are written in [Ruby](https://www.ruby-lang.org/en/) for maximum portability.  I use [RubyMine](https://www.jetbrains.com/ruby/) for writing and debugging them, but it's not required.

- __vamper__ updates file and product version numbers across a variety of different file types
- __ender__ reports on and fixes line endings in text files
- __spacer__ reports on and fixes initial spaces and tabs in source code and other text files

To install the latest version of [code_tools](https://rubygems.org/gems/code_tools) simply run:

```bash
gem install code_tools
```

## Spacer

Spacer will report on and normalize spaces and tabs in source code and text files.  Normalize the spaces of an entire directory of files _in-place_ with:

```bash
find *.cs -exec spacer -m spaces -t 4 -r {} \;
```

## Debugging

Because of the directory layout, running the tools from the command line requires a little more effort:

```bash
ruby -e 'load($0=ARGV.shift);Vamper.new.execute' -- lib/vamper.rb --help
```

## Publishing

Here's what you need to do to publish a Ruby gem.  First time only:

```bash
curl -u <yourname> https://rubygems.org/api/v1/api_key.yaml > ~/.gem/credentials; chmod 0600 ~/.gem/credentials
```

Then:

```bash
gem build code_tools.gemspec
gem push code_tools-<version>.gem
```
