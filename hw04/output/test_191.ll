; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %n) {
  %_n3955 = alloca i64
  store i64 %n, i64* %_n3955
  br label %_start3958
_start3958:
  %_id_n3956 = load i64, i64* %_n3955
  %_3957 = icmp eq i64 %_id_n3956, 0
  br i1 %_3957, label %_then3959, label %_else3960
_then3959:
  ret i64 0
_else3960:
  br label %_post3961
_post3961:
  br label %_start3964
_start3964:
  %_id_n3962 = load i64, i64* %_n3955
  %_3963 = icmp eq i64 %_id_n3962, 1
  br i1 %_3963, label %_then3965, label %_else3966
_then3965:
  ret i64 1
_else3966:
  br label %_post3967
_post3967:
  %_id_n3971 = load i64, i64* %_n3955
  %_3972 = sub i64 %_id_n3971, 2
  %_3973 = call i64 @fibR(i64 %_3972)
  %_id_n3968 = load i64, i64* %_n3955
  %_3969 = sub i64 %_id_n3968, 1
  %_3970 = call i64 @fibR(i64 %_3969)
  %_3974 = add i64 %_3970, %_3973
  ret i64 %_3974
}

define i64 @fibI(i64 %n) {
  %_n3921 = alloca i64
  %_3922 = alloca i64
  %_3923 = alloca i64
  %_3941 = alloca i64
  store i64 %n, i64* %_n3921
  store i64 0, i64* %_3922
  store i64 1, i64* %_3923
  br label %_start3927
_start3927:
  %_id_n3924 = load i64, i64* %_n3921
  %_3925 = icmp eq i64 %_id_n3924, 0
  br i1 %_3925, label %_then3928, label %_else3929
_then3928:
  %_id_a3926 = load i64, i64* %_3922
  ret i64 %_id_a3926
_else3929:
  br label %_post3930
_post3930:
  br label %_start3934
_start3934:
  %_id_n3931 = load i64, i64* %_n3921
  %_3932 = icmp eq i64 %_id_n3931, 1
  br i1 %_3932, label %_then3935, label %_else3936
_then3935:
  %_id_b3933 = load i64, i64* %_3923
  ret i64 %_id_b3933
_else3936:
  br label %_post3937
_post3937:
  br label %_start3949
_start3949:
  %_id_n3938 = load i64, i64* %_n3921
  %_3939 = sub i64 %_id_n3938, 2
  %_3940 = icmp sgt i64 %_3939, 0
  br i1 %_3940, label %_body3950, label %_else3951
_body3950:
  %_id_b3942 = load i64, i64* %_3923
  store i64 %_id_b3942, i64* %_3941
  %_id_a3944 = load i64, i64* %_3922
  %_id_b3943 = load i64, i64* %_3923
  %_3945 = add i64 %_id_b3943, %_id_a3944
  store i64 %_3945, i64* %_3923
  %_id_old3946 = load i64, i64* %_3941
  store i64 %_id_old3946, i64* %_3922
  %_id_n3947 = load i64, i64* %_n3921
  %_3948 = sub i64 %_id_n3947, 1
  store i64 %_3948, i64* %_n3921
  br label %_start3949
_else3951:
  %_id_b3953 = load i64, i64* %_3923
  %_id_a3952 = load i64, i64* %_3922
  %_3954 = add i64 %_id_a3952, %_id_b3953
  ret i64 %_3954
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3908 = alloca i64
  %_argv3909 = alloca { i64, [0 x i8*] }*
  %_3910 = alloca i64
  store i64 %argc, i64* %_argc3908
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3909
  store i64 1, i64* %_3910
  br label %_start3916
_start3916:
  %_3913 = call i64 @fibI(i64 12)
  %_3914 = icmp eq i64 %_3913, 144
  %_3911 = call i64 @fibR(i64 12)
  %_3912 = icmp eq i64 %_3911, 144
  %_3915 = and i1 %_3912, %_3914
  br i1 %_3915, label %_then3917, label %_else3918
_then3917:
  store i64 0, i64* %_3910
  br label %_post3919
_else3918:
  br label %_post3919
_post3919:
  %_id_val3920 = load i64, i64* %_3910
  ret i64 %_id_val3920
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
