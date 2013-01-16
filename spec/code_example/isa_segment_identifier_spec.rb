require 'spec_helper'

describe ISASegmentIdentifier do
  # isa segments appear at 0,156 and 324
  let(:read_contents){ "ISA*00*          *00*          *ZZ*MSBA           *30*431754897      *111102*1437*!*00501*000000689*1*T*:~GS*HC*MSBA*431754897*20111102*1437*1*X*005010X222~ISA*00*          *00*          *ZZ*MSBA           *30*431754897      *111102*1437*!*00501*000000689*1*T*:~GS*HC*MSBA*431754897*20111102*1437*1*X*005010X222~NM1*1*ISAAC~ISA|00|          |00|          |30|431754897      |ZZ|MSBA           |120110|0925|<|00501|000001722|0|P|!~" }

  let(:identifier){ ISASegmentIdentifier.new(read_contents) }

  before do
    @indices = identifier.find_indices
  end
  let(:indices){ identifier.find_indices }

  it "must return an array without nils" do
    indices.compact.size.must_equal indices.size
  end

  it "must return an array in ascending order" do
    indices.sort.must_equal indices
  end

  it "must include the first isa segment's index" do
    indices.must_include(0)
  end

  it "must include the second ISA segment's index" do
    puts indices.inspect unless indices.include?(156)
    indices.must_include(156)
  end

  it "must include the third ISA segment's index" do
    indices.must_include(324)
  end

  it "must not include the index of the name ALISA" do
    indices.wont_include(429)
  end

  it "must not include the index of the name ISAAC" do
    puts indices.inspect if indices.include?(318)
    indices.wont_include(318)
  end
end
