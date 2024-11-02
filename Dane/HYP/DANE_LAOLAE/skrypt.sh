#!/bin/bash

base_url="https://physionet.org/files/ptb-xl/1.0.3/records500"
numery=(
489
524
573
652
711
713
943
998
1189
1328
1471
1492
1575
1684
1694
1756
1784
1797
1805
1864
2229
2297
2324
2330
2428
2567
2588
2653
2957
2985
2999
3000
3006
3113
3142
3206
3250
3338
3449
3483
3729
4001
4049
4081
4107
4148
4538
4571
4575
4661
4776
4830
4872
4968
4995
5034
5052
5059
5062
5070
5229
5289
5343
5409
5450
5527
5546
5554
5560
5644
5685
5706
5801
5804
5872
5965
6070
6254
6275
6332
6422
6575
6685
6762
6851
6926
7036
7043
7063
7196
7226
7227
7234
7485
7508
7518
7598
7661
7686
7816
7857
7876
7997
8251
8272
8350
8404
8411
8487
8657
8675
8684
8799
8865
8877
8911
8946
8994
8996
9026
9063
9070
9248
9306
9347
9428
9467
9494
9545
9550
9629
9656
9663
9713
9813
9887
9913
9944
9951
10012
10045
10173
10248
10328
10365
10417
10419
10456
10481
10565
10566
10695
10861
10875
10908
10950
10963
10988
11085
11156
11203
11231
11303
11397
11409
11415
11441
11495
11542
11608
11676
11869
12078
12192
12236
12386
12636
12692
13064
13110
13222
13246
13278
13322
13369
13474
13515
13665
13670
13845
13890
13908
13946
14060
14111
14148
14354
14364
14399
14419
14467
14490
14493
14576
14650
14651
14707
14729
14815
14850
14875
14941
15230
15470
15519
15520
15577
15703
15718
16061
16190
16197
16200
16212
16366
16513
16549
16619
16694
16703
16783
16887
16922
16965
17016
17017
17052
17160
17339
17379
17445
17640
17802
17937
17995
18016
18029
18037
18052
18099
18293
18457
18468
18489
18552
18566
18607
18642
18746
18769
18772
18809
18845
18877
18986
19068
19157
19363
19374
19439
19479
19511
19561
19575
19592
19664
19668
19688
19737
19801
19816
19821
19837
19900
20106
20147
20226
20339
20524
20592
20595
20634
20673
20675
20850
20947
20950
20957
20989
20997
21035
21115
21152
21197
21224
21271
21313
21319
21390
21421
21450
21516
21670
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