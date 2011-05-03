require 'bio-ucsc'
describe "Bio::Ucsc::Hg19::UMassBrainHistonePeaksSample" do 

  describe "#find_by_interval" do
    context 'given range chr1:1-1,000,000' do
      it 'returns a record with column accessors' do
        Bio::Ucsc::Hg19::DBConnection.default
        Bio::Ucsc::Hg19::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-1,000,000")
        r = Bio::Ucsc::Hg19::UMassBrainHistonePeaksSample.find_by_interval(i)
        r.chrom.should == "chr1"
      end
    end
  end

end
