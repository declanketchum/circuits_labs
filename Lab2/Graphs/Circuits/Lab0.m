%loadspice('C:\Users\dketchum\Documents\Circuits\Draft1.txt')

[FIRST, LAST, MMAX, BMAX, NMAX] = linefit(vin, vout(1,:), 5e-4);
[FIRST1, LAST1, MMAX1, BMAX1, NMAX1] = linefit(vin, vout(2,:), 5e-4);
[FIRST2, LAST2, MMAX2, BMAX2, NMAX2] = linefit(vin, vout(3,:), 5e-4);

y = MMAX*vin + BMAX;
y1 = MMAX1*vin + BMAX1;
y2 = MMAX2*vin + BMAX2;



plot(vin, vout, '.')
title('Voltage Transfer Characterisitc')
xlabel('Vin (V)')
ylabel('Vout (V)')

xlim([0 3.5])
ylim([0 6])

hold on
plot(vin, y, 'b')
plot(vin, y1, 'b')
plot(vin, y2, 'b')

legend('vref = 0V', 'vref = 1V', 'vref = 2V', '')
