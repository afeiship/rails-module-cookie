# Be sure to restart your server when you modify this file.

# Rails.application.config.session_store :cookie_store, key: '_rails-module-cookie_session'
Rails.application.config.session_store :cookie_store, key: "_rails-module-cookie_session_#{Rails.env}", domain: :all
