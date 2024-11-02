#!/bin/bash

base_url="https://physionet.org/files/ptb-xl/1.0.3/records500"
numery=(
135
146
164
167
186
485
508
528
541
554
564
613
636
637
672
731
829
854
919
941
1150
1384
1419
1427
1429
1436
1520
1537
1621
1633
1742
1817
1855
1894
1902
1927
1944
1951
2002
2004
2008
2020
2033
2050
2062
2101
2114
2120
2155
2160
2207
2276
2468
2487
2513
2520
2525
2534
2555
2572
2576
2582
2690
2725
2735
2795
2825
2899
2900
2922
2956
2962
2964
3019
3181
3202
3249
3260
3290
3346
3484
3493
3518
3528
3531
3555
3575
3590
3636
3772
3786
3792
3862
3883
3956
4009
4052
4072
4081
4195
4307
4316
4352
4359
4509
4521
4567
4578
4593
4629
4651
4656
4670
4732
4737
4745
4750
4755
4781
4819
4839
4857
4869
4881
4886
4964
4991
5017
5048
5051
5061
5108
5149
5157
5205
5218
5280
5340
5341
5342
5351
5362
5366
5384
5388
5407
5417
5441
5474
5501
5522
5538
5554
5569
5571
5575
5594
5598
5623
5625
5646
5647
5709
5712
5772
5775
5807
5885
5965
6015
6048
6073
6130
6132
6177
6210
6297
6359
6410
6445
6460
6521
6538
6551
6628
6631
6633
6680
6708
6766
6801
6816
6965
6974
7003
7019
7024
7025
7067
7116
7168
7199
7222
7223
7246
7261
7300
7302
7303
7314
7367
7374
7431
7438
7442
7515
7536
7552
7582
7595
7601
7692
7697
7699
7743
7774
7785
7798
7810
7823
7946
7987
8043
8125
8139
8231
8238
8273
8283
8323
8349
8350
8401
8404
8419
8442
8450
8515
8566
8588
8604
8616
8637
8677
8726
8728
8745
8769
8787
8803
8814
8820
8864
8881
8901
8944
8999
9012
9016
9021
9045
9055
9059
9068
9086
9101
9102
9125
9141
9166
9173
9289
9295
9361
9388
9425
9435
9509
9519
9520
9525
9543
9586
9588
9640
9665
9705
9715
9791
9811
9827
9828
9834
9887
9899
9902
9915
9935
9985
9986
9990
10001
10044
10074
10139
10228
10310
10353
10478
10517
10529
10538
10568
10625
10801
10838
10849
10852
10890
10902
10908
10918
10934
10949
11006
11030
11031
11037
11070
11085
11094
11108
11133
11150
11176
11191
11251
11296
11376
11443
11506
11544
11550
11591
11630
11643
11650
11682
11686
11715
11716
11743
11770
11787
11812
11859
11883
11892
11958
12035
12047
12063
12106
12138
12225
12242
12281
12286
12288
12333
12335
12350
12381
12393
12421
12433
12510
12586
12587
12593
12708
12804
12848
12865
12903
12923
12974
12998
13012
13016
13019
13020
13044
13064
13068
13101
13122
13143
13154
13201
13216
13230
13248
13253
13269
13287
13318
13327
13369
13489
13495
13530
13532
13561
13635
13672
13679
13684
13729
13730
13775
13800
13825
13847
13873
13954
13989
14017
14037
14053
14054
14074
14091
14183
14224
14331
14361
14364
14384
14436
14441
14507
14537
14578
14585
14688
14760
14808
14837
14894
14896
14900
14952
15002
15024
15064
15081
15086
15152
15168
15177
15178
15187
15188
15220
15231
15246
15255
15268
15276
15305
15325
15335
15368
15384
15390
15418
15458
15459
15496
15508
15523
15597
15670
15691
15696
15749
15805
15807
15824
15840
15846
15858
15862
15881
15892
15964
15966
16007
16010
16044
16138
16224
16262
16272
16297
16327
16342
16440
16467
16535
16549
16573
16604
16658
16681
16717
16736
16757
16789
16790
16807
16830
16845
16900
16909
16917
16918
16922
16937
17011
17016
17030
17034
17035
17040
17052
17076
17077
17079
17152
17182
17233
17242
17263
17267
17276
17295
17316
17323
17393
17407
17446
17452
17477
17488
17497
17521
17549
17569
17582
17705
17736
17767
17790
17802
17844
17889
17952
17959
17983
18019
18057
18092
18100
18124
18165
18241
18252
18255
18279
18321
18328
18349
18358
18422
18445
18478
18479
18480
18525
18528
18646
18655
18681
18692
18706
18715
18719
18732
18752
18754
18770
18772
18788
18810
18811
18812
18817
18844
18852
18856
18917
18986
18994
19029
19047
19062
19073
19097
19102
19127
19156
19157
19243
19263
19325
19342
19351
19368
19375
19388
19439
19454
19459
19488
19509
19556
19562
19592
19603
19613
19617
19647
19651
19665
19704
19719
19730
19754
19779
19864
19870
19873
19911
19935
19938
19993
20002
20041
20068
20077
20084
20103
20170
20186
20202
20234
20240
20272
20307
20311
20315
20327
20328
20342
20409
20438
20451
20474
20507
20517
20519
20524
20531
20533
20544
20551
20571
20618
20620
20629
20640
20664
20667
20709
20717
20722
20734
20769
20815
20898
20910
20935
20946
20959
20963
20970
20972
20975
20985
20987
20988
21004
21010
21022
21040
21041
21045
21047
21049
21055
21065
21070
21116
21127
21138
21142
21143
21157
21175
21192
21226
21279
21304
21332
21338
21348
21398
21402
21409
21420
21427
21451
21472
21489
21515
21562
21574
21604
21627
21634
21665
21670
21718
21723
21734
21743
21780
21805
21828
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
