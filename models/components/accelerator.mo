model Accelerator "Integrates an acceleration command into velocity and position"
  parameter Real v0=0 "Initial velocity";
  parameter Real s0=0 "Initial position";
  SignalInput a_ref "Reference acceleration signal";
  SignalOutput velocity "Velocity output";
  SignalOutput position "Position output";
protected
  Real v(start=v0, fixed=true) "Internal velocity state";
  Real s(start=s0, fixed=true) "Internal position state";
  Real a "Acceleration value";
equation
  a = a_ref.value;
  der(v) = a;
  der(s) = v;
  velocity.value = v;
  position.value = s;
end Accelerator;