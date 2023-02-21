// Assignment via `force` to scalar members of an SVI instance.

interface I;
  logic z;
endinterface


module M
  ( input bit a
  , input var logic b);

 I u_I ();
 always_comb u_I.z = b;
  if (a)
    force u_I.z = 1'bz;
  else
    release u_I.z;

endmodule
