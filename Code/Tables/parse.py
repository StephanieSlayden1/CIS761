import sys

def main():
	main_file = sys.argv[1]
	fk_file = sys.argv[2]
	fk_values = {}
	line_number = 0
	with open(main_file) as mf:
		i = input("index of main file attribute: ")
		for line in mf:
			line_contents = line.split(',')
			fk_values[line_contents[i]] = line_number
			line_number += 1
	unmatched_values = {}
	line_number = 0
	with open(fk_file) as fk:
		i = input("index of fk file attribute: ")
		for line in fk:
			line_contents = line.split(',')
			temp = line_contents[i]
			if not temp in fk_values:
				unmatched_values[temp] = line_number
			line_number += 1
	f = open('temp_values.txt', 'w')
	for key, value in unmatched_values.iteritems():
#		print("The value " + key + " is in the file " + fk_file + " but not in " + main_file)
		print(key)
		f.write(key + "\n")
	print("Total unmatched values: " + str(len(unmatched_values)))

main()
