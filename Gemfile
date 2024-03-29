source 'https://rubygems.org'

# Ruby Version on Heroku
ruby '1.9.3'

# Puma (App Server)
gem 'puma', '>= 2.0.0.b4'

# Rails
gem 'rails', '3.2.11'

# Postgres Database Connector
gem 'pg'

# jQuery Rails (jQuery Adapter for Rails)
gem 'jquery-rails'

# High Voltage (Static Pages)
gem 'high_voltage'

# Slim (Templating)
gem 'slim-rails'

# Strong parameters (Mass assignment protection)
gem 'strong_parameters'

# Friendly Id (Human-Readable IDs for ActiveRecord Models)
gem 'friendly_id'

# Redcarpet (Markdown Parser)
gem 'redcarpet'

# Figaro (Managing credentials)
gem 'figaro'

# New Relic (Server Monitoring)
gem 'newrelic_rpm'

# Devise (User Authentication)
gem 'devise'

# Pundit (Authorization)
gem 'pundit'

# Dynamic Form (Form validation)
gem 'dynamic_form'

# Omniauth for Facebook and Twitter (oAuth Authentication)
# gem 'omniauth-twitter'
# gem 'omniauth-facebook'

# Sidekiq & Sinatra (for Sidekiq Web Interface)
# gem 'sidekiq'
# gem 'sinatra', :require => false

# Cache Digests (Watch Progress of this gem!)
# gem 'cache_digests'

# HTTPClient (MT-Safe HTTP Client)
# gem 'httpclient'

# Production Gems
group :production do
  # Memcached on Heroku
  gem 'memcachier'
  gem 'dalli'
end

# Gems used only for assets and not required
#   in production environments by default.
group :assets do
  # Stylesheets
  # Sass
  gem 'sass', '>= 3.2.1'
  gem 'sass-rails'

  # Compass
  gem 'compass-rails'

  # Bourbon (SASS Mixins)
  gem 'bourbon'

  # Neat (Semantic Grids)
  gem 'neat'

  # Javascripts
  gem 'coffee-rails'
  gem 'uglifier'
end

# Development Gems
group :development do
  # Heroku (Custom Deployment Rake Tasks)
  gem 'heroku'
  # gem 'taps'    # for rake production:pull_db, has outdated dependencies
  # gem 'sqlite3' # for rake production:pull_db, has outdated dependencies

  # Annotate Models (Schema Info for Models and Routes)
  # master is currently 2.6.0.beta1; gem has not received updates in a while
  gem 'annotate', github: 'ctran/annotate_models'

  # Pry (IRB Replacement)
  gem 'pry-rails'
  gem 'pry-remote'

  # Letter Opener (Preview ActionMailer Emails in Development)
  gem 'letter_opener'

  # Quiet Assets (Mute Asset Log Messages in Development)
  gem 'quiet_assets'

  # Bullet (Eager Loading Notification)
  gem 'bullet'

  # Better Errors (REPL Debug)
  gem 'better_errors'
  gem 'binding_of_caller'

  # Lol DBA (Find missing indexes)
  # gem 'lol_dba'
end
