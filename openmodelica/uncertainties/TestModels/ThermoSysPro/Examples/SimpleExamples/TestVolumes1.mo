within ThermoSysPro.Examples.SimpleExamples;
model TestVolumes1
  annotation(Diagram);
  ThermoSysPro.WaterSteam.BoundaryConditions.SourceP sourceP annotation(Placement(transformation(x=-94.0, y=10.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SourceP sourceP1(P0=200000.0) annotation(Placement(transformation(x=-94.0, y=-50.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve valve1 annotation(Placement(transformation(x=0.0, y=76.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  WaterSteam.Volumes.VolumeD volumeD annotation(Placement(transformation(x=-40.0, y=10.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=true)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP puitsP annotation(Placement(transformation(x=30.0, y=70.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  WaterSteam.Volumes.VolumeD volumeD1 annotation(Placement(transformation(x=-40.0, y=-50.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve valve4 annotation(Placement(transformation(x=0.0, y=-84.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP puitsP1 annotation(Placement(transformation(x=30.0, y=-90.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Rampe rampe(Initialvalue=0.5) annotation(Placement(transformation(x=-20.0, y=90.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Rampe rampe1(Initialvalue=0.5) annotation(Placement(transformation(x=-20.0, y=-70.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve valve2 annotation(Placement(transformation(x=0.0, y=16.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve valve3 annotation(Placement(transformation(x=0.0, y=-44.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  WaterSteam.Volumes.VolumeC volumeB1(dynamic_mass_balance=true) annotation(Placement(transformation(x=30.0, y=-20.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false, rotation=-0.0)));
  ThermoSysPro.WaterSteam.PressureLosses.ControlValve valve5 annotation(Placement(transformation(x=60.0, y=-14.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.BoundaryConditions.SinkP puitsP2 annotation(Placement(transformation(x=92.0, y=-20.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Rampe rampe2(Duration=1, Initialvalue=1, Finalvalue=0) annotation(Placement(transformation(x=42.0, y=30.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Rampe rampe3(Initialvalue=1, Finalvalue=0) annotation(Placement(transformation(x=-20.0, y=40.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Rampe rampe4(Initialvalue=1, Finalvalue=0) annotation(Placement(transformation(x=-20.0, y=-20.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe pipe1(lambda=0) annotation(Placement(transformation(x=-70.0, y=10.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
  ThermoSysPro.WaterSteam.PressureLosses.LumpedStraightPipe pipe2(lambda=0) annotation(Placement(transformation(x=-70.0, y=-50.0, scale=0.1, aspectRatio=1.0, flipHorizontal=false, flipVertical=false)));
equation
  connect(valve4.C2,puitsP1.C) annotation(Line(points={{10,-90},{20,-90}}, color={0,0,255}));
  connect(rampe.y,valve1.Ouv) annotation(Line(points={{-9,90},{0,90},{0,87}}));
  connect(rampe1.y,valve4.Ouv) annotation(Line(points={{-9,-70},{0,-70},{0,-73}}));
  connect(volumeD1.Cs2,valve4.C1) annotation(Line(points={{-40,-59.8},{-40,-90},{-10,-90}}, color={0,0,255}));
  connect(valve5.C2,puitsP2.C) annotation(Line(points={{70,-20},{82,-20}}, color={0,0,255}));
  connect(rampe2.y,valve5.Ouv) annotation(Line(points={{53,30},{60,30},{60,-3}}));
  connect(rampe3.y,valve2.Ouv) annotation(Line(points={{-9,40},{0,40},{0,27}}));
  connect(rampe4.y,valve3.Ouv) annotation(Line(points={{-9,-20},{0,-20},{0,-33}}));
  connect(sourceP.C,pipe1.C1) annotation(Line(points={{-84,10},{-80,10}}, color={0,0,255}));
  connect(sourceP1.C,pipe2.C1) annotation(Line(points={{-84,-50},{-80,-50}}, color={0,0,255}));
  connect(volumeD.Cs2,valve1.C1) annotation(Line(points={{-40,19.8},{-40,70},{-10,70}}, color={0,0,255}));
  connect(valve1.C2,puitsP.C) annotation(Line(points={{10,70},{20,70}}, color={0,0,255}));
  connect(volumeD.Cs3,valve2.C1) annotation(Line(points={{-30,10},{-10,10}}, color={0,0,255}, smooth=0));
  connect(pipe1.C2,volumeD.Ce) annotation(Line(points={{-60,10},{-50,10}}, color={0,0,255}, smooth=0));
  connect(volumeD1.Cs3,valve3.C1) annotation(Line(points={{-30,-50},{-10,-50}}, color={0,0,255}, smooth=0));
  connect(pipe2.C2,volumeD1.Ce) annotation(Line(points={{-60,-50},{-50,-50}}, color={0,0,255}, smooth=0));
  connect(valve2.C2,volumeB1.Ce2) annotation(Line(points={{10,10},{30,10},{30,-11}}, color={0,0,255}, smooth=0));
  connect(volumeB1.Cs,valve5.C1) annotation(Line(points={{40,-20},{50,-20}}, color={0,0,255}, smooth=0));
  connect(valve3.C2,volumeB1.Ce3) annotation(Line(points={{10,-50},{30,-50},{30,-30}}, color={0,0,255}, smooth=0));
end TestVolumes1;
