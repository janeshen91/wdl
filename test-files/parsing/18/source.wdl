composite_task x {
  step a[version="1.5.6"] {
    input: in0=global;
    output: FirstLine("a_out.txt") as a_out;
  }
  for ( b in c ) {
    step d[version="1.0.2"] {
      input: in0=a_out, in1=b.x; output: File("d_out.txt") into d_out;
    }
  }
}