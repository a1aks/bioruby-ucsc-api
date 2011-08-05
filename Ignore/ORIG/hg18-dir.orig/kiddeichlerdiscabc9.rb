#
# = hg18/kiddeichlerdiscabc9.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# HGSV Discordant - HGSV Discordant Clone End Alignments 
#

module Bio
  module Ucsc
    module Hg18
      class KiddEichlerDiscAbc9 < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'kiddEichlerDiscAbc9'
        set_primary_key nil
      end
    end
  end
end