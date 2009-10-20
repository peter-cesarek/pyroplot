function handles = Add_GA_param(handles, type)
% Parameters for algorithm:
%   Important areas in experimental data (time of ignition etc.)

handles.GA.algoritm_parameters = figure('Visible','off',...
   'Name', 'Algorithm parameters', ...
   'NumberTitle', 'off', ...
   'Menubar', 'none', ...
   'Toolbar', 'none', ...
   'Color', get(0,...
   'defaultuicontrolbackgroundcolor'), ...
   'Units', 'normalized', ...
   'Position',[0.36,0.3,0.4,0.7]);

movegui(handles.GA.algoritm_parameters,'center')

% Weights
handles.GA.exp_weight = 2;
handles.GA.weight_index = [0,0];
hweights=uicontrol(handles.GA.algoritm_parameters, 'Style', 'pushbutton', ...
   'String', 'Weight exp. data', ...
   'Callback', {@weight_exp_cb, type}, ...
   'Units', 'normalized', ...
   'Position', [0.25 0.9 0.5 0.04]);
htimes=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'times', ...
   'Units', 'normalized', ...
   'Position', [0.51 0.84 0.06 0.04]);
handles.GA.htimes=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.exp_weight), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.4 0.85 0.1 0.04]);


hNind=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'NIND', ...
   'Units', 'normalized', ...
   'Position', [0.1 0.74 0.1 0.04]);
handles.GA.hNIND=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.NIND), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.22 0.75 0.1 0.04]);


hMaxgen=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'MAXGEN', ...
   'Units', 'normalized', ...
   'Position', [0.5 0.74 0.1 0.04]);
handles.GA.hMAXGEN=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.MAXGEN), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.65 0.75 0.1 0.04]);


hMiggen=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'MIGGEN', ...
   'Units', 'normalized', ...
   'Position', [0.1 0.64 0.1 0.04]);
handles.GA.hMIGGEN=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.MIGGEN), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.22 0.65 0.1 0.04]);


hMutr=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'MUTR', ...
   'Units', 'normalized', ...
   'Position', [0.5 0.64 0.1 0.04]);
handles.GA.hMUTR=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.MUTR), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.65 0.65 0.1 0.04]);


hSubpop=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'SUBPOP', ...
   'Units', 'normalized', ...
   'Position', [0.1 0.54 0.1 0.04]);
handles.GA.hSUBPOP=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.SUBPOP), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.22 0.55 0.1 0.04]);


hGgap=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'GGAP', ...
   'Units', 'normalized', ...
   'Position', [0.5 0.54 0.1 0.04]);
handles.GA.hGGAP=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.GGAP), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.65 0.55 0.1 0.04]);


hXovr=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'XOVR', ...
   'Units', 'normalized', ...
   'Position', [0.1 0.44 0.1 0.04]);
handles.GA.hXOVR=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.XOVR), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.22 0.45 0.1 0.04]);


hInsr=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'INSR', ...
   'Units', 'normalized', ...
   'Position', [0.5 0.44 0.1 0.04]);
handles.GA.hINSR=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.INSR), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.65 0.45 0.1 0.04]);


hMigr=uicontrol(handles.GA.algoritm_parameters, 'Style', 'text', ...
   'String', 'MIGR', ...
   'Units', 'normalized', ...
   'Position', [0.1 0.34 0.1 0.04]);
handles.GA.hMIGR=uicontrol(handles.GA.algoritm_parameters, 'Style', 'edit', ...
   'String', mat2str(handles.GA.MIGR), ...
   'BackgroundColor', 'w', ...
   'Units', 'normalized', ...
   'Position', [0.22 0.35 0.1 0.04]);

hOk=uicontrol(handles.GA.algoritm_parameters, 'Style', 'pushbutton', ...
   'String', 'Ok', ...
   'Callback', @Ok_GAparam_cb, ...
   'Units', 'normalized', ...
   'Position', [0.45 0.1 0.1 0.04]);

% Save handles
guidata(handles.GA.algoritm_parameters,handles);
% Make the GUI visible.
set(handles.GA.algoritm_parameters, 'Visible','on');
% Wait for close-button
uiwait(handles.GA.algoritm_parameters)
% update handles-data
handles = guidata(handles.GA.algoritm_parameters);
close(handles.GA.algoritm_parameters);

end

function Ok_GAparam_cb(hObject, eventdata)
handles = guidata(hObject);
handles.GA.exp_weight = str2double(get(handles.GA.htimes, 'String'));
%algorithm parameters
handles.GA.NIND = str2double(get(handles.GA.hNIND, 'String'));
handles.GA.GGAP = str2double(get(handles.GA.hGGAP, 'String'));
handles.GA.XOVR = str2double(get(handles.GA.hXOVR, 'String'));
handles.GA.MUTR = str2double(get(handles.GA.hMUTR, 'String'));
handles.GA.MAXGEN = str2double(get(handles.GA.hMAXGEN, 'String'));
handles.GA.INSR = str2double(get(handles.GA.hINSR, 'String'));
handles.GA.SUBPOP = str2double(get(handles.GA.hSUBPOP, 'String'));
handles.GA.MIGR = str2double(get(handles.GA.hMIGR, 'String'));
handles.GA.MIGGEN = str2double(get(handles.GA.hMIGGEN, 'String'));
guidata(hObject, handles);
uiresume(handles.GA.algoritm_parameters);
end

function weight_exp_cb(hObject, eventdata, type)
handles = guidata(hObject);

