#!/usr/bin/ruby
def display(array)
	print "  #{array[1]}:" #line number
 	for i in 2..array.length
 		print array[i] #contents in that line 
 	end
    print "\n" 
end
grep_result = `grep --include=\*.{txt,html,rb,erb,yml,js,css} -rinw * -e #{ARGV[0]}`
paths = `find * -iname "*#{ARGV[0]}*"`
puts "Files with names that matches <#{ARGV[0]}>"
valid_paths = paths.split("\n")
extension_array = ["rb" , "erb" , "js" , "css" , "html" ,"yml" , "txt"]
valid_paths.each { |path| 
	split_path = path.split('.')
	if extension_array.include? split_path.last.to_s #if the file name has the correct extension
		puts "  ./#{path}" 
	end 
	} unless valid_paths.empty?
puts "**************************************************"
puts "Files with content that matches <#{ARGV[0]}>"
grep_split = grep_result.split("\n")
files_array = []
grep_split.each { |string|
	split_array = string.split(":")
		unless files_array.include? split_array[0] 
			puts "--------------------------------------------------" unless files_array.empty? #don't print if this is the first time
			puts "./#{split_array[0]}" #file name
			files_array.push(split_array[0])
		end
		display(split_array) #displays contents of that file that match the grep command
} unless grep_split.empty?
