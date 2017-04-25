Times = {'12am';'1am';'2am';'3am';'4am';'5am';'6am';'7am';'8am';'9am';...
    '10am';'11am';'12pm';'1pm';'2pm';'3pm';'4pm';'5pm';'6pm';'7pm';...
    '8pm';'9pm';'10pm';'11pm'};
y = [3572 1992 1865 1864 2084 11254 42467 83253 87796 80431 71410 ...
    69248 68584 68528 69562 67974 66773 69008 57308 34902 28272 ...
    25175 22289 12963];
area(y,'FaceColor',[0.97 .77 .1],'EdgeColor',[0.97 .77 .5])
box off

title('Translink^{TM} over 24 hrs','Fontsize',15,'FontName','verdana')
ylabel('Activity Index','FontSize',13.7,'FontWeight','bold','FontName', ...
    'lucida console')
ylabh = get(gca,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') - [-0.27 0 0])

set(gca, 'XTickLabel',Times,'XTick',1:numel(Times),'FontName', ...
    'verdana','FontWeight','bold','XLim',[0.67 24.27],'YLim',[0 107000])
pbaspect([2.37 1 1])
grid on
print('translink24hractivity', '-dpng', '-r777');