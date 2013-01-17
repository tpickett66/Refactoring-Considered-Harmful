class ISASegmentIdentifier
  attr_reader :file_contents
  ISA_SEGMENT_LENGTH = 105
  def initialize(file_contents)
    @file_contents = file_contents
  end

  def find_indices
    isa_indices = [0]
    found_index = 0
    while found_index
      found_index = next_index(isa_indices.last)
      isa_indices << found_index
    end
    isa_indices.compact
  end

  private

  def regex
    delimeter = file_contents[ISA_SEGMENT_LENGTH, 1]
    /[#{delimeter}]?ISA([\*\|])0[0|3]\1.{10}\1[0][0|1]\1.{10}\1.{2}\1.{15}
    \1.{2}\1.{15}\1\d{6}\1\d{4}\1.\1\d{5}\1.{9}\1[0|1]\1[P|T]\1.#{delimeter}/x
  end

  def next_index(last_idx)
    found_index = file_contents.index(regex,last_idx + ISA_SEGMENT_LENGTH)
    if !found_index.nil? && file_contents[found_index,1] != 'I'
      found_index += 1
    end
    found_index
  end
end

