// dimensions of fenestrated surface
  x = 100;
  y = 100;
  z = 1;

// number of fenestrations
  fen_x = 15; // fenestrations on x axis
  fen_y = 15; // fenestrations on y axis
  fen_size = 5; // size of fenestrations as a % of total axis size

// calculate fenestration size
  fen_size_x = fen_size * x / 100;
  fen_size_y = fen_size * y / 100;

// calculate space remaining and then divide by number of windows needed + 1 to get the desired size of the struts
  strut_x = (x - fen_x * fen_size_x) / (fen_x + 1); 
  strut_y = (y - fen_y * fen_size_y) / (fen_y + 1);

// take away windows from fenestrated surface
  difference() { 
    cube(size=[x, y, z]); // fenestrated surface
    for (i = [0:fen_x - 1]) {
      translate([i * (fen_size_x + strut_x) + strut_x, 0, 0])
      for (i = [0:fen_y - 1]) {
        translate([0, i * (fen_size_y + strut_y) + strut_x, -1]) 
        cube([fen_size_x, fen_size_y, z+2]); // the fenestrations have to start a bit lower and be a bit taller, so that we don't get 0 sized objects
      }
    }
  }

