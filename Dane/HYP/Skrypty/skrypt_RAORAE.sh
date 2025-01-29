#!/bin/bash

base_url="https://physionet.org/files/ptb-xl/1.0.3/records500"
numery=(
199
222
626
857
943
1228
1611
1670
1785
1819
2123
2952
3269
3380
3803
4013
4310
4493
4863
4995
5231
5456
5625
5955
5966
6285
6380
6428
6794
6918
7310
7333
7485
7737
7763
8177
8272
8877
9237
9887
10236
10456
10753
10765
10923
11025
11123
11160
11431
11869
12990
13217
13421
13437
13702
13861
14060
14173
14239
14419
14448
14733
15181
16039
16263
16895
16938
18550
18554
18635
18642
18772
18809
18845
19671
19686
20196
20895
21050
21368
21629
21792
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
