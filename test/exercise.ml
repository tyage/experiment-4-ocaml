open OUnit2;;

let ex_2_6_1 =
  let test1 _ = assert_equal (Ex_2_6_1.dollar_to_yen 100.0) 11212 in
  let test2 _ = assert_equal (Ex_2_6_1.dollar_to_yen 49.0) 5494 in
  "ex_2_6_1">:::
  ["四捨">:: test1;
  "五入">:: test2]
;;

let ex_2_6_2 =
  let test1 _ = assert_equal (Ex_2_6_2.yen_to_dollar 10000) 89.19 in
  let test2 _ = assert_equal (Ex_2_6_2.yen_to_dollar 10002) 89.21 in
  "ex_2_6_2">:::
  ["四捨">:: test1;
  "五入">:: test2]
;;

let ex_2_6_3 =
  let test1 _ = assert_equal (Ex_2_6_3.say_yen 100.0) "100. dollars are 11212 yen." in
  let test2 _ = assert_equal (Ex_2_6_3.say_yen 49.0) "49. dollars are 5494 yen." in
  "ex_2_6_3">:::
  ["四捨">:: test1;
  "五入">:: test2]
;;

let ex_2_6_4 =
  let cap _ = assert_equal (Ex_2_6_4.capitalize 'h') 'H' in
  let not_cap _ = assert_equal (Ex_2_6_4.capitalize '1') '1' in
  "ex_2_6_4">:::
  ["capitalize">:: cap;
  "not capitalize">:: not_cap]
;;

let ex_3_7_1 =
  let pow _ = assert_equal (Ex_3_7_1.pow 4.0 2) 16.0 in
  "ex_3_7_1">:::
  ["pow">:: pow]
;;

let ex_3_7_2 =
  let pow _ = assert_equal (Ex_3_7_2.pow 4.0 2) 16.0 in
  "ex_3_7_2">:::
  ["pow">:: pow]
;;

let ex_3_11 =
  let gcd _ = assert_equal (Ex_3_11.gcd 35 14) 7 in
  let comb _ = assert_equal (Ex_3_11.comb 5 2) 10 in
  let fib _ = assert_equal (Ex_3_11.fib_iter 10) 55 in
  let max_ascii _ = assert_equal (Ex_3_11.max_ascii "jvDzZe") 'z' in
  "ex_3_11">:::
  ["gcd">:: gcd;
  "comb">:: comb;
  "fib">:: fib;
  "max_ascii">:: max_ascii]
;;

let ex_4_1 =
  let pi = 4.0 *. atan 1.0 in
  let calc_pi _ = assert_equal (int_of_float ((Ex_4_1.integral sin 0.0 pi) +. 0.1)) 2 in
  "ex_4_1">:::
  ["calc_pi">:: calc_pi]
;;

let ex_4_4 =
  let avg = Ex_4_4.uncurry Ex_4_4.curried_avg in
  let calc_avg _ = assert_equal (avg (4.0, 5.3)) 4.65 in
  "ex_4_4">:::
  ["calc_avg">:: calc_avg]
;;

let ex_4_5 =
  let fib _ = assert_equal (Ex_4_5.fib 10) 55 in
  "ex_4_5">:::
  ["fib">:: fib]
;;

let ex_4_7 =
  let ret_y _ = assert_equal (Ex_4_7.ret_y 4 2) 2 in
  "ex_4_7">:::
  ["ret_y">:: ret_y]
;;

let ex_5_3 =
  let downfrom5to0 _ = assert_equal (Ex_5_3.downto0 5) [5; 4; 3; 2; 1; 0] in
  let concat _ = assert_equal (Ex_5_3.concat [[0; 3; 4]; [2]; [5; 0]; []]) [0; 3; 4; 2; 5; 0] in
  let zip_normal _ = assert_equal (Ex_5_3.zip [5; 3; 2] [7; 4; 0]) [(5, 7); (3, 4); (2, 0)] in
  let zip_diff_length _ = assert_equal (Ex_5_3.zip [5; 3; 2; 4; 4] [7; 4; 0]) [(5, 7); (3, 4); (2, 0)] in
  let rec length = function
    [] -> 0
    | _ :: rest -> 1 + length rest in
  let filter _ = assert_equal
    (Ex_5_3.filter (fun l -> length l = 3) [[1; 2; 3]; [4; 5]; [6; 7; 8]; [9]]) [[1; 2; 3]; [6; 7; 8]] in
  "ex_5_3">:::
  ["downfrom5to0">:: downfrom5to0;
  "concat">:: concat;
  "zip_normal">:: zip_normal;
  "zip_diff_length">:: zip_diff_length;
  "filter">:: filter;]
