module comp(input [1:0]a,b,output x,y,z);
wire m,n,p,q,r,s,t,u,v;
wire a1_eq_b1,a0_eq_b0,a1_gr_b1,a0_gr_b0,a1_ls_b1,a0_ls_b0;
wire e,f,g,h;

and (m,a[1],b[1]);
not (n,a[1]);
not (p,a[0]);
not (q,b[1]);
not (r,b[0]);
and (s,n,q);
and (t,a[0],b[0]);
and (u,p,r);

or (a1_eq_b1,m,s);
or (a0_eq_b0,t,u);
and (a1_gr_b1,a[1],q);
and (a0_gr_b0,a[0],r);
and (a0_ls_b0,p,b[0]);
and (a1_ls_b1,n,b[1]);

and (x,a1_eq_b1,a0_eq_b0);
and (e,a1_eq_b1,a0_ls_b0);
and (f,a1_eq_b1,a0_gr_b0);
or (y,e,a1_ls_b1);
or (z,f,a1_gr_b1);

endmodule

/*
assign a1_eq_b1= (a[1] & b[1] | ~a[1] & ~b[1]);
assign a0_eq_b0= (a[0] & b[0] | ~a[0] & ~b[0]);
assign a1_gr_b1= (a[1] & ~b[1]);
assign a0_gr_b0= (a[0] & ~b[0]);
assign a0_ls_b0= (~a[0] & b[0]);
assign a1_ls_b1= (~a[1] & b[1]);

assign x= a1_eq_b1 & a0_eq_b0;
assign z= (a1_eq_b1 & a0_gr_b0) | a1_gr_b1;
assign y= (a1_eq_b1 & a0_ls_b0) | a1_ls_b1;
*/


