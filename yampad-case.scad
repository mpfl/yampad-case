$fn = 360;
function itm( inches ) = inches * 25.4;

module post() {
    cylinder(d = 5, h = 3);
    translate([0,0,3]) cylinder(d = 2.5, h = 1.6);
}

module reset() {
    translate([0,0,-1]) cube([8,8,6]);
}

difference () {
    union() {
        linear_extrude(4) translate([-66.039,60.705]) import("yampad_v2-Edge.Cuts.dxf");

        //top left
        translate([itm(1.475),-itm(0.45),4]) post();
        // top right
        translate([itm(3.58),-itm(0.745),4]) post();
        // middle
        translate([itm(2.225),-itm(2.245),4]) post();
        // bottom left
        translate([itm(0.85),-itm(3),4]) post();
        // bottom right
        translate([itm(3.58),-itm(2.245),4]) post();
    }
    translate([5,-13.5,0]) reset();
}