X = csvread('filtered_stops_v1_coordinates.csv',1,0);
x = X(:, 2); %Longitude values 
y = X(:, 1); %Latitude values
nbins = [407, 407]; %Set bin number to ensure sufficient detail
hist3([x y], nbins)
title('Translink^{TM} Stop Density across Brisbane','Fontsize',14, ...
    'FontName','verdana')
xlabel('Longitude','FontSize',12,'FontWeight','bold','FontName', ...
    'lucida console')
ylabel('Latitude','FontSize',12,'FontWeight','bold','FontName', ...
    'lucida console')
colorbar
ax = gca;
colormap(ax, myHOTcmap)
box on
brighten(0.477)
view(2)
%Adjust relative length of axes to ensure proper map scaling
pbaspect([0.70501921601829840861295111373882 1 1])
set(get(gca,'child'),'FaceColor','interp','CDataMode','auto', ...
    'EdgeColor','none');
print('V1Zoom', '-dpng', '-r777');