require "get_dropbox_access_token/version"
require 'dropbox_sdk'
require 'colored'

module GetDropboxAccessToken
  class << self
    def start
      app_key    = ask "App key: ".cyan
      app_secret = ask "App secret: ".cyan

      session = DropboxSession.new(app_key, app_secret)
      request_token = session.get_request_token
      authorize_url = session.get_authorize_url
      system('open', authorize_url) || puts("Access here: #{authorize_url}\nand...")

      ask "Press any key after authorization: ".red

      access_token = session.get_access_token

      puts "request_token key/secret : ".green + "#{request_token.key} / #{request_token.secret}"
      puts "access_token  key/secret : ".green + "#{access_token.key} / #{access_token.secret}"
    rescue => e
      puts e.to_s.red
    end

  private

     def ask(question)
      print question
      gets.strip
     end
  end
end
