y=[90 68;87 56; 87 65; 89 62; 61 30;];
b=bar(y);
grid on;

name={'City DriveTest','City WorkTest','Towns DriveTest','Roads DriveTest','Train WalkTest'};
set(gca,'XTickLabel',name)

legend('Deutsche Telekom','Telefonica Germany');
xlabel('Data service comparison');
ylabel('Mean download data rate (%)');
