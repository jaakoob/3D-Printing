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

module oberseite(){
    difference(){
        cube([160,94.5,3]);
        translate([19,17,0]){
            cube([97,40,3]);
        }
        translate([142,40,0]){
            cylinder(d=6, 3, $fn=20);
        }
        translate([19/2+44,67,0]){
            cube([25,10,3]);
        }
        translate([142,67+10/2,0]){
            cylinder(d=5, 3, $fn=20);
        }
    }
}

module rand(){
    difference(){
        union(){
            cube([160,3,30]);
            cube([3,89.3,32.5+30]);
            translate([157,0,0]){
                cube([3,89.3,32.5+30+3]);
            }
            difference(){
                translate([0,86.3,0]){
                    cube([160,3,32.5+30+3]);
                }
                rotate([0,90,90]){
                    translate([-15,-85,85]){
                        dsub(1.1,39.09,10);
                    }
                }
            }
            cube([10,10,32.5+30]);
            translate([150,0,0]){
                cube([10,10,32.5+30+3]);
            }
            translate([0,79.3,0]){
                cube([10,10,32.5+30+3]);
            }
            translate([150,79.3,0]){
                cube([10,10,32.5+30+3]);
            }
            rotate([21,0,0]){
                translate([0,10.75,25]){
                    oberseite();
                }
            }
        }
        rotate([21,0,0]){
            translate([0,10.75,28]){
                cube([160,100,100]);
            }
        }
        for (a =[1:100]){
            rotate([90,0,0]){
                translate([15+a/5,40,-90]){
                    cylinder(d=5.2, 10, $fn=10);
                }
            }
        }
        for (a =[1:100]){
            rotate([90,0,0]){
                translate([30+40+a/5,40,-90]){
                    cylinder(d=5.2, 10, $fn=10);
                }
            }
        }
        for (a =[1:100]){
            rotate([90,0,0]){
                translate([30+50+40+a/5,40,-90]){
                    cylinder(d=5.2, 10, $fn=10);
                }
            }
        }
        translate([5,5,0]){
            cylinder(d=3, 10, $fn=20);
        }
        translate([155,5,0]){
            cylinder(d=3, 10, $fn=20);
        }
        translate([155,84.5,0]){
            cylinder(d=3, 10, $fn=20);
        }
        translate([5,84.5,0]){
            cylinder(d=3, 10, $fn=20);
        }
    }
}
rand();