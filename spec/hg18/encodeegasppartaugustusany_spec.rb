require 'bio-ucsc'
describe "Bio::Ucsc::Hg18::EncodeEgaspPartAugustusAny" do 

  describe "#find_by_interval" do
    context "given range chr1:1-2,000,000" do
      it 'returns a record (r.chrom == "chr11")' do
        Bio::Ucsc::Hg18::DBConnection.default
        Bio::Ucsc::Hg18::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr11:1-2,000,000")
        r = Bio::Ucsc::Hg18::EncodeEgaspPartAugustusAny.find_by_interval(i)
        r.chrom.should == "chr11"
      end
    end
  end

end
