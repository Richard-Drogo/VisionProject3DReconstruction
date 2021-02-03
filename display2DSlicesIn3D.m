function [p1, p2] = display2DSlicesIn3D(slices, figure_title)
    TSs=smooth3(slices,'box',3);
    p1 = patch(isosurface(TSs,0),'FaceColor', 'blue','EdgeColor','none');
    p2 = patch(isocaps(TSs,1),'FaceColor','interp','EdgeColor','yellow');
    isonormals(TSs,p);
    view(3);axis vis3d tight off
    camlight; lighting phong
    title(figure_title);
end
