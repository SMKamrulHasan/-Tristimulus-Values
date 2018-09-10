
[XYZ2deg,xyz2deg] = main(mspd,2);
tristm_X=XYZ2deg(1)
tristm_Y=XYZ2deg(2)
tristm_Z=XYZ2deg(3)

chromat_x=xyz2deg(1)
chromat_y=xyz2deg(2)
chromat_z=xyz2deg(3)

 Xn = 88.9036;   % refrence white for patch 19
 Yn = 93.7546;
 Zn = 100.8058;
   m =1;
  if (XYZ2deg(m))/Xn >(6/29)^3
     fx = ((XYZ2deg(m))/Xn)^(1/3);
  else
     fx = (841/108)* ((XYZ2deg(m))/Xn) +(4/29);
  end

  if (XYZ2deg(m+1))/Yn >(6/29)^3
     fy = ((XYZ2deg(m+1))/Yn)^(1/3);
  else
     fy = (841/108)* ((XYZ2deg(m+1))/Yn) +(4/29);
  end   
  if (XYZ2deg(m+2))/Zn >(6/29)^3
     fz = ((XYZ2deg(m+2))/Zn)^(1/3);
  else
     fz = (841/108)* ((XYZ2deg(m+2))/Zn) + (4/29);
  end

  L = 116 * fy-16
  a = 500 *(fx-fy)
  b = 200 *(fy-fz)