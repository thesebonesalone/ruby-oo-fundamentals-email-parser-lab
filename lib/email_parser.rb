# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(addresses)
        @addresses = addresses
    end
    attr_accessor :addresses
    def parse
        new_array = @addresses.split().each do |index|
            index.delete_suffix!(',')
        end
        new_array.uniq
    end
end
