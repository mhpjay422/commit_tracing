RSpec.describe Pry::Warning do
  describe "#warn" do
    it "gives a warning with file and line" do
      expect(Kernel).to receive(:warn).with(
        "#{__FILE__}:#{__LINE__ + 2}: warning: danger"
      )
      described_class.warn('danger')
    end
  end
end
