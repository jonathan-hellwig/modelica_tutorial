function computeHeat
  type HeatCapacitance=Real(unit="J/K");
  type Temperature=Real(unit="K");
  type Heat=Real(unit="W");
  type Mass=Real(unit="kg");
  type HeatTransferCoefficient=Real(unit="W/K");
  input Temperature T;
  input Temperature Tbar;
  input Heat Qcapacity;
  output Heat Q;
algorithm
  if T < Tbar - 2 then
    Q := Qcapacity;
  elseif T > Tbar + 2 then    
    Q := 0;
  end if;
end computeHeat;