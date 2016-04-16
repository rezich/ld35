var x_ = argument0;
var target = argument1;
var speed_ = argument2;
var ret = x_ + (target - x_) * speed_;
var snap = 0.001;
if (abs(x_ - target) <= snap)
  ret = target;
return ret;
