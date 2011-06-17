require 'bio-ucsc'
describe "Bio::Ucsc::Hg18::EncodeBuFirstExonLiver" do 

  describe "#find_by_interval" do
    context "given range chr11:1-5,000,000" do
      it 'returns a record (r.chrom == "chr1")' do
        Bio::Ucsc::Hg18::DBConnection.default
        Bio::Ucsc::Hg18::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr11:1-5,000,000")
        r = Bio::Ucsc::Hg18::EncodeBuFirstExonLiver.find_by_interval(i)
        r.chrom.should == "chr11"
      end
    end
  end

end
