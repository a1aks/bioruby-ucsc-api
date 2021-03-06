#!/usr/bin/env ruby
# D. simulans DroSim1 spec generator

SPEC_FILE = "../spec/drosim1_spec.rb"
KLASS = "Bio::Ucsc::DroSim1"

TABLES = %w(
all_est
all_mrna
author
blastDm2FB
cds
cell
chainDm3
chainDm3Link
chromInfo
description
development
dmRefGene
est
estOrientInfo
extFile
gap
gbCdnaInfo
gbDelete_tmp
gbExtFile
gbLoaded
gbMiscDiff
gbSeq
gbStatus
gbWarn
gcPercent
geneName
geneid
genscan
genscanPep
gold
grp
hgFindSpec
history
imageClone
intronEst
keyword
library
mrna
mrnaClone
mrnaOrientInfo
netDm3
organism
productName
refLink
refSeqStatus
refSeqSummary
rmsk
sex
simpleRepeat
source
tableDescriptions
tissue
trackDb
xenoMrna
xenoRefFlat
xenoRefGene
xenoRefSeqAli
)

def headup(str)
  (str[0..0].upcase + str[1..-1]) 
end

open(SPEC_FILE, 'w') do |fout|
  fout.puts <<"EOS"
require "bio-ucsc"
require "pp"

describe "#{KLASS}" do

  before(:all) do
    #{KLASS}::DBConnection.connect
  end

EOS

  TABLES.each do |table|
    next if table.start_with?('#')
    fout.puts <<"EOS"
  describe "#{KLASS}::#{headup(table)}" do
    context ".first" do
      it 'returns the first records' do
        result = #{KLASS}::#{headup(table)}.first
        pp result
        result.should be_true
      end
    end
  end 

EOS
  end

  fout.puts "end"
end

