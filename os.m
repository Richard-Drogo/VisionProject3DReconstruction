function imagesIn3DArray = os(imagesIn3DArray, seuil)
    
    for slice = 1:size(imagesIn3DArray,3)
        for i=1:size(imagesIn3DArray,1)
            for j=1:size(imagesIn3DArray,2)
                if imagesIn3DArray(i,j,slice) < seuil
                    imagesIn3DArray(i,j,slice)=0;
                else  
                    imagesIn3DArray(i,j,slice)=1;
                end
            end
        end
    end
end

