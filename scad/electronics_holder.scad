$fa = 1;
$fs = 0.4;

//translate([48, 77.5, -1])
//    mks();

difference() {
    tudo();
    
    translate([-0.5, 25, 6.75])
        cube([6, 10, 6.5]);
    
    translate([-0.5, 120, 6.75])
        cube([6, 10, 6.5]);
    
    translate([60, -0.5, 6.75])
        cube([10, 6, 6.5]);
}

module tudo() {
    cube([5, 5+143+2, 20-3]);
    cube([5+84+2, 5, 20-3]);

    translate([10, 10, 0])
        difference() {
            union() {
                cylinder(r=5, h=5);
                translate([-5, -5, 0])
                    cube([10, 5, 5]);
                translate([-5, -5, 0])
                    cube([5, 10, 5]);
            }
            translate([0, 0, -0.5])
                cylinder(r=2, h=6);
       }

    translate([10+76, 10, 0])
        difference() {
            union() {
                cylinder(r=5, h=5);
                translate([-5, -5, 0])
                    cube([10, 5, 5]);
            }
            translate([0, 0, -0.5])
                cylinder(r=2, h=6);
       }

    translate([10, 10+135, 0])
        difference() {
            union() {
                cylinder(r=5, h=5);
                translate([-5, -5, 0])
                    cube([5, 10, 5]);
            }
            translate([0, 0, -0.5])
                cylinder(r=2, h=6);
       }
       
    translate([38, 50, 0])
        holder();

    translate([24, 50, 0])
        mirror([1, 0, 0])
            holder();
       
    translate([23, 50, 0])
        cube([16, 5, 5]);
       
    //
    translate([38, 100, 0])
        holder();

    translate([24, 100, 0])
        mirror([1, 0, 0])
            holder();
       
    translate([23, 100, 0])
        cube([16, 5, 5]);
}

module holder() {
    difference() {
        cube([22, 5, 20.5]);
        
        translate([3, -0.5, 5])
            cube([16, 6, 10.5]);
        
        translate([-0.5, -0.5, 17])
            cube([8.75, 6, 4]);
        
        translate([8.75, -0.5, 17])
            cube([10.25, 6, 2]);
        
        translate([16, -0.5, 17-1.25])
            cube([3, 6, 1.5]);
    }
}

module mks() {
    difference() {
        cube([84, 143, 1], center=true);
        
        translate([-76/2, -135/2, 0])
            cylinder(r=2, h=5, center=true);
        translate([76/2, -135/2, 0])
            cylinder(r=2, h=5, center=true);
        translate([-76/2, 135/2, 0])
            cylinder(r=2, h=5, center=true);
        translate([76/2, 135/2, 0])
            cylinder(r=2, h=5, center=true);
    }
}