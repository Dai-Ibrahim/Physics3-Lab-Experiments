x = 1:30;
y = [14.37,14.4,14.25,14.97,14.4,14.39,14.35,14.372,14.25,14.291,14.36,14.498,14.54,14.255,14.26,14.177,14.451,14.477,14.5,14.18,14.341,14.622,14.481,14.841,14.37,14.391,14.45,14.47,14.241,14.331];
deviation = std(y)
plot([0,30],[deviation + 14.403,deviation + 14.403]);
hold on
plot([0,30],[14.403,14.403]);
hold on
plot([0,30],[14.403 - deviation ,14.403 - deviation]);
hold on
err=[0.01,0.01,0.005,0.01,0.005,0.005,0.005,0.005,0.005,0.005,0.005,0.005,0.01,0.005,0.01,0.005,0.005,0.005,0.005,0.005,0.005,0.005,0.005,0.005,0.01,0.005,0.01,0.01,0.005,0.005];
errorbar(x,y,err,'.')
legend('dBar + Sigma','dBar', 'dBar - Sigma')
ylabel('d (mm)')
xlabel('Trial number(n)');
title('Diameter(d) vs Trial(n) plot with standard deviation')