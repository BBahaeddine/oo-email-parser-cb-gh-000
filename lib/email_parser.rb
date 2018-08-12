# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    # binding.pry
    return @emails.split(/[\s,]/).uniq!.reject!{|item| item.empty?}
  end
end

parser = EmailParser.new("bbouslama@outlook.com, bbouslama@outlook.com")
parser.parse