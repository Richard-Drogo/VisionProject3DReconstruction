function [noms_images_jambe_repos,noms_images_jambe_contractee] = getLegsFileNames(CHEMIN_DOSSIER_JAMBE_REPOS,CHEMIN_DOSSIER_JAMBE_CONTRACTEE)
%GETLEGSFILENAMES Permet de récupérer les noms des images des jambes en vue
%du imshow.
%   Pas d'explications détaillées
folder_jambe_repos = dir(CHEMIN_DOSSIER_JAMBE_REPOS);
folder_jambe_contractee = dir(CHEMIN_DOSSIER_JAMBE_CONTRACTEE);

noms_images_jambe_repos = { folder_jambe_repos.name };
noms_images_jambe_contractee = { folder_jambe_contractee.name };

% Les étapes suivantes permettent d'enlever les noms '.' et '..'.
noms_images_jambe_repos = noms_images_jambe_repos(3:size(noms_images_jambe_repos,2));
noms_images_jambe_contractee = noms_images_jambe_contractee(3:size(noms_images_jambe_contractee,2));
end

