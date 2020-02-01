

patch -p1 < 13x13.patch 
lein run src/dactyl_keyboard/dactyl.clj
cp things/right.scad things/right-7x7.scad
cp things/left.scad things/left-7x7.scad
cp things/right-plate.scad things/right-7x7-plate.scad
openscad -o things/right-7x7-plate.dxf things/right-7x7-plate.scad >/dev/null 2>&1 &
openscad -o things/right-7x7.stl things/right-7x7.scad >/dev/null 2>&1  &
openscad -o things/left-7x7.stl  things/left-7x7.scad >/dev/null 2>&1 &
git checkout src/dactyl_keyboard/dactyl.clj


# git add things/*-4x5.stl
# git add things/right-4x5-plate.dxf
# git commit -m "Add CAD files"
wait
