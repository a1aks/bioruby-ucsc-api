#!/usr/local/bin/ruby-1.9

require 'erb'
require 'fileutils'

# tables "*Sig" and "*OverlapSignal" are pointer tables containing
# single records. These are ommited.

TABLES = %w(
wgEncodeOpenChromFaireGm12878Pk
wgEncodeOpenChromFaireH1hescPk
wgEncodeOpenChromFaireK562Pk
wgEncodeOpenChromFaireK562NabutPk
wgEncodeOpenChromFaireK562OhureaPk
wgEncodeOpenChromFaireHelas3Pk
wgEncodeOpenChromFaireHelas3Ifna4hPk
wgEncodeOpenChromFaireHelas3Ifng4hPk
wgEncodeOpenChromFaireHepg2Pk
wgEncodeOpenChromFaireHuvecPk
wgEncodeOpenChromFaireA549Pk
wgEncodeOpenChromFaireAstrocyPk
wgEncodeOpenChromFaireGm12891Pk
wgEncodeOpenChromFaireGm12892Pk
wgEncodeOpenChromFaireGm18507Pk
wgEncodeOpenChromFaireGm19239Pk
wgEncodeOpenChromFaireGlioblaPk
wgEncodeOpenChromFaireHtr8Pk
wgEncodeOpenChromFaireMcf7HypoxlacPk
wgEncodeOpenChromFaireMedulloPk
wgEncodeOpenChromFaireNhbePk
wgEncodeOpenChromFaireNhekPk
wgEncodeOpenChromFairePanisletsPk
wgEncodeOpenChromFaireUrotsaPk
wgEncodeOpenChromFaireUrotsaUt189Pk
)

temp_spec = "template_spec.txt"
temp_auto = "template_auto.txt"
temp_main = "template_main.txt"

FileUtils.mkdir_p("Specs") unless FileTest.exist?("Specs")
FileUtils.mkdir_p("Scripts") unless FileTest.exist?("Scripts")

TABLES.each do |tab|
  table_name  = tab
  klass_name  = tab[0].upcase << tab[1..-1]
  script_name = tab.downcase

  open("Specs/#{script_name}_spec.rb", "w") do |writer|
    erb = ERB.new File.read(temp_spec)
    writer.puts erb.result binding
  end

  open("Scripts/#{script_name}.rb", "w") do |writer|
    erb = ERB.new File.read(temp_main)
    writer.puts erb.result binding
  end

end

open("autoload_snippet.rb", 'w') do |writer|
  writer.puts "      ## track: UNC FAIRE"
  TABLES.each do |tab|
    table_name  = tab
    klass_name  = tab[0].upcase << tab[1..-1]
    script_name = tab.downcase
    erb = ERB.new File.read(temp_auto)
    writer.puts erb.result binding
  end
end
