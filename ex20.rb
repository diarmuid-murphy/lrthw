# Functions and Files

input_file = ARGV.first

def print_all(f)
	f.read
end

def rewind(f)
	f.seek(0)
end

def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the entire file:\n"
print_all(current_file)

puts "Now let's rewind, kind of like a VHS tape."
rewind(current_file)

puts "Let's print 3 lines:\n"

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)