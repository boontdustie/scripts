require 'pinboard'
require 'netrc'
require 'pry'

links = Array.new
link_file = ENV['HOME'] + "/git/me/org/todo/links.org"
lf = File.open(link_file, "r").read

File.open(ENV['HOME'] + "/git/me/org/todo/links-archive.org" , "a") do |alf|
  lf.each_line do |line|
    if line.include?("[[")
      parts = line.split("[[")[1].split("][")

      link = if parts[0].include?("#")
               parts[0].split("#")[1]
             else
               parts[0]
             end

      title = parts[1].gsub("]]", '')
    else
      link = line.gsub("* LINK ", "")
      title = link
    end
    links << [link, title]

    alf.puts line # Archive the links
  end
end

# Login to pinboard
config = File.open(ENV['HOME'] + '/.netrc')
info = Netrc.read(config)
pb_info = info["www.pinboard.com"]
client = Pinboard::Client.new(token: pb_info.login)

# Add to pinboard
links.each do |link|
  client.add(url: link[0], description: link[1])
end

# Clear the links file
File.open(link_file, 'w') { |file| file.truncate(0) }
