; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %n) {
  %_n2904 = alloca i64
  store i64 %n, i64* %_n2904
  %_id_n2905 = load i64, i64* %_n2904
  %_2906 = icmp eq i64 %_id_n2905, 0
  br i1 %_2906, label %_if2907, label %_merge2908
_if2907:
  ret i64 0
_merge2908:
  %_id_n2909 = load i64, i64* %_n2904
  %_2910 = icmp eq i64 %_id_n2909, 1
  br i1 %_2910, label %_if2911, label %_merge2912
_if2911:
  ret i64 1
_merge2912:
  %_id_n2916 = load i64, i64* %_n2904
  %_2917 = sub i64 %_id_n2916, 2
  %_2918 = call i64 @fibR(i64 %_2917)
  %_id_n2913 = load i64, i64* %_n2904
  %_2914 = sub i64 %_id_n2913, 1
  %_2915 = call i64 @fibR(i64 %_2914)
  %_2919 = add i64 %_2915, %_2918
  ret i64 %_2919
}

define i64 @fibI(i64 %n) {
  %_n2874 = alloca i64
  %_2875 = alloca i64
  %_2876 = alloca i64
  %_2890 = alloca i64
  store i64 %n, i64* %_n2874
  store i64 0, i64* %_2875
  store i64 1, i64* %_2876
  %_id_n2877 = load i64, i64* %_n2874
  %_2878 = icmp eq i64 %_id_n2877, 0
  br i1 %_2878, label %_if2880, label %_merge2881
_if2880:
  %_id_a2879 = load i64, i64* %_2875
  ret i64 %_id_a2879
_merge2881:
  %_id_n2882 = load i64, i64* %_n2874
  %_2883 = icmp eq i64 %_id_n2882, 1
  br i1 %_2883, label %_if2885, label %_merge2886
_if2885:
  %_id_b2884 = load i64, i64* %_2876
  ret i64 %_id_b2884
_merge2886:
  br label %_cond2899
_cond2899:
  %_id_n2887 = load i64, i64* %_n2874
  %_2888 = sub i64 %_id_n2887, 2
  %_2889 = icmp sgt i64 %_2888, 0
  br i1 %_2889, label %_if2898, label %_merge2900
_if2898:
  %_id_b2891 = load i64, i64* %_2876
  store i64 %_id_b2891, i64* %_2890
  %_id_a2893 = load i64, i64* %_2875
  %_id_b2892 = load i64, i64* %_2876
  %_2894 = add i64 %_id_b2892, %_id_a2893
  store i64 %_2894, i64* %_2876
  %_id_old2895 = load i64, i64* %_2890
  store i64 %_id_old2895, i64* %_2875
  %_id_n2896 = load i64, i64* %_n2874
  %_2897 = sub i64 %_id_n2896, 1
  store i64 %_2897, i64* %_n2874
  br label %_cond2899
_merge2900:
  %_id_b2902 = load i64, i64* %_2876
  %_id_a2901 = load i64, i64* %_2875
  %_2903 = add i64 %_id_a2901, %_id_b2902
  ret i64 %_2903
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2863 = alloca i64
  %_argv2864 = alloca { i64, [0 x i8*] }*
  %_2865 = alloca i64
  store i64 %argc, i64* %_argc2863
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2864
  store i64 1, i64* %_2865
  %_2868 = call i64 @fibI(i64 12)
  %_2869 = icmp eq i64 %_2868, 144
  %_2866 = call i64 @fibR(i64 12)
  %_2867 = icmp eq i64 %_2866, 144
  %_2870 = and i1 %_2867, %_2869
  br i1 %_2870, label %_if2871, label %_merge2872
_if2871:
  store i64 0, i64* %_2865
  br label %_merge2872
_merge2872:
  %_id_val2873 = load i64, i64* %_2865
  ret i64 %_id_val2873
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
