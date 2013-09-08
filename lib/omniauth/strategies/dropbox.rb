require 'omniauth-oauth2'

module OmniAuth
	module Strategies
		class DropboxOAuth2 < OmniAuth::Strategies::OAuth2
			option :name, "dropbox_oauth2"

			option :client_options, {
				:site => "https://api.dropbox.com",
				:authorize_url => 'https://www.dropbox.com/1/oauth2/authorize',
				:token_url => 'https://api.dropbox.com/1/oauth2/token'
			}

			uid { raw_info['uid'] }

			info do
				{
					:name => raw_info['display_name'],
					:email => raw_info['email']
				}
			end

			extra do
				{
					'raw_info' => raw_info
				}
			end

			def raw_info
				@raw_info ||= access_token.get('/1/account/info').parsed
			end
		end
	end
end