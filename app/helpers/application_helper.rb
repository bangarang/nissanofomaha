module ApplicationHelper
	def process(csv_array)  # makes arrays of hashes out of CSV's arrays of arrays
	  result = []
	  return result if csv_array.nil? || csv_array.empty?
	  headerA = csv_array.shift             # remove first array with headers from array returned by CSV
	  headerA.map!{|x| x.downcase.to_sym }  # make symbols out of the CSV headers
	  csv_array.each do |row|               #    convert each data row into a hash, given the CSV headers
	    result << Hash[ headerA.zip(row).gsub(/\"/,'') ]  #    you could use HashWithIndifferentAccess here instead of Hash
	  end
	  return result
	end
end
