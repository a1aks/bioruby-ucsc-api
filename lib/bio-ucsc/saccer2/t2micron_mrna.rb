# Copyright::
#  Copyright (C) 2011 MISHIMA, Hiroyuki <missy at be.to / hmishima at nagasaki-u.ac.jp> 
# License::     The Ruby licence (Ryby's / GPLv2 dual)
#
# this table is actually separated
# into "chr1_*", "chr2_*", etc. This class dynamically
# define *::Chr1_*, *::Chr2_*, etc. The
# find_by_interval calls an appropreate class automatically.

module Bio
  module Ucsc
    module SacCer2

      class T2micron_mrna < DBConnection
        set_table_name "2micron_mrna"
 
        def self.find_by_interval(interval, opt = {:partial => true})
          find_first_or_all_by_interval(interval, :first, opt)
        end
        
        def self.find_all_by_interval(interval, opt = {:partial => true})
          find_first_or_all_by_interval(interval, :all, opt)
        end

        def self.find_first_or_all_by_interval(interval, first_all, opt)
          zstart = interval.zero_start
          zend   = interval.zero_end

          if opt[:partial] == true
            where = <<-SQL
    tName = :chrom
AND bin in (:bins)
AND ((tStart BETWEEN :zstart AND :zend)
 OR (tEnd BETWEEN :zstart AND :zend)
 OR (tStart <= :zstart AND tEnd >= :zend))
            SQL
          else
            where = <<-SQL
    tName = :chrom 
AND ((tStart BETWEEN :zstart AND :zend)
AND  (tEnd BETWEEN :zstart AND :zend))
            SQL
          end
          cond = {
            :chrom => interval.chrom,
            :bins  => Ucsc::UcscBin.bin_all(zstart, zend),
            :zstart => zstart,
            :zend => zend,}
          self.find(first_all,
                    { :select => "*",
                      :conditions => [where, cond], })
        end
      end # class

    end # module 
  end # module Ucsc
end # module Bio
