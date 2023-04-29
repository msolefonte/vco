import csv
import glob
import re


def natural_sort(lines):
    convert = lambda text: int(text) if text.isdigit() else text.lower()
    alphanum_key = lambda key: [convert(c) for c in re.split('([0-9]+)', key)]
    return sorted(lines, key=alphanum_key)


def sort_tsv(filename):
    print('[linter] Sorting file: ' + filename)
    input_file = csv.reader(open(filename, encoding="utf8"), delimiter="\t")

    i, header_rows, id_rows, rows = 0, [], [], []
    for line in input_file:
        formatted_line = '\t'.join(line) + '\n'
        if i < 2:
            header_rows.append(formatted_line)
        else:
            if line[0].isdigit():
                id_rows.append(formatted_line)
            else:
                rows.append(formatted_line)
        i += 1

    output_file = open(filename, 'w', encoding="utf8")
    output_file.writelines(header_rows)
    output_file.writelines(id_rows)
    output_file.writelines(natural_sort(rows))


def sort_all_tsv():
    print('[linter] Sorting all TSV files')
    path = "./db/**/*.tsv"
    files = glob.glob(path)

    for filename in files:
        sort_tsv(filename)


def main():
    sort_all_tsv()


main()
