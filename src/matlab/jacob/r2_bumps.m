
hold on

r_bump1 = r_squared(1, 2);
r_bump2 = r_squared(2, 3);
r_bump3 = r_squared(3, 4);
r_bump4 = r_squared(4, 5);
r_bump5 = r_squared(5, 6);
r_bump6 = r_squared(6, 7);
r_bump7= r_squared(7, 8);
r_bump8 = r_squared(8, 9);
r_bump9 = r_squared(9, 10);
r_bump10 = r_squared(10, 11);
r_bump11 = r_squared(11, 12);
r_bump12 = r_squared(12, 13);
r_bump13 = r_squared(13, 14);
r_bump14 = r_squared(14, 15);
r_bump15 = r_squared(15, 16);
r_bump16 = r_squared(16, 17);
r_bump17 = r_squared(17, 18);
r_bump18 = r_squared(18, 19);
r_bump19 = r_squared(19, 20);
r_bump20 = r_squared(20, 21);
r_bump21 = r_squared(21, 22);
r_bump22 = r_squared(22, 23);
r_bump23 = r_squared(23, 24);
r_bump24 = r_squared(24, 25);
r_bump25 = r_squared(25, 26);
r_bump26 = r_squared(26, 27);
r_bump27 = r_squared(27, 28);
r_bump28 = r_squared(28, 29);
r_bump29 = r_squared(29, 30);
r_bump30 = r_squared(30, 31);
r_bump31 = r_squared(31, 32);


bar([r_bump1, r_bump2, r_bump3, r_bump4, r_bump5, r_bump6, r_bump7, r_bump8, r_bump9, r_bump10, r_bump11, r_bump12, r_bump13, r_bump14, r_bump15, r_bump16, r_bump17, r_bump18, r_bump19, r_bump20, r_bump21, r_bump22, r_bump23, r_bump24, r_bump25, r_bump26, r_bump27, r_bump28, r_bump29, r_bump30, r_bump31]);
plot([r_bump1, r_bump2, r_bump3, r_bump4, r_bump5, r_bump6, r_bump7, r_bump8, r_bump9, r_bump10, r_bump11, r_bump12, r_bump13, r_bump14, r_bump15, r_bump16, r_bump17, r_bump18, r_bump19, r_bump20, r_bump21, r_bump22, r_bump23, r_bump24, r_bump25, r_bump26, r_bump27, r_bump28, r_bump29, r_bump30, r_bump31], '-r','linewidth',3);


xlabel('Channels (Descending)', 'fontsize', 18);
xticklabels = {'ch09', 'ch010', 'ch11', 'ch12', 'ch13', 'ch14', 'ch15', 'ch16',...
    'ch25', 'ch26', 'ch27', 'ch28', 'ch29', 'ch30', 'ch31', 'ch32',...
    'ch17', 'ch18', 'ch19', 'ch20', 'ch21', 'ch22', 'ch23', 'ch24',...
    'ch01', 'ch02', 'ch03', 'ch04', 'ch05', 'ch06', 'ch07', 'ch08'};
xticks = linspace(1, size(sdfAll', 1), numel(xticklabels));
set(gca, 'XTick', xticks, 'XTickLabel', flipud(xticklabels(:)'))

ylabel('r^2', 'fontsize', 18);

set(gcf, 'units', 'norm', 'position', [0 0 .5 .9])
