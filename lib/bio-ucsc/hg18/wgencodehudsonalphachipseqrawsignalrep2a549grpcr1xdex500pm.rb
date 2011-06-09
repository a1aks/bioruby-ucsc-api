# -*- coding: utf-8 -*-
# = hg18/wgencodehudsonalphachipseqrawsignalrep2a549grpcr1xdex500pm.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# HAIB TFBS - ENCODE Transcription Factor Binding Sites by ChIP-seq
# from HudsonAlpha Institute
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class WgEncodeHudsonalphaChipSeqRawSignalRep2A549GrPcr1xDex500pm < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'wgEncodeHudsonalphaChipSeqRawSignalRep2A549GrPcr1xDex500pm'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio
