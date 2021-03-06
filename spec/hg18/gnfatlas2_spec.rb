require 'bio-ucsc'
describe "Bio::Ucsc::Hg18::GnfAtlas2" do 

  describe "#find_by_interval" do
    context "given range chr1:1-500,000" do
      it "returns an array of results" do
        Bio::Ucsc::Hg18::DBConnection.default
        Bio::Ucsc::Hg18::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-500,000")
        r = Bio::Ucsc::Hg18::GnfAtlas2.find_all_by_interval(i)
        r.should have(12).items
      end

      it "returns an array of results with column accessors" do
        Bio::Ucsc::Hg18::DBConnection.default
        Bio::Ucsc::Hg18::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-500,000")
        r = Bio::Ucsc::Hg18::GnfAtlas2.find_by_interval(i)
        r.chrom.should == "chr1"
      end
    end
  end

end
