$fn = 100;

module taster() {
    union() {
        translate([0, -2.7, 0])
            cube([4.5, 2.7, 3.5]);
        translate([2.25, 0, 1.5])
            rotate([90, 0, 0])
                cylinder(h = 2, r = 1, center = true);
    }
}

module ventilation(y, x) {
    translate([y - 43.3, x - 20, 0]) {
        for(y = [4.33 : 8.66 : 82]) {
            for(x = [0 : 5 : 40]) {
                translate([y, x, 0]) {
                    cylinder(h = 60, r = 1.5, center = true);
                }
            }
            if(y < 86) {
                for(x = [0 : 5 : 35]) {
                    translate([y + 4.33, x + 2.5, 0]) {
                        cylinder(h = 60, r = 1.5, center = true);
                    }
                }
            }
        }
    }
}

module board() {
    // Platine
    difference() {
        color(c = [.5, .5, .5])
            translate([0, 0, -2])
                cube([100.2, 74.3, 2]);
        union(){    
            translate([3.5, 21.75, 0])
                cylinder(h = 20, r = 1.75, center = true);

            translate([96.7, 21.75, 0])
                cylinder(h = 20, r = 1.75, center = true);

            translate([3.5, 70.75, 0])
                cylinder(h = 20, r = 1.75, center = true);

            translate([96.7, 70.75, 0])
                cylinder(h = 20, r = 1.75, center = true);
        }
    }

    // SD-Karte
    translate([-5, 44.3, -4])
        cube([20, 15, 2]);

    // Audio
    translate([3, 0, 0])
        union() {
            cube([7, 12.5, 6]);
       
            translate([3, -1, 3])
                rotate([90, 0, 0])
                    cylinder(h = 5, r = 3, center=true);
        }

    // USB
    translate([16.8, -2.5, .8])
        cube([13, 17.6, 13.2]);

    // USB
    translate([16.8 + 19.5, -2.5, .8])
        cube([13, 17.6, 13.2]);

    // HDMI
    translate([16.8 + 45.5 - 4.5, -2.5, 1.3])
        cube([4.5, 17.6, 15]);

    // Ethernet
    translate([16.8 + 66.8 - 16, -2.5, 0])
        cube([16, 21, 13.3]);

    // USB-C
    translate([16.8 + 81 - 9, -2.5, 0])
        cube([9, 7.5, 3.4]);

    // GPIO
    translate([57.7-50.8+5.08, 74.3-3.54, 0])
        cube([7.62, 2.54, 17]);

    // Taster
    translate([83.6 - 4.5, 74.3 ,0]) {
        taster();
    }

    // Taster
    translate([74.4 - 4.5, 74.3 ,0]) {
        taster();
    }
}

