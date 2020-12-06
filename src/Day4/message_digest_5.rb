# Created by Dheeraj Dhall - 12/05/20

require 'digest'
require '../common/file_reader'

# This class is used to get the hash using the MD5 algorithm
class MessageDigest5

    def initialize
        @file_data = FileReader.new.get_file_data("input.rtf")
    end

    # This message return the smallest number that when appended with the number provided
    # gives a hash that has 5 leading zeroes
    def get_number_that_forms_hash_with_5_leading_zeroes
        num = 0

        while true
            str = @file_data + num.to_s
            hash = Digest::MD5.hexdigest str
            if hash.match(/^[0]{5}/)
                return num
            end
            num += 1
        end
    end

    # This message return the smallest number that when appended with the number provided
    # gives a hash that has 6 leading zeroes
    def get_number_that_forms_hash_with_6_leading_zeroes
        num = 0

        while true
            str = @file_data + num.to_s
            hash = Digest::MD5.hexdigest str
            if hash.match(/^[0]{6}/)
                return num
            end
            num += 1
        end
    end
end

md5 = MessageDigest5.new
puts md5.get_number_that_forms_hash_with_5_leading_zeroes
puts md5.get_number_that_forms_hash_with_6_leading_zeroes