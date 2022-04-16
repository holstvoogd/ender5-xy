$fn=50;

difference(){
  union(){
    cylinder(d=8.05, 17.5);
    cylinder(d=12, .5);
    translate([0,0,-5/2-1]) {
      difference() {
        minkowski() {
          cube([51, 16, 3], center=true);
          sphere(2);
        }
        translate([0,0,-3.5]) cube([57, 22, 2], center=true);
        translate([25/2+7, 0, -3])  m5_hole();
        translate([-(25/2+7), 0, -3])  m5_hole();
      }
    }
  };
  cylinder(d=2.9, 20);
}

module m5_hole() {
  translate([0,0,5]) cylinder(d=9, 5);
  translate([0,0,-10])  cylinder(d=5.1, 20);
}