module top() {
    difference() {
        union() {
            translate([-2, -2, 25.5])
                cube([104.2, 78.3, 1.5]);
            
            translate([-2, -2, 0])
                cube([1.5, 78.3, 27]);

            translate([104.2 - 2 - 1.5, -2, 0])
                cube([1.5, 78.3, 27]);

            translate([-2, 78.3 - 2 - 1.5, 0])
                cube([104.2, 1.5, 27]);

            translate([-2, -2, 0])
                cube([104.2, 1.5, 27]);

            translate([3.5, 21.75, 13.5])
                cylinder(h = 27, r = 3.5, center = true);

            translate([96.7, 21.75, 13.5])
                cylinder(h = 27, r = 3.5, center = true);

            translate([3.5, 70.75, 13.5])
                cylinder(h = 27, r = 3.5, center = true);

            translate([96.7, 70.75, 13.5])
                cylinder(h = 27, r = 3.5, center = true);
                
            translate([0, 21.75, 13.5])
                cube([4, 1.5, 27], center = true);

            translate([100.2, 21.75, 13.5])
                cube([4, 1.5, 27], center = true);

            translate([0, 70.75, 13.5])
                cube([4, 1.5, 27], center = true);

            translate([100.2, 70.75, 13.5])
                cube([4, 1.5, 27], center = true);
                

            translate([80.1, 37.15, 24])
                cube([17, 52, 4], center = true);
            translate([20.1, 37.15, 24])
                cube([17, 52, 4], center = true);


            translate([86.2, 0, 13.5])
                cube([1.5, 4, 27], center = true);

            translate([65.3, 0, 13.5])
                cube([1.5, 4, 27], center = true);

            translate([53.6, 0, 13.5])
                cube([1.5, 4, 27], center = true);

            translate([33.4, 0, 13.5])
                cube([1.5, 4, 27], center = true);

            translate([13.4, 0, 13.5])
                cube([1.5, 4, 27], center = true);

            };


        union() {
            // GPIO

            translate([15.79, 72.03, 20])
                cylinder(h = 40, r = 2.25, center = true);

            // Schrauben
            translate([3.5, 21.75, 8.5])
                cylinder(h = 30, r = 1.25, center = true);
            translate([96.7, 21.75, 8.5])
                cylinder(h = 30, r = 1.25, center = true);
            translate([3.5, 70.75, 8.5])
                cylinder(h = 30, r = 1.25, center = true);
            translate([96.7, 70.75, 8.5])
                cylinder(h = 30, r = 1.25, center = true);

            // Audio
            translate([2.5, -2.5, -.5])
                cube([8, 12.5, 7]);

            // USB
            translate([16.3, -2.5, -.5])
                cube([14.5, 17.6, 15]);

            // USB
            translate([16.3 + 19.5, -2.5, -.5])
                cube([14.5, 17.6, 15]);

            // HDMI
            translate([16.3 + 45.5 - 4.5, -2.5, -.7])
                cube([6, 17.6, 17.5]);

            // Ethernet
            translate([16.3 + 66.8 - 16, -2.5, -.5])
                cube([17, 21, 14.3]);

            // USB-C
            translate([16.3 + 81 - 9, -2.5, -.5])
                cube([10, 7.5, 4.4]);

            // Taster
            translate([67.45, 68.3, 0])
                cube([0.5, 10, 18]);
            translate([67.45 + 9.2, 68.3, 0])
                cube([0.5, 10, 18]);
            translate([67.45 + 2 * 9.2, 68.3, 0])
                cube([0.5, 10, 18]);
            translate([67.45, 68.3, 0])
                cube([18.9, 10, .5]);
            translate([67.45, 74.3, 0])
                cube([18.9, 1, 18]);
        }
        
        // ventilation(100.2 / 2, 74.3 / 2);
        translate([50.1, 37.15, 10])
            union() {
                cylinder(h=40, r = 14.1, center = true);
                translate([12, 12, 0])
                    cylinder(h=40, r = 1.6, center = true);
                translate([12, -12, 0])
                    cylinder(h=40, r = 1.6, center = true);
                translate([-12, 12, 0])
                    cylinder(h=40, r = 1.6, center = true);
                translate([-12, -12, 0])
                    cylinder(h=40, r = 1.6, center = true);
            }
        translate([84.35, 37.15, 10])
            cube([6.5, 50, 40], center = true);
        translate([75.85, 37.15, 10])
            cube([6.5, 50, 40], center = true);
        translate([24.35, 37.15, 10])
            cube([6.5, 50, 40], center = true);
        translate([15.85, 37.15, 10])
            cube([6.5, 50, 40], center = true);


        translate([100, 3, 22])
            cube([10, 7, 3], center = true);
    }
}

module bottom() {
    difference() {
        union() {
            translate([-2, -2, -6.5])
                cube([104.2, 78.3, 1.5]);

            translate([-2, -2, -6.5])
                cube([1.5, 78.3, 6.5]);

            translate([104.2 - 2 - 1.5, -2, -6.5])
                cube([1.5, 78.3, 6.5]);

            translate([-2, 78.3 - 2 - 1.5, -6.5])
                cube([104.2, 1.5, 6.5]);

            translate([-2, -2, -6.5])
                cube([104.2, 1.5, 6.5]);

            translate([3.5, 21.75, -4.25])
                cylinder(h = 4.5, r = 5, center = true);

            translate([96.7, 21.75, -4.25])
                cylinder(h = 4.5, r = 5, center = true);

            translate([3.5, 70.75, -4.25])
                cylinder(h = 4.5, r = 5, center = true);

            translate([96.7, 70.75, -4.25])
                cylinder(h = 4.5, r = 5, center = true);

        }
        union() {
            // SD-Karte
            translate([-3, 44.3, -14.5])
                cube([5, 15, 12]);
            translate([3.5, 21.75, 0])
                cylinder(h = 20, r = 1.75, center = true);

            translate([96.7, 21.75, 0])
                cylinder(h = 20, r = 1.75, center = true);

            translate([3.5, 70.75, 0])
                cylinder(h = 20, r = 1.75, center = true);

            translate([96.7, 70.75, 0])
                cylinder(h = 20, r = 1.75, center = true);

            translate([3.5, 21.75, -5.25])
                cylinder(h = 4.5, r = 4, center = true);

            translate([96.7, 21.75, -5.25])
                cylinder(h = 4.5, r = 4, center = true);

            translate([3.5, 70.75, -5.25])
                cylinder(h = 4.5, r = 4, center = true);

            translate([96.7, 70.75, -5.25])
                cylinder(h = 4.5, r = 4, center = true);

            // GPIO
            translate([57.7-50.8, 74.3 - 6.08, -4])
                cube([7.62, 5.08, 4]);

        }
    }
}

rotate([180, 0, 0]) {
    //board();
    color(c= [.5,0,1])
        top();
}
