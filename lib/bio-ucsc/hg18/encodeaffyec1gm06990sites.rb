# -*- coding: utf-8 -*-
# = hg18/encodeaffyec1gm06990sites.rb
# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki
#                <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# = Table desfription in UCSC Table Browser
# Affy EC Sites - Affymetrix ENCODE Extension Transcription Sites
#
# = ommitted dynamic method(s) due to the method name collision
#  none

module Bio
  module Ucsc
    module Hg18
      class EncodeAffyEc1GM06990Sites < DBConnection
        extend Bio::Ucsc::Hg18::QueryUsingChromBin
        set_table_name 'encodeAffyEc1GM06990Sites'
        set_primary_key nil
      end 
    end # module Hg18
  end # module Ucsc
end # Bio
