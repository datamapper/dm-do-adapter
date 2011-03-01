require 'pathname'

source 'http://rubygems.org'

SOURCE       = ENV.fetch('SOURCE', :git).to_sym
REPO_POSTFIX = SOURCE == :path ? ''                                : '.git'
DATAMAPPER   = SOURCE == :path ? Pathname(__FILE__).dirname.parent : 'http://github.com/datamapper'
DM_VERSION   = '~> 1.1.0.rc1'
DO_VERSION   = '~> 0.10.2'

group :runtime do

  do_options = {}
  do_options[:git] = "#{DATAMAPPER}/do#{REPO_POSTFIX}" if ENV['DO_GIT'] == 'true'

  gem 'data_objects', DO_VERSION, do_options.dup
  gem 'dm-core',      DM_VERSION, SOURCE => "#{DATAMAPPER}/dm-core#{REPO_POSTFIX}"

end

group :development do

  gem 'jeweler', '~> 1.5.2'
  gem 'rake',    '~> 0.8.7'
  gem 'rspec',   '~> 1.3.1'

end

group :quality do

  gem 'rcov',      '~> 0.9.7', :platforms => :mri_18
  gem 'yard',      '~> 0.5'
  gem 'yardstick', '~> 0.1'

end

group :datamapper do

  if ENV['EXTLIB']
    gem 'extlib', '~> 0.9.15', SOURCE => "#{DATAMAPPER}/extlib#{REPO_POSTFIX}", :require => nil
  else
    gem 'i18n',          '~> 0.5.0'
    gem 'activesupport', '~> 3.0.3', :require => nil
  end

end
