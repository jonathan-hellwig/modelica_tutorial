model Decay
  Real y;
initial equation
  y = 1;
equation
  der(y) = -y;
end Decay;