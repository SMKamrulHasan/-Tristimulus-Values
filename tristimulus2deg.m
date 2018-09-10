function XYZ = tristimulus2deg(input,range)
load cie1931twodeg65illum 
cie1931twodeg65illum = horzcat(range',interp1(cie1931twodeg65illum (:,1),cie1931twodeg65illum (:,[2 3 4]),range,'linear'));

%find starting point based on range input
startval = find(cie1931twodeg65illum(:,1) == min(range));
endval = find(cie1931twodeg65illum(:,1) == max(range));

inputstartval = find(input(:,1) == min(range));
inputendval = find(input(:,1) == max(range));

XYZ = zeros(size(input,2)-1,3);
for j=1:size(input,2)-1
    for i=1:size(cie1931twodeg65illum,2)-1
        %XYZ(j,i) = (100./dot(cie1931twodeg65illum(startval:endval,3),input(inputstartval:inputendval,j+1))).*dot(cie1931twodeg65illum(startval:endval,i+1),input(inputstartval:inputendval,j+1));
        XYZ(j,i) = dot(cie1931twodeg65illum(startval:endval,i+1),input(inputstartval:inputendval,j+1));
        i = i + 1;
    end
    j = j + 1;
end