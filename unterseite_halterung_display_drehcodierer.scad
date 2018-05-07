difference(){
    cube([133, 63, 3]);
    translate([30, 31.5, 0]){
        cylinder(3, d=5.5, $fn = 20);
    }
    for (a =[1:100]){
        translate([80+a*20/100, 31.5, 0]){
            cylinder(3, d=5.5, $fn = 10);
        }
    }
    
    // Befestigungslöcher für Hauptkörper
    translate([6,6,0]){
        cylinder(3, d=2.5, $fn=20);
    }
    translate([133-6,6,0]){
        cylinder(3, d=2.5, $fn=20);
    }
    translate([133-6,63-6,0]){
        cylinder(3, d=2.5, $fn=20);
    }
    translate([6,63-6,0]){
        cylinder(3, d=2.5, $fn=20);
    }
    
}