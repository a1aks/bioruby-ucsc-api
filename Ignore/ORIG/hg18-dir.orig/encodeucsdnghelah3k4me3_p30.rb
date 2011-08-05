# -*- coding: utf-8 -*-
# = hg18/encodeucsdnghelah3k4me3_p30.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# LI Ng gIF ChIP - Ludwig Institute/UCSD ChIP-chip NimbleGen - Gamma
# Interferon Experiments
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class EncodeUcsdNgHeLaH3K4me3_p30 < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'encodeUcsdNgHeLaH3K4me3_p30'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio