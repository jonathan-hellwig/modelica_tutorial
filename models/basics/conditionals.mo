model Conditionals "A model demonstrating conditionals"
  Real x;
initial equation
  x = 1;
equation
  der(x) = if x>=0 then -sqrt(x) else 0;
end Conditionals "A model demonstrating conditionals";