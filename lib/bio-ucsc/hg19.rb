#
# = AUTOMATIC Table Definition of Hg19
# Copyright::   Copyright (C) 2011
#               MISHIMA, Hiroyuki
#               <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#

require "#{File.dirname(__FILE__)}/hg19/db_connection"
require "#{File.dirname(__FILE__)}/table_class_detector"

module Bio
  module Ucsc
    module Hg19
      extend TableClassDetector
      base = "#{File.dirname(__FILE__)}/hg19"

      # Hg19::Description has "id" colomn that is primary key
      autoload :Description, "#{base}/description"
      # Hg19::GbCdbaInfo has "id" colomn that is primary key
      autoload :GbCdnaInfo, "#{base}/gbcdnainfo"

    end
  end
end
