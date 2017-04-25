Names = {'Brisbane Central';'Surfers Paradise';'Southport'; ...
    'Broadbeach';'Fortitude Valley';'Wynnum';'South Brisbane'; ...
    'Sunnybank';'Robina';'Cooparoo'};
y = [42 40 19 13 9 9 8 8 7 6];
bar(y,'FaceColor',[.5 .8 .27],'LineWidth',0.5)

title('Top Go-Card Retailer Areas', 'Fontsize',14, ...
    'FontName','verdana')
tlabh = get(gca,'title');
set(tlabh,'Position',get(tlabh,'Position') - [0.5 -3 0])
ylabel('No. of Retailers','FontSize',12,'FontWeight','bold','FontName', ...
    'lucida console')
ylabh = get(gca,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') - [0.5 0.5 0])

set(gca, 'XTickLabel',Names, 'XTick',1:numel(Names), 'XLim',[0 10.9], ...
    'YLim',[0 47], 'FontWeight', 'bold')
ax = gca;
ax.XTickLabelRotation = 45
pbaspect([1.27 1 1])
print('Go-CardBarGraph', '-dpng', '-r777');