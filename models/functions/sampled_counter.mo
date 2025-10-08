model SampledCounter "Shows how to use algorithm sections for discrete updates"
  parameter Real samplePeriod=0.5 "Sample spacing for the counter";
  parameter Integer wrapAt=5 "Counter wraps to zero after this many ticks";
  discrete Integer count;
  discrete Boolean wrapped;
  Real display "Continuous signal mirroring the discrete counter";
initial algorithm
  count := 0;
  wrapped := false;
algorithm
  when sample(0, samplePeriod) then
    if pre(count) >= wrapAt then
      count := 0;
      wrapped := true;
    else
      count := pre(count) + 1;
      wrapped := false;
    end if;
  end when;
equation
  display = count;
end SampledCounter;
