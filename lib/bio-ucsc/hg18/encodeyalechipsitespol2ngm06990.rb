# -*- coding: utf-8 -*-
# = hg18/encodeyalechipsitespol2ngm06990.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# Yale ChIP Sites - Yale ChIP-chip Sites 
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class EncodeYaleChipSitesPol2nGm06990 < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'encodeYaleChipSitesPol2nGm06990'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio