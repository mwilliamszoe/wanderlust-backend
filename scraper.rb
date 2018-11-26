#! /usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

# #Fetch and parse HTML document
# doc = Nokogiri::HTML(open("https://web.archive.org/web/20160227204808/http://flatironschool.com/team"))

# puts doc
# puts doc.css(".text-block.text-block--secondary").text
# doc.css('nav ul.menu li a', 'article h2').each do |link|
#   puts link.content
# end

# puts "### Search for nodes by xpath"
# doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
#   puts link.content
# end

# puts "### Or mix and match."
# doc.search('nav ul.menu li a', '//article//h2').each do |link|
#   puts link.content
# end

html = open("https://web.archive.org/web/20160227204808/http://flatironschool.com/team")
doc = Nokogiri::HTML(html)
 
instructors = doc.css("#instructors .team-holder .person-box")

instructors.each do |instructor| 
    puts "Flatiron School <3 " + instructor.css("h2").text
  end