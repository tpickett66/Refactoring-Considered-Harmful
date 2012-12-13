class EDIDigesterFactory
  def find_isa_segments(file_contents)
    return @_isa_indices unless @_isa_indices.nil?
    identifier =  ISASegmentIdentifier.new(file_contents)
    @_isa_indices = identifier.find_indices
  end
end

class ISASegmentIdentifier
  attr_reader :file_contents

  def initialize(file_contents)
    @file_contents = file_contents
  end

  def find_indices
    # big nasty method copied here...
  end
end
