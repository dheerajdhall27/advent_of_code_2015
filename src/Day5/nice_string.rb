# Created by Dheeraj Dhall - 12/05/2020

require '../common/file_reader'

# This class is used to implement a way to tell if a string is nice
# A string is nice if 
# It contains at least three vowels (aeiou only), like aei, xazegov, or aeiouaeiouaeiou.
# It contains at least one letter that appears twice in a row, like xx, abcdde (dd), or aabbccdd (aa, bb, cc, or dd).
# It does not contain the strings ab, cd, pq, or xy, even if they are part of one of the other requirements.
class NiceString

    def initialize
        @file_data = FileReader.new.get_file_data("input.rtf")
    end

    # This method is used to get the number of nice strings
    def get_number_of_nice_strings
        str_arr = @file_data.split("\n")

        str_arr.each do |str|
            
        end
    end
end