;;

let ex_5_4 =
  let map _ = assert_equal (Ex_5_4.answer [4; 5; 6]) (Ex_5_4.map Ex_5_4.f (Ex_5_4.map Ex_5_4.g [4; 5; 6])) in
  "ex_5_4">:::
  ["map">:: map]
;;

let ex_5_6 =
  let sort _ = assert_equal (Ex_5_6.quicker [7; 4; 9; 1; 2; 8] []) [1; 2; 4; 7; 8; 9] in
  "ex_5_6">:::
  ["sort">:: sort]
;;

let ex_6_2 =
  let one = Ex_6_2.OneMoreThan Ex_6_2.Zero in
  let two = Ex_6_2.OneMoreThan one in
  let three = Ex_6_2.OneMoreThan two in
  let four = Ex_6_2.OneMoreThan three in
  let five = Ex_6_2.OneMoreThan four in
  let six = Ex_6_2.OneMoreThan five in
  let int_of_nat _ = assert_equal (Ex_6_2.int_of_nat three) 3 in
  let mul _ = assert_equal (Ex_6_2.mul two three) six in
  let monus _ = assert_equal (Ex_6_2.monus six four) two in
  let monus_under_zero _ = assert_equal (Ex_6_2.monus two four) Ex_6_2.Zero in
  "ex_6_2">:::
  ["int_of_nat">:: int_of_nat;
  "mul">:: mul;
  "monus">:: monus;
  "monus_under_zero">:: monus_under_zero;]
;;

let ex_6_6 =
  let reflect_comptree = Ex_6_6.Br (1, Ex_6_6.Br (3, Ex_6_6.Br
    (7, Ex_6_6.Lf, Ex_6_6.Lf), Ex_6_6.Br (6, Ex_6_6.Lf, Ex_6_6.Lf)),
    Ex_6_6.Br (2, Ex_6_6.Br (5, Ex_6_6.Lf, Ex_6_6.Lf), Ex_6_6.Br (4, Ex_6_6.Lf, Ex_6_6.Lf))) in
  let reflect _ = assert_equal (Ex_6_6.reflect Ex_6_6.comptree) reflect_comptree in
  "ex_6_6">:::
  ["reflect">:: reflect;]
;;

let ex_6_9 =
  let shift _ = assert_equal (Ex_6_9.take 4 (Ex_6_9.shift 2 (Ex_6_9.from 0))) [1; 3; 5; 7] in
  let prime _ = assert_equal (Ex_6_9.prime (3000 + 9540)) 134503 in
  "ex_6_9">:::
  ["shift">:: shift;
  "prime">:: prime;]
;;

let ex_7_2 =
  let x = ref 334 in
  let _ = Ex_7_2.incr x in
  let incr _ = assert_equal !x 335 in
  "ex_7_2">:::
  ["incr">:: incr;]
;;

let ex_7_4 =
  let fact _ = assert_equal (Ex_7_4.fact_imp 5) 120 in
  "ex_7_4">:::
  ["fact">:: fact;]
;;

let ex_7_8 =
  let change1 _ = assert_equal (Ex_7_8.change ([50; 20; 10; 5; 2; 1], 43)) [20; 20; 2; 1] in
  let change2 _ = assert_equal (Ex_7_8.change ([5; 2], 16)) [5; 5; 2; 2; 2] in
  "ex_7_8">:::
  ["change1">:: change1;
  "change2">:: change2;]
;;

let _ =
  run_test_tt_main ex_2_6_1;
  run_test_tt_main ex_2_6_2;
  run_test_tt_main ex_2_6_3;
  run_test_tt_main ex_2_6_4;
  run_test_tt_main ex_3_7_1;
  run_test_tt_main ex_3_7_2;
  run_test_tt_main ex_3_11;
  run_test_tt_main ex_4_1;
  run_test_tt_main ex_4_4;
  run_test_tt_main ex_4_5;
  run_test_tt_main ex_4_7;
  run_test_tt_main ex_5_3;
  run_test_tt_main ex_5_4;
  run_test_tt_main ex_5_6;
  run_test_tt_main ex_6_2;
  run_test_tt_main ex_6_6;
(*
  (* this test is too slow so it is disabled now *)
  run_test_tt_main ex_6_9;
*)
  run_test_tt_main ex_7_2;
  run_test_tt_main ex_7_4;
  run_test_tt_main ex_7_8;
;;
