difference(){
    union(){
        cube([42.3,42.3,5]);
        translate([-15,42.3,0]){
            cube([72.3,25,5]);
        }
    }
    translate([5.65, 5.65,0]){
        cylinder(d=3.2, 5,$fn=20);
    }
    translate([5.65+31, 5.65,0]){
        cylinder(d=3.2, 5,$fn=20);
    }
    translate([5.65+31, 5.65+31,0]){
        cylinder(d=3.2, 5,$fn=20);
    }
    translate([5.65, 5.65+31,0]){
        cylinder(d=3.2, 5,$fn=20);
    }
    translate([42.3/2, 42.3/2,0]){
        cylinder(d=20, 5,$fn=20);
    }
    translate([-7.5, 42.3+7.5+10,0]){
        cylinder(d=4.1, 5,$fn=20);
    }
    translate([42.3+7.5, 42.3+7.5+10,0]){
        cylinder(d=4.1, 5,$fn=20);
    }
}