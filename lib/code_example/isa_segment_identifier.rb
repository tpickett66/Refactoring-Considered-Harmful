class ISASegmentIdentifier
  attr_reader :file_contents
  def initialize(file_contents)
    @file_contents = file_contents
  end

  def find_indices
    isa_indices = [0]
    delimeter = file_contents[105,1]
    regex = /[#{delimeter}]?ISA([\*\|])0[0|3]\1.{10}\1[0][0|1]\1.{10}\1.{2}\1.{15}
      \1.{2}\1.{15}\1\d{6}\1\d{4}\1.\1\d{5}\1.{9}\1[0|1]\1[P|T]\1.#{delimeter}/x
    until isa_indices.last.nil?
      found_index = file_contents.index(regex,isa_indices.last + 105)
      found_index += 1 if !found_index.nil? && file_contents[found_index,1] != "I"
      isa_indices << found_index
    end
    isa_indices.compact
  end
end
