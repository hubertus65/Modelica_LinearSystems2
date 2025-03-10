within Modelica_LinearSystems2.Examples.TransferFunction;
function plotInital "Initial condition plot example"
  extends Modelica.Icons.Function;

  import Modelica_LinearSystems2.TransferFunction;

  input TransferFunction tf=TransferFunction({1}, {1,1,1});

protected
  Real y0=1 "Initial state vector";
algorithm
  TransferFunction.Plot.initialResponse(tf=tf, y0=y0, dt=0.1, tSpan=10);

  annotation (
    __Dymola_interactive=true,
    Documentation(info="<html>
<p>
Computes the response of system tf =1/s^2 + s + 1 to an initial condition without input.
</p>
</html>"));
end plotInital;
