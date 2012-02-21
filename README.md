# Guard::PHPCS

This guard will run [PHP Code Sniffer](http://pear.php.net/package/PHP_CodeSniffer) for you automatically when files are modified.

## Install

Make sure you have [guard](http://github.com/guard/guard) and [phpcs](http://pear.php.net/package/PHP_CodeSniffer) installed.

Install the gem with:

    gem install guard-phpcs

Or add it to your Gemfile:

    gem 'guard-phpcs'

And then add a basic setup to your Guardfile:

    guard init phpcs

## Options

* `:standard   # default => "Zend"`

The name or path of the coding standard to use.

* `:tabs   # default => 4`

The number of spaces each tab represents.

### Example

	guard 'phpcs', :standard => 'path/to/MyStandard' do
		watch(%r{.*\.php$})
	end