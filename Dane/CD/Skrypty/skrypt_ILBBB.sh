#!/bin/bash

base_url="https://physionet.org/files/ptb-xl/1.0.3/records500"
numery=(
17351
11330
20749
13094
15838
1985
20077
4756
964
20214
282
13218
4143
14937
10301
7093
8860
17122
16794
5444
21439
15713
8375
883
16464
13222
13064
2795
14237
8371
17539
11557
20503
8657
9550
18769
20410
2823
5631
21601
18746
2653
8271
14897
17271
5768
16260
6045
13235
18831
4292
6426
16038
19657
9705
1982
20744
13433
685
18435
20092
8161
16661
423
15051
21326
10826
16845
9084
20812
12515
16610
12507
2705
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
