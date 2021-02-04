function imagesIn3DArray = muscles(imagesIn3DArray, seuilInf, seuilSup)
    
    for slice = 1:size(imagesIn3DArray,3)
        for i=1:size(imagesIn3DArray,1)
            for j=1:size(imagesIn3DArray,2)
                if ( (imagesIn3DArray(i,j,slice) > seuilInf) && (imagesIn3DArray(i,j,slice)<seuilSup) )
                    imagesIn3DArray(i,j,slice)=0;
                else  
                    imagesIn3DArray(i,j,slice)=1;
                end
            end
        end
    end
end

