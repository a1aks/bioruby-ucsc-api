#
# = hg18/ucsc.rb
# Copyright::   Cioyrught (C) 2011
#               MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# Copyright::   Copyright (C) 2008
#               Jan Aerts <jan.aerts@gmail.com>
# License::     Ruby's

base = "#{File.dirname(__FILE__)}/hg18"
require "#{base}/db_connection"
require "#{base}/activerecord"

module Bio
  module Ucsc
    module Hg18
      base = "#{File.dirname(__FILE__)}/hg18"
      # Reference sequence retrieval via the 2bit file
      autoload :Reference,    "#{base}/reference"
      # group: Mapping and Sequencing Tracks ----------
      #
      ## track: Chromosome Band
      autoload :CytoBand,     "#{base}/cytoband"
      ## track: STS Markers
      autoload :StsMap,       "#{base}/stsmap"
      autoload :FishClones,   "#{base}/fishclones"
      autoload :StsAlias,     "#{base}/stsalias"
      autoload :StsInfo2,     "#{base}/stsinfo2"
      ## track: FISH Clones
             # :FishClones
      autoload :All_Bacends,  "#{base}/all_bacends"
      autoload :BacEndPairs,  "#{base}/bacendpairs"
      autoload :ClonePos,     "#{base}/clonepos"
      autoload :Seq,          "#{base}/seq"
             # :StsAlias
             # :StsInfo2
             # :StsMap
      ## track: Recomb Rate
      autoload :RecombRate,   "#{base}/recombrate"
      ## track: Map Contigs
      autoload :CtgPos,       "#{base}/ctgpos"
      ## track: Assembly
      autoload :Gold,           "#{base}/gold"
             # :ClonePos
             # :FishClones
      autoload :Hg18ContigDiff, "#{base}/hg18contigdiff"
             # :Seq
      ## track: Gap
      autoload :Gap,            "#{base}/gap"
      ## track: Coverage
             # :ClonePos
             # :FishClones
             # :Seq
      ## track: BAC End Pairs
             # :BacEndPairs
             # :All_Bacends
             # :FishClones
      ## track: Fosmid End Pairs
      autoload :FosEndPairs,    "#{base}/fosendpairs"
      autoload :All_Fosends,    "#{base}/all_fosends"
      ## track: GC Parcent
      autoload :Gc5Base,        "#{base}/gc5base"
      ## track: Hg19 Dif
             # :Hg18ContigDiff
      ## track: Wiki Track
      autoload :Hgcentral_WikiTrack,      "#{base}/hgcentral_wikitrack"


      autoload :RefGene,      "#{base}/refgene"
      autoload :Dgv,          "#{base}/dgv"
      autoload :CnpIafrate2,  "#{base}/cnpiafrate2"
      autoload :CnpLocke,     "#{base}/cnplocke"
      autoload :CnpRedon,     "#{base}/cnpredon"
      autoload :CnpSebat2,    "#{base}/cnpsebat2"
      autoload :CnpSharp2,    "#{base}/cnpsharp2"
      autoload :Rmsk,         "#{base}/rmsk.rb"
    end
  end
end
