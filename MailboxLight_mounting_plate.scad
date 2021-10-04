// Mounting plate for MailboxLight PCB
// Adrian McCarthy 2020-11-03

pcb_th = 1.6; // thickness of the PCB board (typical FR4 laminate thickness)
screw_l = 8;  // length of screw (excluding the head)
screw_d = 2.4;  // M2 screw
nut_h = 1.6;  // M2 hex nut
nut_d = 5.3;

plate_th = 2;

module rounded_plate(dimensions=false, corners=false, h=1, radius=0.5) {
    points = (corners == false) ?
        [[radius, radius],
         [dimensions[0] - radius, radius],
         [dimensions[0] - radius, dimensions[1] - radius],
         [radius, dimensions[1] - radius]] :
        corners;
    hull() {
        for (p=points) {
            translate(p) cylinder(r=radius, h=h);
        }
    }
}

intersection() {
    difference() {
        union() {
            // build plate
            translate([0, -38, 0]) cube([20.6, 38, plate_th]);

            // bosses
            d = max(nut_d + 0.8, 1.75*screw_d);
            translate([3, -4, 0])
                cylinder(d1=d, d2=1.65*screw_d, h=screw_l-pcb_th, $fn=24);
            translate([3, -34, 0])
                cylinder(d1=d, d2=1.65*screw_d, h=screw_l-pcb_th, $fn=24);

            // support ledge
            translate([18.6, -36, 0]) difference() {
                translate([2, 0, 0]) rotate([0, -90, 0])
                    rounded_plate([screw_l + 1.6, 22], h=2, radius=2, $fn=16);
                translate([-1, -1, screw_l-pcb_th]) cube([2, 24, pcb_th + 0.4]);
            }
        }

        // Bore screw holes through the bosses and add pockets for
        // hex nuts.
        translate([3, -4, -0.1]) {
            cylinder(d=screw_d, h=screw_l-pcb_th+0.2, $fn=16);
            rotate([0, 0, 30]) cylinder(d=nut_d, h=nut_h+0.1, $fn=6);
        }
        translate([3, -34, -0.1]) {
            cylinder(d=screw_d, h=screw_l-pcb_th+0.2, $fn=16);
            rotate([0, 0, 30]) cylinder(d=nut_d, h=nut_h+0.1, $fn=6);
        }
    }
    translate([0, -38, 0]) rounded_plate([20.6, 38], h=screw_l + 2, radius=2, $fn=24);
}
