difference(){
    union(){
        difference(){
            cube([130,25,50]);
            
            translate([12.5,12.5,0]){
                cylinder(10, r=7.9, $fn=6);
            }
            
            translate([12.5,12.5,40]){
                cylinder(10.5, r=7.9, $fn=6);
            }
            
            translate([12.5,12.5,10]){
                cylinder(30, r=4.5, $fn=20);
            }
            
            translate([110,12.5,0]){
                cylinder(50, d=9, $fn=20);
            }
        }
        
        translate([0,25,0]){
            cube([35, 45, 8]);
        }
        
        translate([0,25,42]){
            cube([35, 45, 8]);
        }
        
        translate([95,25,0]){
            cube([35, 50, 8]);
        }
        
        translate([95,25,42]){
            cube([35, 50, 8]);
        }
    }
    translate([110, 62, 0]){
        cylinder(50, r=2.5, $fn=18);
    }
    translate([10, 35, 0]){
        cube([8, 25, 50]);
    }
}