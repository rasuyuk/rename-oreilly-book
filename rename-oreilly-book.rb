#!/usr/bin/env ruby

require 'fileutils'
require 'rubygems'
require 'open-uri'
require 'json'

OREILLY_URL='http://www.oreilly.co.jp/books/%s/biblio.json'

def main(src)
# 1. create dir
    if !File::exists?("./dist")
        Dir::mkdir("./dist")
    end
# 2. get isbn from src
    isbn = src.split('oreilly-')[1].gsub(/-|e/,"").split('.')[0]
#    puts "jsbn:"+isbn
# 3. load json from oreilly
    biblio = JSON.parser.new(open(OREILLY_URL%isbn).string).parse
    dist = "./dist/%s.pdf" % (biblio["title"].gsub(':',''))
# 4. copy and rename pdf
    FileUtils.cp(src, dist)
    puts src+"->"+dist
end

if $0 == __FILE__
    if (ARGV.size() < 1)
        puts "usage: %s <downloaded_file>" % __FILE__
    else
        main(ARGV[0])
    end
end
