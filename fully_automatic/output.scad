$fn=64;
difference(){translate(v = [-10.000, -10.000])
cube(size = [20, 20, 5]);
union(){color("Gainsboro"){translate(v = [0, 0, -3])
cylinder(h = 3, r = 2.750);
}
color("DarkGray"){cylinder(h = 10, r = 1.650);
}
}
}
