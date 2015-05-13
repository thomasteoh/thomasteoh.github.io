window_num = 10; // number of windows
window_size = 12; // size of individual windows
strut_size = 8; // size of the struts

for (i = [0:window_num]) {
rotate ([0, 0, 90])
translate ([0, 0, (window_size + strut_size) * i])
cube (size=[window_num * (window_size + strut_size), strut_size, strut_size]);
}
for (i = [0:window_num]) {
rotate ([0, 270, 0])
translate ([0, (window_size + strut_size) * i, 0])
cube (size=[window_num * (window_size + strut_size), strut_size, strut_size]);
}