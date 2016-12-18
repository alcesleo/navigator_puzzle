require "minitest/spec"
require "minitest/autorun"
require "./navigator"

describe Navigator do
  let(:path) { "N5, S3, W4, N1, E9" }
  subject { Navigator.new }

  it "follows a path description" do
    subject.navigate(path)
    subject.position.must_equal Position.new(x: 5, y: 3)
  end
end
