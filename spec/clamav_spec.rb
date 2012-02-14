require File.join(File.dirname(__FILE__), 'spec_helper.rb')

describe "A manifest with the ClamAV plugin" do

  before do
    @manifest = ClamAVManifest.new
  end

  describe "in general" do
    before(:each) do
      @manifest.clamav
    end

    it "should be executable" do
      @manifest.should be_executable
    end

    it "should include the clamav package" do
      @manifest.packages.keys.should include 'clamav'
    end

  end

end