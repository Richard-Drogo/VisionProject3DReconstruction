function I = muscles(I, seuilInf, seuilSup)
    
    [l c]=size(I);
    for i=1:l
        for j=1:c
            if ( (I(i,j) > seuilInf) && (I(i,j)<seuilSup) )
                I(i,j)=0;
            else  
                I(i,j)=1;
            end
        end
    end
end

