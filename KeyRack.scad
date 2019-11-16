$fn = 64;

DEFAULT_SIZE = [250, 100];
DEFAULT_SCREW_HOLD_RADIUS = 1;
DEFAULT_THICKNESS = 6.4; // https://make.ponoko.com/materials/walnut-hardwood

module KeyRack(
    size = DEFAULT_SIZE,
    screwHoleRadius = DEFAULT_SCREW_HOLD_RADIUS)
{
    difference()
    {
        // Main shape
        square(size);

        // Make that shape a little more interesting
        translate([size[0] * 0, size[1] * 0.5]) circle(size[1] / 8);
        translate([size[0] * 1, size[1] * 0.5]) circle(size[1] / 8);

        translate([size[0] * 0, size[1] * 0]) rotate(45) square(size[1] / 8, center=true);
        translate([size[0] * 0, size[1] * 1]) rotate(45) square(size[1] / 8, center=true);
        translate([size[0] * 1, size[1] * 1]) rotate(45) square(size[1] / 8, center=true);
        translate([size[0] * 1, size[1] * 0]) rotate(45) square(size[1] / 8, center=true);

        // Small holes to screw hooks into
        translate([size[0] * 0.1, size[1] * 0.5]) circle(screwHoleRadius);
        translate([size[0] * 0.3, size[1] * 0.5]) circle(screwHoleRadius);
        translate([size[0] * 0.5, size[1] * 0.5]) circle(screwHoleRadius);
        translate([size[0] * 0.7, size[1] * 0.5]) circle(screwHoleRadius);
        translate([size[0] * 0.9, size[1] * 0.5]) circle(screwHoleRadius);
    }
}

module KeyRack3D(
    size = DEFAULT_SIZE,
    screwHoleRadius = DEFAULT_SCREW_HOLD_RADIUS,
    thickness = DEFAULT_THICKNESS)
{
    linear_extrude(thickness)
    KeyRack(size, screwHoleRadius);
}
