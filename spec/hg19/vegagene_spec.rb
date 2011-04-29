require 'bio-ucsc'
describe "Bio::Ucsc::Hg19::BegaGene" do 

  describe "#find_by_interval" do
    context "given range chr1:1-500,000" do
      it "returns an array of results" do
        Bio::Ucsc::Hg19::DBConnection.default
        Bio::Ucsc::Hg19::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-500,000")
        r = Bio::Ucsc::Hg19::VegaGene.find_all_by_interval(i)
        r.should have(29).items
      end

      it "returns an array of results with column accessors" do
        Bio::Ucsc::Hg19::DBConnection.default
        Bio::Ucsc::Hg19::DBConnection.connect
        i = Bio::GenomicInterval.parse("chr1:1-500,000")
        r = Bio::Ucsc::Hg19::VegaGene.find_by_interval(i)
        r.chrom.should == "chr1"
      end
    end
  end

end
