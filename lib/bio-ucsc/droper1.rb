#
# = AUTOMATIC Table Definition of the D. persimilis Oct. 2005 (Broad/droPer1) assembly
# Copyright::   Copyright (C) 2011
#               MISHIMA, Hiroyuki
#               <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#

require "#{File.dirname(__FILE__)}/droper1/db_connection"
require "#{File.dirname(__FILE__)}/table_class_detector"

module Bio
  module Ucsc
    module DroPer1
      CHROMS = %w() # manu 'super' contigs

      extend TableClassDetector

      base = "#{File.dirname(__FILE__)}/droper1"
    end
  end
end
