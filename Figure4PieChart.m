X = [0.13331891514091714941747776235181 ...
    0.86668108485908285058252223764819];
labels = {'','87%'};
p = pie(X,labels)
colormap([0.2 0.2 1;   % Blue
          .4 .77 0]);  % Green
t = p(4);
t.FontSize = 17;
title('Translink 2016 Go-Card Usage','Fontsize',15,'FontName','verdana')
legend({'No Go-Card','Trips made using a Go-Card'},'Location','northeast')
print('2016_pie_chart', '-dpng', '-r777');