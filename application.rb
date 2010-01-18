require 'rubygems'
require 'libfminer/fminer' # has to be included before openbabel, otherwise we have strange SWIG overloading problems
gem 'opentox-ruby-api-wrapper', '~>1.2'
require 'opentox-ruby-api-wrapper'
require 'logger'

#require 'smarts.rb'
#require 'similarity.rb'
require 'fminer_class.rb'
require 'fminer_regr.rb'
require 'lazar.rb'

set :lock, true
#set :default_content, :owl
LOGGER = Logger.new(STDERR)

get '/?' do
	[ url_for('/lazar', :full), url_for('/fminer', :full) ].join("\n")
end
