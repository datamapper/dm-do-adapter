source 'http://rubygems.org'

DATAMAPPER = 'git://github.com/datamapper'
DM_VERSION = '~> 1.0.2'
DO_VERSION = '~> 0.10.2'

group :runtime do # Runtime dependencies (as in the gemspec)

  do_options = {}
  do_options[:git] = "#{DATAMAPPER}/do.git" if ENV['DO_GIT'] == 'true'

  gem 'data_objects',    DO_VERSION, do_options.dup
  gem 'dm-core',         DM_VERSION, :git => "#{DATAMAPPER}/dm-core.git"

end

group(:development) do # Development dependencies

  gem 'rake',            '~> 0.8.7'
  gem 'rspec',           '~> 1.3', :git => 'git://github.com/snusnu/rspec', :branch => 'heckle_fix_plus_gemfile'
  gem 'jeweler',         '~> 1.4'

end

group :datamapper do # We need this because we want to pin these dependencies to their git master sources

  if ENV['EXTLIB']
    gem 'extlib',        '~> 0.9.15', :git => "#{DATAMAPPER}/extlib.git", :require => nil
  else
    gem 'activesupport', '~> 3.0.0',  :git => 'git://github.com/rails/rails.git', :branch => '3-0-stable', :require => nil
  end

end

group :quality do # These gems contain rake tasks that check the quality of the source code

  gem 'metric_fu',       '~> 1.3'
  gem 'rcov',            '~> 0.9.7'
  gem 'reek',            '~> 1.2.7'
  gem 'roodi',           '~> 2.1'
  gem 'yard',            '~> 0.5'
  gem 'yardstick',       '~> 0.1'

end
