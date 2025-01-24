#!/bin/bash

base_url="https://physionet.org/files/ptb-xl/1.0.3/records500"
numery=(
11659
11542
11283
6863
11291
11424
15329
15333
17129
21051
21680
21682
4377
1049
9144
8465
13873
8048
6784
16077
17567
651
18097
7148
12678
18198
13787
14752
15973
5258
9933
5755
16732
19566
19561
17675
12162
8513
6691
15298
1012
3407
15877
7489
17626
6606
5526
5474
21364
10554
13160
19457
7280
7876
8554
10873
4712
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
