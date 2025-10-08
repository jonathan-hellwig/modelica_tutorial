model ConstantInput "Constant signal source"
        parameter Real u=1.0 "Constant output value";
        SignalOutput y "Output connector";
equation
        y.value = u;
end ConstantInput;