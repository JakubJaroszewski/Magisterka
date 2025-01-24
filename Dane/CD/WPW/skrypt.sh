#!/bin/bash

base_url="https://physionet.org/files/ptb-xl/1.0.3/records500"
numery=(
17072
21399
15427
17074
15603
13956
16497
16843
4825
5028
7095
7291
9523
10922
10930
11035
11300
15156
15183
16332
16347
16428
18680
19147
19428
19430
19918
19920
20560
21316
21347
21380
21396
21731
4658
10869
15389
10246
13415
20956
9699
10266
19978
5303
6240
9795
9823
10053
11190
11889
12559
13339
14390
14411
14653
14881
17363
17557
17591
17885
18785
19330
19970
20416
20555
21362
21382
21201
2145
7046
)

for num in "${numery[@]}"; do
    num_length=${#num}
	if [ $num_length -eq 1 ]; then
		file_url="${base_url}/00000/0000${num}_hr.dat"
		file_url2="${base_url}/00000/0000${num}_hr.hea"
	elif [ $num_length -eq 2 ]; then
		file_url="${base_url}/00000/000${num}_hr.dat"
		file_url2="${base_url}/00000/000${num}_hr.hea"
    elif [ $num_length -eq 3 ]; then
		file_url="${base_url}/00000/00${num}_hr.dat"
		file_url2="${base_url}/00000/00${num}_hr.hea"
    elif [ $num_length -eq 4 ]; then
        folder_prefix="$(echo $num | cut -c1-1)"
		file_url="${base_url}/0${folder_prefix}000/0${num}_hr.dat"
		file_url2="${base_url}/0${folder_prefix}000/0${num}_hr.hea"
    elif [ $num_length -eq 5 ]; then
		folder_prefix="$(echo $num | cut -c1-2)"
		file_url="${base_url}/${folder_prefix}000/${num}_hr.dat"
		file_url2="${base_url}/${folder_prefix}000/${num}_hr.hea"
    else
       echo "Numer $num nie ma poprawnej liczby cyfr"
       continue
    fi
    echo "Pobieranie: $file_url"
    wget "$file_url"
	  echo "Pobieranie: $file_url2"
    wget "$file_url2"
done
