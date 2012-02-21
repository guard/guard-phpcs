require 'guard'
require 'guard/guard'

module Guard
	class PHPCS < Guard

  		VERSION = '0.0.1'

  		DEFAULT_OPTIONS = {
			:standard => 'Zend',
			:tabs => 4
	    }

	    def initialize(watchers = [], options = {})
	      defaults = DEFAULT_OPTIONS.clone
	      @options = defaults.merge(options)
	      super(watchers, @options)
	    end

	    def run_on_change(paths)
			paths.each do |path|
				results = `phpcs --report=full --tab-width=#{@options[:tabs]} --standard=#{@options[:standard]} #{path}`
				if $?.to_i > 0 then
					::Guard::Notifier.notify(results.gsub(/^-+\n/, '').gsub(/^FILE:.*\n/, '').gsub(/^Time:.*\n/, ''), :title => 'PHP Codesniffer', :image => :failed)
					puts results
				end
			end
	    end
	end
end