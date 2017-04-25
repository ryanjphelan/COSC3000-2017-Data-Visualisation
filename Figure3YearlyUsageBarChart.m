X = csvread('total_trips_2016.csv',1,0);
Y = csvread('go_card_usage_data.csv',1,0);
Month = {'';'January';'';'';'';'';'February';'';'';'';'March';''; ...
    '';'';'April';'';'';'';'May';'';'';'';'June';'';'';'';'July'; ...
    '';'';'';'August';'';'';'';'';'September';'';'';'';'';'October';''; ...
    '';'';'';'November';'';'';'';'';'December';};
y1 = X(:, 2); %Number of trips
y2 = Y(:, 2); %Number of go-card trips
bar(y1,'FaceColor',[.2 .1 .4],'LineWidth',0.5)
hold on
bar(y2,'FaceColor',[.2 .8 .1],'LineWidth',0.5)
hold off
box off
title('Translink Activity 2016','Fontsize',15,'FontName','verdana')
ylabel('Number of Trips','FontSize',13.7,'FontWeight','bold','FontName', ...
    'lucida console')
ylabh = get(gca,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') - [1.27 -0.7 0])
legend({'Trips made','Trips made using a Go-Card'},'Location','northeast')
set(gca, 'XTickLabel',Month,'XTick',1:numel(Month),'FontName', ...
    'verdana','FontWeight','bold','XLim',[-1 54],'YLim',[0 4777777])
pbaspect([2.7 1 1])
print('2016_Transport_Usage', '-dpng', '-r777');
