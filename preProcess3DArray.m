function [imagesIn3DArray] = preProcess3DArray(imagesIn3DArray, BACKGROUND_IMAGE, ES_DILATATION)
%PREPROCESS3DARRAY Summary of this function goes here
%   Detailed explanation goes here
for slice = 1 : size(imagesIn3DArray,3)
    imagesIn3DArray(:,:,slice) = imagesIn3DArray(:,:,slice) - double(BACKGROUND_IMAGE); 
    
    BW(:,:,slice) = imbinarize(imagesIn3DArray(:,:,slice));
    BW(:,:,slice) = imdilate(BW(:,:,slice), ES_DILATATION);
    
    P=regionprops(BW(:,:,slice));
    
    Liste_Aires=[P.Area];
    [maxArea,indix_maxArea]=max(Liste_Aires);
    
    % Bounding box --> image rectangle
    x = int64(P(indix_maxArea).BoundingBox(1));
    y = int64(P(indix_maxArea).BoundingBox(2));
    
    width = int64(P(indix_maxArea).BoundingBox(3));
    height = int64(P(indix_maxArea).BoundingBox(4));
        
    % Image rectange obtenue
    I_rec=double(zeros(size(imagesIn3DArray,1),size(imagesIn3DArray,2)));
    I_rec(y:y+height,x:x+width)=1;

    imagesIn3DArray(:,:,slice) = imagesIn3DArray(:,:,slice) .* I_rec;

end
end

