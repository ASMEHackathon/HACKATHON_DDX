%Step 1: import command layer data (x1, y1 , send_power) and DAQ measureding layer data (x2, y2, measure_power)
%Step 1 is not realized by code, so it is not shown in code
%Step 2: plot command scan patch and measure scan patch
Figure(1)
plot(x1,y1,'b')
hold on
plot(x2,y2,'r')
%STep 3: Filter scan data point that don't on the product shape layer by
%using power information, because outside the shape boundary, no power
%emited
%command
inpointx1=[];
inpointy1=[];
n=1;
for i=1:length(send_power)
    if send_power(i)~=0
        inpointx1(n)=x1(i);
        inpointy1(n)=y1(i);
        n=n+1;
    end
end
%Measurement
inpointx2=[];
inpointy2=[];
n=1;
for i=1:length(measure_power)
    if measure_power(i)>96 % (max_min)/2
        inpointx2(n)=x2(i);
        inpointy2(n)=y2(i);
        n=n+1;
    end
end
% Step4: plot the command layer shape and measured layer shape, prepare for
% further visual identification
figure(2)
plot(inpointx1,inpointy1)
hold on
plot(inpointx2,inpointy2)

