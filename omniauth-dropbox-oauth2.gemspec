# -*- encoding: utf-8 -*-
require File.dirname(__FILE__) + '/lib/omniauth/dropbox_oauth2/version'

Gem::Specification.new do |gem|
	gem.author        = 'Jonathan TRIBOUHARET'
	gem.email         = 'jonathan@code-n-go.com'
	gem.description   = 'Dropbox OAuth2 strategy for OmniAuth'
	gem.summary       = 'Dropbox OAuth2 strategy for OmniAuth'
	gem.homepage      = ''

	gem.files         = `git ls-files`.split("\n")
	gem.name          = 'omniauth-dropbox-oauth2'
	gem.require_paths = ["lib"]
	gem.version       = OmniAuth::DropboxOAuth2::VERSION

	gem.add_runtime_dependency 'omniauth-oauth2'
end
