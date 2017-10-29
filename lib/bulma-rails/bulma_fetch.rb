# require 'thor'
# require 'json'
# require 'httpclient'

# @see https://github.com/argerim/select2-rails/blob/master/lib/select2-rails/source_file.rb
# class BulmaFetch < Thor
#   include Thor::Actions

#   desc "fetch source files"
#   def fetch
#     filtered_tags = fetch_tags
#     tag = select("", filtered_tags)
#     self.destination_root = "vendor/assets"
#     remote = "https://github.com/jgthms/bulma"

#     get "#{remote}/raw/#{tag}/bulma/bulma.sass", "stylesheets/bulma/bulma.sass"
#     get "#{remote}/raw/#{tag}/bulma/bulma/sass/", "stylesheets/bulma/bulma.sass"
#   end

#   private

#   def fetch_tags
#     response = JSON.parse(http_client.get('/'))
#     response.map{|tag| tag['name']}.sort
#   end

#   def http_client
#     @http_client ||= HTTPClient.new
#   end

#   def languages(tag)
#     response = JSON.parse(http_client.get("https://api.github.com/repos/jgthms/bulma/"))
#   end

#   def select msg, elements
#     elements.each_with_index do |element, index|
#       say(block_given? ? yield(element, index + 1) : ("#{index + 1}. #{element.to_s}"))
#     end
#     result = ask(msg).to_i
#     elements[result - 1]
#   end
# end