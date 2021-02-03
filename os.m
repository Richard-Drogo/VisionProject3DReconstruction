function I = os(I, seuil)
    
    [l c]=size(I);
    for i=1:l
        for j=1:c
            if I(i,j)<seuil
                I(i,j)=0;
            else  
                I(i,j)=1;
            end
        end
    end
end

