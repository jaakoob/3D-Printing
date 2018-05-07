module frontPlate(){
    union(){
        difference(){
            cube([130, 50, 3]);
            translate([15, 12.5, 0]){
                cube([70,25,3]);
            }
            translate([110, 25, 0]){
                cylinder(3, r=3.5, $fn=30);
            }
        }
        difference(){
            translate([12.5, 10.5, 3]){
                cylinder(4, d=5, $fn=30);
            }
            translate([12.5, 10.5, 2]){
                cylinder(5, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([12.5+75, 10.5, 3]){
                cylinder(4, d=5, $fn=30);
            }
            translate([12.5+75, 10.5, 2]){
                cylinder(5, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([12.5, 10.5+31, 3]){
                cylinder(4, d=5, $fn=30);
            }
            translate([12.5, 10.5+31, 2]){
                cylinder(5, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([12.5+75, 10.5+31, 3]){
                cylinder(4, d=5, $fn=30);
            }
            translate([12.5+75, 10.5+31, 2]){
                cylinder(5, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([110-9, 25-7.5, 3]){
                cylinder(9, d=5, $fn=30);
            }
            translate([110-9, 25-7.5, 2]){
                cylinder(10, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([110+9, 25-7.5, 3]){
                cylinder(9, d=5, $fn=30);
            }
            translate([110+9, 25-7.5, 2]){
                cylinder(10, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([110-9, 25+12, 3]){
                cylinder(9, d=5, $fn=30);
            }
            translate([110-9, 25+12, 2]){
                cylinder(10, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([110+10, 25+12, 3]){
                cylinder(9, d=5, $fn=30);
            }
            translate([110+10, 25+12, 2]){
                cylinder(10, d=2.5, $fn=30);
            }
        }
    }
}

// sc = scale, set larger if your part doesn't fit. default is the exact dimensions of the connector housing. recomended 1.1 for most mounting holes,
// sz = size, set to the correct size for your dsub. Common values are 17.04 for db9 or high density db15, 25.37 for standard db15, 39.09 for db25. 
//dp= depth, set to a size that can penetrate the panel you are using it with
module dsub(sc,sz,dp){
    $fn=64;
    
    cs=(sz/2)-2.6;
    cs2=(sz/2)-4.095;
    ns=(sz/2)+4.04;
     translate([1.66,-ns,0]){
    cylinder(r=1.6,h=10);
    }
    translate([1.66,ns,0]){
    cylinder(r=1.6,h=10);
    }
    
    scale([sc,sc,sc]){
    
    hull(){
    translate([0,-cs,0]){
    cylinder(r=2.6,h=10);
    }
    translate([0,cs,0]){
    cylinder(r=2.6,h=10);
    }
    translate([3.28,-cs2,0]){
    cylinder(r=2.6,h=10);
    }
    translate([3.28,cs2,0]){
    cylinder(r=2.6,h=10);
    }
}
}
}

module base(){
    difference(){
    union(){
        cube([130, 3, 21]); //Front
        // Schräge Seitenwände
        cube([3, 60, 50]);
        translate([130, 0, 0]){
            cube([3, 60, 50]);
        }
        // Platte mit Löchern für Display und Drehcodierer
        rotate([195, 0, 0]){
            translate([1.5,-56,-20]){
                frontPlate();
            }
        }
        // Deckel oben
        rotate([195, 0, 0]){
            translate([1.5,-68,-20]){
                cube([130, 12, 3]);
            }
        }
        // Rückseite mit D-Sub
        difference(){
            translate([0, 60, 0]){
                cube([133, 3, 40]);
            }     
            rotate([0, 90, 90]){
                translate([-20, -65, 57]){
                    dsub(1.15, 25.37, 6);
                }
            }
        }
        // Würfel zum verschrauben des Boden
        difference(){
            translate([0,0,0]){
                cube([10, 10, 30]);
            }
            translate([6,6,-3]){
                cylinder(6, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([133-10,0,0]){
                cube([10, 10, 30]);
            }
            translate([133-6,6,-3]){
                cylinder(6, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([0,63-10,0]){
                cube([10, 10, 60]);
            }
            translate([6,63-6,-3]){
                cylinder(6, d=2.5, $fn=30);
            }
        }
        difference(){
            translate([133-10,63-10,0]){
                cube([10, 10, 60]);
            }
            translate([133-6,63-6,-3]){
                cylinder(6, d=2.5, $fn=30);
            }
        }  
       
    }
     // Würfel zu Abschneiden
        rotate([15,0,0]){
            translate([0,0,20]){
                cube([1000,1000,1000]);
            }
        }
    } 
}

base();