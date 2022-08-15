// Ikea sink fix
// Author: Alessandro Paganelli (alessandro.paganelli@gmail.com)

// Measures: in mm

// Constants
$fn = 50;

// cap 
CYLINDER_H = 7.2;
CYLINDER_R = 14.75;

// Initial version: the surface acts as the handler
SURFACE_R = 18.4;
SURFACE_H = 10.0; 

// screw hole
SCREW_HOLE_R = 2.5; // TODO add tolerance

// Modules
module sink_fix()
{
    union()
    {
        // cap
        translate([0.0, 0.0, -CYLINDER_H])
        difference()
        {
            cylinder(h = CYLINDER_H, r = CYLINDER_R);
            cylinder(h = CYLINDER_H, r = SCREW_HOLE_R);
        }
        
        // handler
        cylinder(h = SURFACE_H, r = SURFACE_R);
    }    
}

// Actual script
sink_fix();