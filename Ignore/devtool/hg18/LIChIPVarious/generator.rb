#!/usr/local/bin/ruby-1.9

require 'erb'
require 'fileutils'

HEADER = "      ## track: LI ChIP Various"

TABLES = %w(
encodeUcsdChipRnapHela_f
encodeUcsdChipRnapThp1_f
encodeUcsdChipRnapImr90_f
encodeUcsdChipRnapHct116_f
encodeUcsdChipTaf250Hela_f
encodeUcsdChipTaf250Thp1_f
encodeUcsdChipTaf250Imr90_f
encodeUcsdChipTaf250Hct116_f
encodeUcsdChipAch3Imr90_f
encodeUcsdChipMeh3k4Imr90_f
encodeUcsdChipH3K27me3Suz12
encodeUcsdChipH3K27me3
)

temp_spec = "template_spec.txt"
temp_auto = "template_auto.txt"
temp_main = "template_main.txt"

FileUtils.mkdir_p("Specs") unless FileTest.exist?("Specs")
FileUtils.mkdir_p("Libs") unless FileTest.exist?("Libs")

TABLES.each do |tab|
  table_name  = tab
  klass_name  = tab[0].upcase << tab[1..-1]
  script_name = tab.downcase

  open("Specs/#{script_name}_spec.rb", "w") do |writer|
    erb = ERB.new File.read(temp_spec)
    writer.puts erb.result binding
  end

  open("Libs/#{script_name}.rb", "w") do |writer|
    erb = ERB.new File.read(temp_main)
    writer.puts erb.result binding
  end
end

open("autoload_snippet.rb", 'w') do |writer|
  writer.puts HEADER
  TABLES.each do |tab|
    table_name  = tab
    klass_name  = tab[0].upcase << tab[1..-1]
    script_name = tab.downcase
    erb = ERB.new File.read(temp_auto)
    writer.puts erb.result binding
  end
end