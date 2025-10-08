model EventModel "Event model"
  parameter Real x0=1.0 "Initial height";
  Real x "Height";
initial equation
  x = x0;
equation
  der(x) = 1;
  when x > 2 then
    reinit(x, pre(x)/2);
  end when;
end EventModel;
