# -*- coding: utf-8 -*-
# = hg18/encodeyalechipstat1helabingrensig.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# Yale STAT1 Sig - Yale ChIP-chip (STAT1 ab, HeLa cells) Signal
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class EncodeYaleChIPSTAT1HeLaBingRenSig < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'encodeYaleChIPSTAT1HeLaBingRenSig'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio