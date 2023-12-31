/* Generated by Yosys 0.32+51 (git sha1 6405bbab1, clang 14.0.0-1ubuntu1.1 -fPIC -Os) */

(* top =  1  *)
(* src = "mux7_1.v:3.1-27.10" *)
module MUX_7x1(i, s, y);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  (* src = "mux7_1.v:5.17-5.18" *)
  wire _29_;
  (* src = "mux7_1.v:5.17-5.18" *)
  wire _30_;
  (* src = "mux7_1.v:5.17-5.18" *)
  wire _31_;
  (* src = "mux7_1.v:5.17-5.18" *)
  wire _32_;
  (* src = "mux7_1.v:5.17-5.18" *)
  wire _33_;
  (* src = "mux7_1.v:5.17-5.18" *)
  wire _34_;
  (* src = "mux7_1.v:5.17-5.18" *)
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  (* src = "mux7_1.v:7.17-7.18" *)
  wire _39_;
  (* src = "mux7_1.v:7.17-7.18" *)
  wire _40_;
  (* src = "mux7_1.v:7.17-7.18" *)
  wire _41_;
  (* src = "mux7_1.v:9.16-9.17" *)
  wire _42_;
  (* src = "mux7_1.v:5.17-5.18" *)
  input [6:0] i;
  wire [6:0] i;
  (* src = "mux7_1.v:7.17-7.18" *)
  input [2:0] s;
  wire [2:0] s;
  (* src = "mux7_1.v:9.16-9.17" *)
  output y;
  wire y;
  sky130_fd_sc_hd__mux2_1 _43_ (
    .A0(_33_),
    .A1(_34_),
    .S(_39_),
    .X(_36_)
  );
  sky130_fd_sc_hd__mux2_1 _44_ (
    .A0(_29_),
    .A1(_30_),
    .S(_39_),
    .X(_37_)
  );
  sky130_fd_sc_hd__mux2_1 _45_ (
    .A0(_31_),
    .A1(_32_),
    .S(_39_),
    .X(_38_)
  );
  sky130_fd_sc_hd__mux4_2 _46_ (
    .A0(_37_),
    .A1(_38_),
    .A2(_36_),
    .A3(_35_),
    .S0(_40_),
    .S1(_41_),
    .X(_42_)
  );
  assign _41_ = s[2];
  assign _40_ = s[1];
  assign _39_ = s[0];
  assign _35_ = i[6];
  assign _34_ = i[5];
  assign _33_ = i[4];
  assign _32_ = i[3];
  assign _31_ = i[2];
  assign _30_ = i[1];
  assign _29_ = i[0];
  assign y = _42_;
endmodule
