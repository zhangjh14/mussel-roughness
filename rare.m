figure; 
hold on;
for k = 1:7
    index = series(k);
    rawdata{k} = load([num2str(index),'.dat']);
    n = length(rawdata{k}(:,4));
    for i = 1:n
        x(i) = i/200;
        y(i) = -1*mean(rawdata{k}(1:i,4));
    end
    
    plot(x,y);
    ylim([0,0.3]);
    xlim([0,29]);
    xlabel('Sampling time (s)');
    ylabel('Mean velocity (m/s)');
    title('d1 2');
    legend('1', '2', '3','4','5','6','7');
    
end