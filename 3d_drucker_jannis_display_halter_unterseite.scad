difference(){
    cube([160,89.5,3]);
    translate([5,5,0]){
        cylinder(d=3, 3, $fn=20);
    }
    translate([155,5,0]){
        cylinder(d=3, 3, $fn=20);
    }
    translate([155,84.5,0]){
        cylinder(d=3, 3, $fn=20);
    }
    translate([5,84.5,0]){
        cylinder(d=3, 3, $fn=20);
    }
}