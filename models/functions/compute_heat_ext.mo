impure function computeHeatExt "Modelica wrapper for an embedded C controller"
  input Real T;
  input Real Tbar;
  input Real Q;
  output Real heat;
  external "C" annotation (Include="#include \"/home/hellwig/kit/2_code/3_modelica/external/ComputeHeat.c\"");
end computeHeatExt;