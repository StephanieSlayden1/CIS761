import sys

def main():
	file = sys.argv[1]
	new_file = open('new_actor_movie.csv', 'w')
	with open(file) as mf:
                for line in mf:
			line_contents = line.split(',')
			temp = line_contents[0]
			temp1 = line_contents[1]
			new_file.write(temp.strip() + ',' + temp1.strip() + '\n')

main()
