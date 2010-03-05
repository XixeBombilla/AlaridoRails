# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_alaridoRails_session',
  :secret      => '5ffd53f53cb518a3f2be64677df8172f5b3e23377accaa5523a3be1a6d1f444e8dea424f645dbaafd7060dbf65b3dc82be968c103182001a930b1785707cf194'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
