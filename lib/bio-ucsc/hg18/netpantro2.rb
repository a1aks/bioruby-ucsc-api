# -*- coding: utf-8 -*-
# = hg18/netpantro2
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser 
# Chimp Chain/Net - Chimp (Mar. 2006 (CGSC 2.1/panTro2)), Chain and
# Net Alignments
#
# = ommitted dynamic method(s) due to the method name collision
#  :type

module Bio
  module Ucsc
    module Hg18
      class NetPanTro2 < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingTBin
        set_table_name 'netPanTro2'
        set_primary_key nil
        columns_hash.delete("type")
      end 
    end # module Hg18
  end # module Ucsc
end # Bio