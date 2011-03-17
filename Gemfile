require 'pathname'

source 'http://rubygems.org'

SOURCE       = ENV.fetch('SOURCE', :git).to_sym
REPO_POSTFIX = SOURCE == :path ? ''                                : '.git'
DATAMAPPER   = SOURCE == :path ? Pathname(__FILE__).dirname.parent : 'http://github.com/datamapper'
DM_VERSION   = '~> 1.1.0'
DO_VERSION   = '~> 0.10.2'

do_options = {}
do_options[:git] = "#{DATAMAPPER}/do#{REPO_POSTFIX}" if ENV['DO_GIT'] == 'true'

gem 'data_objects', DO_VERSION, do_options.dup
gem 'dm-core',      DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-core#{REPO_POSTFIX}"

group :development do

  gem 'jeweler', '~> 1.5.2'
  gem 'rake',    '~> 0.8.7'
  gem 'rspec',   '~> 1.3.1'

end

platforms :mri_18 do
  group :quality do

    gem 'rcov',      '~> 0.9.9'
    gem 'yard',      '~> 0.6'
    gem 'yardstick', '~> 0.2'

  end
end
