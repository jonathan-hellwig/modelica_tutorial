model CombinedSystem "Self-contained demo wiring custom components"
  ConstantInput inputStep(u=2.0) "Acceleration command";
  Accelerator plant(v0=0, s0=0) "Integrates the command";
  Real velocity "Measured velocity";
  Real position "Measured position";
equation
  connect(inputStep.y, plant.a_ref);
  velocity = plant.velocity.value;
  position = plant.position.value;
end CombinedSystem;