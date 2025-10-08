# 🌼 Modelica Tutorial
## Quick start
**Prerequisite**: Install [OpenModelica](https://openmodelica.org/) ≥ 1.21 (OMEdit, OMShell, or just the `omc` compiler). Dymola or Wolfram SystemModeler will also work if you remap library paths.

### 1. Grab the files
```bash
cd ~/projects
git clone https://github.com/your-org/modelica-tutorial.git 3_modelica
cd 3_modelica
```

### 2. Option A – Explore with OMEdit (GUI)
1. Launch **OMEdit**.
2. `File → Open Model/Library File…` and select any `.mo` inside `models/`.
3. Hit the big **Simulate** button, then plot interesting variables (e.g., `T` in `NewtonCooling`, `position` in `CombinedSystem`).

### 2. Option B – Run from the terminal
```bash
cd /home/hellwig/kit/2_code/3_modelica
omc models/basics/cooling.mo
./NewtonCooling
```
The executable writes results to `NewtonCooling_res.mat`. Load it with OMPlot (`omplot NewtonCooling_res.mat`) or your favorite data viewer.