handles.GA.hexp_weight = figure(...
   'Visible', 'off',...
   'Name', 'Choose important areas',...
   'toolbar', 'none', ...
   'menubar', 'none', ...
   'NumberTitle', 'off', ...
   'HandleVisibility','callback', ...
   'Units', 'normalized', ...
   'Position',[0.2,0.05,0.6,0.6],...
   'Color', get(0,...
   'defaultuicontrolbackgroundcolor'));

hOk = uicontrol(handles.GA.hexp_weight, 'Style', 'pushbutton', ...
   'string', 'Ok', ...
   'Units', 'normalized', ...
   'Position', [0.93 0.5 0.044 0.05], ...
   'Callback', @OK_weight_cb);


X = [];
Y = [];

for i = 1:length(handles.GA.data)
    index = 0;
   if isequal(handles.GA.data(i).check,1)
      index = i;
      break
   end
   
end
if strcmp(type, 'TGA')
   X = handles.GA.data(index).temperature;
   Y = handles.GA.data(index).TGA;
else
   X = handles.GA.data(index).time;
   Y = handles.GA.data(index).MLR;
end
hNext = uicontrol(handles.GA.hexp_weight, 'Style', 'pushbutton', ...
   'string', 'More', ...
   'Units', 'normalized', ...
   'Position', [0.93 0.6 0.044 0.05], ...
   'Callback', {@more_weight_cb,X,Y});
hClear = uicontrol(handles.GA.hexp_weight, 'Style', 'pushbutton', ...
   'string', 'Clear', ...
   'Units', 'normalized', ...
   'Position', [0.93 0.7 0.044 0.05], ...
   'Callback', {@clear_weight_cb,X,Y});

set(handles.GA.hexp_weight, 'Visible', 'on');
h = plot(X,Y);
hold on
if strcmp(type, 'TGA')
   xlabel('Temperature (C)');
   ylabel('Mass fraction (kg/kg)');
else
   xlabel('Time (s)');
   ylabel('Mass loss rate (kg/sm^2)');
end
set(h, 'LineWidth', 2);
handles.GA.weight_n = 1;
%handles.GA.enough_weights = false;

guidata(handles.GA.hexp_weight, handles);

handles = choose_areas(handles, X,Y);
guidata(handles.GA.hexp_weight, handles);

uiwait(handles.GA.hexp_weight);

handles = guidata(hObject);

close(handles.GA.hexp_weight);

end

function handles = choose_areas(handles, X,Y)
set(0, 'CurrentFigure', handles.GA.hexp_weight);
currentpointer=get(handles.GA.hexp_weight, 'Pointer');
set(handles.GA.hexp_weight, 'Pointer','fullcrosshair');

pos = ginput(1);
pos(2) = interp1(X, Y,pos(1));
hold on
handles.GA.homark(1) = plot(pos(1), pos(2), 'ko');
i1 = 0;
for i = 1:length(X)
   if X(i)<= pos(1) && X(i+1) > pos(1)
      i1 = i;
      break
   end
end
%
pos = ginput(1);
pos(2) = interp1(X, Y,pos(1));
set(0, 'CurrentFigure', handles.GA.hexp_weight);
hold on
handles.GA.homark(2) = plot(pos(1), pos(2), 'ko');
i2 = 0;
for i = 1:length(X)
   if X(i)<= pos(1) && X(i+1) > pos(1)
      i2 = i;
      break
   end
end

handles.GA.weight_index(handles.GA.weight_n,:) = [i1,i2];

handles.GA.hWeight_exp(handles.GA.weight_n,1) = plot(X(i1:i2),Y(i1:i2),'r');
set(handles.GA.hWeight_exp(handles.GA.weight_n,1), 'LineWidth', 2);
txt = [mat2str(X(i1)), '-', mat2str(X(i2))];
handles.GA.hWeight_exp(handles.GA.weight_n,2) = text(X(i1),Y(i1), txt,'EdgeColor','red');

if ishandle(handles.GA.homark)
   delete(handles.GA.homark);
end
guidata(handles.GA.algoritm_parameters, handles);
end

function more_weight_cb(hObject, eventdata, X, Y)
    handles = guidata(hObject);
    handles.GA.weight_n = handles.GA.weight_n+1;
    handles = choose_areas(handles, X,Y);
    guidata(hObject, handles);
end

function clear_weight_cb(hObject,eventdata,X,Y)
handles = guidata(hObject);
    if isfield(handles.GA, 'weight_index')
        set(0, 'CurrentFigure', handles.GA.hexp_weight);
        l = length(handles.GA.weight_index(:,1));
        i1 = handles.GA.weight_index(l,1);
        i2 = handles.GA.weight_index(l,2);
        delete(handles.GA.hWeight_exp(l,:));
        %h = plot(X(i1:i2),Y(i1:i2),'b');
        %set(h, 'LineWidth', 2);
        handles.GA.weight_index = handles.GA.weight_index(1:l-1,:);
        if isempty(handles.GA.weight_index(1:l-1))
            handles.GA = rmfield(handles.GA,'weight_index');
            
        end
        handles.GA.weight_n = handles.GA.weight_n-1;
        guidata(hObject, handles);
        handles = choose_areas(handles, X,Y);
        guidata(hObject, handles);
    else
       msgbox('Cannot clear anything yet'); 
    end

end

function OK_weight_cb(hObject, eventdata)
    handles = guidata(hObject);
    
    uiresume(handles.GA.hexp_weight);
    guidata(hObject, handles);
    handles = guidata(hObject);
end
