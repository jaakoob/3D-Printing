difference(){
    union(){  
        cube([65,15,3]);
        cube([65,4,15]);
    }
    translate([55-15,9,0]){
        cylinder(3.3, d=3, $fn=20);
    }
    translate([55+19-15,9,0]){
        cylinder(3.3, d=3, $fn=20);
    }
    rotate([90,0,0]){
        translate([10,9,-4]){
            cylinder(5, d=5.5, $fn=20);
        }
    }
    rotate([0,0,15]){
        translate([0,5,0]){
            cube([100,19.5,3]);
        }
    }
    rotate([0,14,0]){
        translate([17,0,20]){
            cube([100,4,20]);
        }
    }
}
