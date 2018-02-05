function I_Heart_Math  % Initialize heart plot and adjust figure and axes settings:  heart;  set(gcf,'Position',[200 200 700 300],'Name','Original image');  offset = get(gca,'CameraPosition')-get(gca,'CameraTarget');  offset = 35.*offset./norm(offset);  set(gca,'Position',[65 -9 300 300],'CameraViewAngle',6,...      'XLim',[21+offset(1) 70],'YLim',[16+offset(2) 63],...      'ZLim',[32 81+offset(3)]);  % Create the axes and labels, offsetting them in front of the  % heart to give the appearance they are passing through it:  arrowStarts = [81 51 51; 51 86 51; 51 51 32]+repmat(offset,3,1);  arrowEnds = [21 51 51; 51 16 51; 51 51 81]+repmat(offset,3,1);  arrow(arrowStarts,arrowEnds,5,40,40);  text('Position',[22 52 48]+offset,'String','x','FontSize',12);  text('Position',[50 17 49]+offset,'String','y','FontSize',12);  text('Position',[46.5 51 81.5]+offset,'String','z','FontSize',12);  % Create the equation text:  text('Position',[51 47 28],'FontName','Bookman','FontSize',8,...       'HorizontalAlignment','center',...       'String',{'(x^2+^9/_4y^2+z^2-1)^3-x^2z^3-^9/_{80}y^2z^3=0'; ...                 '-3 \leq x,y,z \leq 3'});  % Create the large-type text:  hI = text('Position',[4 52 69.5],'String','I',...            'FontAngle','italic','FontName','Trebuchet MS',...            'FontSize',116,'FontWeight','bold');  hM = text('Position',[80.5 50 42.5],'String','Math',...            'FontAngle','italic','FontName','Trebuchet MS',...            'FontSize',116,'FontWeight','bold');  % Create an anti-aliased version of the figure too (the larger  % fonts need some adjustment to do this... not sure why):  set(hI,'Position',[4 52 68],'FontSize',86);  set(hM,'Position',[80.5 50 41],'FontSize',86);  myaa;  set(hI,'Position',[4 52 69.5],'FontSize',116);  set(hM,'Position',[80.5 50 42.5],'FontSize',116);  set(gcf,'Name','Anti-aliased image');end