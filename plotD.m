clear all
file = 'dirichlet.ckt'
readckt
loadMatrix
v = G \ b;
x_axis = 0:0.1:1;
temp = v(1:11);
plot(x_axis, temp, '-o')
xlabel('Polożenie wzdłuż pręta x [m]')
ylabel('Temperatura [st. C]')
title('Rozkład temperatury wzdłuż pręta - dwa radiatory')
for i = 1:length(x_axis)
    text(x_axis(i) + 0.01, temp(i) + 2, num2str(temp(i), '%.1f'), 'FontSize', 8, 'HorizontalAlignment', 'center');
end
grid on
print('wykres_temp_dirichlet.jpeg', '-djpeg', '-r300');