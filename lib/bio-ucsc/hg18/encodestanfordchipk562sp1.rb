# -*- coding: utf-8 -*-
# = hg18/encodestanfordchipk562sp1.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# Stanf ChIP - Stanford ChIP-chip (HCT116, Jurkat, K562 cells; Sp1,
# Sp3 ChIP)
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class EncodeStanfordChipK562Sp1 < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'encodeStanfordChipK562Sp1'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio
