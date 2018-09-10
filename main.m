
function [XYZ2deg,xyz2deg] = main(mspd,~)
  
range = 380:1:780;
unitconversion = (1e-6/.0001); %convert [uW / cm ^ 2] -> [W / m ^ 2]
ispd = interpolatespd(mspd,range);
XYZ2deg = tristimulus2deg(interpolatespd([mspd(:,1) mspd(:,2).*unitconversion],range),range);
xyz2deg = findxyz(XYZ2deg);