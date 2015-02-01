# Finder
Ruby script that takes a single regular expression as a command line argument and searches the current directory and all its subdirectories for 
1.) files with names that match the given regular expression and 
2.) files that have content that matches the given regular expression.

For files that have content matching the regular expression, it prints the filename and then every line (with line numbers) that match the regular expression.

How to run:
1.) Move into the directory containing the file "rfind.rb"
2.) type "ruby rfind.rb"
3.) if you are looking for files or folders matching the regex "chico.*", type rfind chico.*
