model PickUpBall
  extends StableBouncingBall;
  parameter Real t_pickup=5.0 "Time to pick up the ball";
equation
  when time>t_pickup then
    reinit(h, 1.0);
    reinit(v, 0.0);
  end when;
end PickUpBall;