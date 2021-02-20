$fa = 1;
$fs = 0.4;

difference() {
    cube([60, 80, 4]);
    
    translate([30, 50, -0.5])
        cylinder(r=28, h=6);
    
    translate([5, 25, -0.5])
        cylinder(r=2, h=6);
    translate([55, 25, -0.5])
        cylinder(r=2, h=6);
    translate([5, 75, -0.5])
        cylinder(r=2, h=6);
    translate([55, 75, -0.5])
        cylinder(r=2, h=6);
    
    translate([6, 6, -0.5])
        cube([10, 6.5, 6]);
    translate([50-6, 6, -0.5])
        cube([10, 6.5, 6]);
}