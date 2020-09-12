// Gmsh project created on Sat Jun 20 23:17:41 2020
SetFactory("OpenCASCADE");
//+
Circle(1) = {0, 10, 0, 0.5, 0, 2*Pi};
//+
Circle(2) = {0, 0, 0, 0.5, 0, 2*Pi};
//+
Circle(3) = {0, -10, 0, 0.5, 0, 2*Pi};
//+
Circle(4) = {8, 10, 0, 0.5, 0, 2*Pi};
//+
Circle(5) = {8, 0, 0, 0.5, 0, 2*Pi};
//+
Circle(6) = {8, -10, 0, 0.5, 0, 2*Pi};
//+
Circle(7) = {1.6, 12.1, 0, 0.5, 0, 2*Pi};
//+
Recursive Delete {
  Line{7}; 
}
//+
Point(7) = {-10, 15, 0, 1.0};
//+
Point(8) = {-10, -15, 0, 1.0};
//+
Point(9) = {50, -15, 0, 1.0};
//+
Point(10) = {50, 15, 0, 1.0};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 9};
//+
Line(9) = {9, 10};
//+
Line(10) = {10, 7};
//+
Line Loop(1) = {10, 7, 8, 9};
//+
Line Loop(2) = {1};
//+
Line Loop(3) = {2};
//+
Line Loop(4) = {3};
//+
Line Loop(5) = {6};
//+
Line Loop(6) = {5};
//+
Line Loop(7) = {4};
//+
Plane Surface(1) = {1, 2, 3, 4, 5, 6, 7};
//+
Transfinite Line {1, 2, 3, 6, 5, 4} = 100 Using Progression 1;
//+
Extrude {0, 0, 1} {
  Point{2}; Point{10}; Point{9}; Point{8}; Point{7}; Point{6}; Point{5}; Point{4}; Point{3}; Point{1}; Line{10}; Line{9}; Line{8}; Line{7}; Line{6}; Line{5}; Line{4}; Line{3}; Line{2}; Line{1}; Surface{1}; Layers{1}; Recombine;
}
//+
Surface Loop(2) = {3, 2, 5, 4, 12, 6, 1, 7, 8, 9, 10, 11};
//+
Volume(2) = {2};
//+
Physical Surface("inlet") = {3};
//+
Physical Surface("outlet") = {5};
//+
Physical Surface("simetry") = {2, 4};
//+
Physical Surface("frontAndBack") = {12, 1};
//+
Physical Volume("fluid") = {1};
//+
Physical Surface("walls") = {6, 7, 8, 9, 10, 11};
