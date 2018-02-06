function varargout = SolverGUI(varargin)
%SOLVERGUI M-file for SolverGUI.fig
%      SOLVERGUI, by itself, creates a new SOLVERGUI or raises the existing
%      singleton*.
%
%      H = SOLVERGUI returns the handle to a new SOLVERGUI or the handle to
%      the existing singleton*.
%
%      SOLVERGUI('Property','Value',...) creates a new SOLVERGUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to SolverGUI_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      SOLVERGUI('CALLBACK') and SOLVERGUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in SOLVERGUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SolverGUI

% Last Modified by GUIDE v2.5 25-Apr-2016 20:39:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SolverGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @SolverGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SolverGUI is made visible.
function SolverGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for SolverGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
x = varargin{1};
global a;
global w;
global showtext;
showtext = {};

w = 1;
global movelist;
a = x{1};
selection = a(10, 1);

% movelist = optimize(movelist);
% movelist(length(movelist)+1) = 0;
for i = 1:9
    for j = 1:12
        switch a(i, j)
            case 'r'
                b{i, j} = 'Red';
            case 'b'
                b{i, j} = 'Blue';
            case 'y'
                b{i, j} = 'Yellow';
            case 'o'
                b{i, j} = [1 .6 0];
            case 'w'
                b{i, j} = 'White';
            case 'g'
                b{i, j} = 'Green';
            otherwise
                b{i, j} = '';
        end
    end
end


global visibletext;
visibletext = 1;

% figure

set(handles.text17, 'BackgroundColor', b{1, 7});
set(handles.text18, 'BackgroundColor', b{1, 8});
set(handles.text19, 'BackgroundColor', b{1, 9});
set(handles.text27, 'BackgroundColor', b{2, 7});
set(handles.text28, 'BackgroundColor', b{2, 8});
set(handles.text29, 'BackgroundColor', b{2, 9});
set(handles.text37, 'BackgroundColor', b{3, 7});
set(handles.text38, 'BackgroundColor', b{3, 8});
set(handles.text39, 'BackgroundColor', b{3, 9});

set(handles.text47, 'BackgroundColor', b{4, 7});
set(handles.text48, 'BackgroundColor', b{4, 8});
set(handles.text49, 'BackgroundColor', b{4, 9});
set(handles.text57, 'BackgroundColor', b{5, 7});
set(handles.text58, 'BackgroundColor', b{5, 8});
set(handles.text59, 'BackgroundColor', b{5, 9});
set(handles.text67, 'BackgroundColor', b{6, 7});
set(handles.text68, 'BackgroundColor', b{6, 8});
set(handles.text69, 'BackgroundColor', b{6, 9});

set(handles.text77, 'BackgroundColor', b{7, 7});
set(handles.text78, 'BackgroundColor', b{7, 8});
set(handles.text79, 'BackgroundColor', b{7, 9});
set(handles.text87, 'BackgroundColor', b{8, 7});
set(handles.text88, 'BackgroundColor', b{8, 8});
set(handles.text89, 'BackgroundColor', b{8, 9});
set(handles.text97, 'BackgroundColor', b{9, 7});
set(handles.text98, 'BackgroundColor', b{9, 8});
set(handles.text99, 'BackgroundColor', b{9, 9});

set(handles.text44, 'BackgroundColor', b{4, 4});
set(handles.text45, 'BackgroundColor', b{4, 5});
set(handles.text46, 'BackgroundColor', b{4, 6});
set(handles.text54, 'BackgroundColor', b{5, 4});
set(handles.text55, 'BackgroundColor', b{5, 5});
set(handles.text56, 'BackgroundColor', b{5, 6});
set(handles.text64, 'BackgroundColor', b{6, 4});
set(handles.text65, 'BackgroundColor', b{6, 5});
set(handles.text66, 'BackgroundColor', b{6, 6});

set(handles.text41, 'BackgroundColor', b{4, 1});
set(handles.text42, 'BackgroundColor', b{4, 2});
set(handles.text43, 'BackgroundColor', b{4, 3});
set(handles.text51, 'BackgroundColor', b{5, 1});
set(handles.text52, 'BackgroundColor', b{5, 2});
set(handles.text53, 'BackgroundColor', b{5, 3});
set(handles.text61, 'BackgroundColor', b{6, 1});
set(handles.text62, 'BackgroundColor', b{6, 2});
set(handles.text63, 'BackgroundColor', b{6, 3});

set(handles.text410, 'BackgroundColor', b{4, 10});
set(handles.text411, 'BackgroundColor', b{4, 11});
set(handles.text412, 'BackgroundColor', b{4, 12});
set(handles.text510, 'BackgroundColor', b{5, 10});
set(handles.text511, 'BackgroundColor', b{5, 11});
set(handles.text512, 'BackgroundColor', b{5, 12});
set(handles.text610, 'BackgroundColor', b{6, 10});
set(handles.text611, 'BackgroundColor', b{6, 11});
set(handles.text612, 'BackgroundColor', b{6, 12});
movelist = [];
[newcube, movelist] = Solve(a, movelist);
if (selection == 2)
    [newcube, movelist] = Multicolored(newcube, movelist);
elseif (selection == 3)
    [newcube, movelist] = SquareInMiddle(newcube, movelist);
end
movelist(length(movelist) + 1) = 0;
if (~isempty(movelist))
    switch movelist(w)
        case 0
            next = 'Completed';
        case 1
            next = 'Right Clockwise';
        case 2
            next = 'Right Counterclockwise';
        case 3
            next = 'Left Clockwise';
        case 4
            next = 'Left Counterclockwise';
        case 5
            next = 'Back Clockwise';
        case 6
            next = 'Back Counterclockwise';
        case 7
            next = 'Bottom Clockwise';
        case 8
            next = 'Bottom Counterclockwise';
        case 9
            next = 'Front Clockwise';
        case 10
            next = 'Front Counterclockwise';
        case 11
            next = 'Top Clockwise';
        case 12
            next = 'Top Counterclockwise';
        case 13
            next = 'Middle Row Right';
        case 14
            next = 'Middle Row Left';
        case 15
            next = 'Middle Column Up';
        case 16
            next = 'Middle Column Down';

    end
    set(handles.nextmove, 'String', next);
else
    set(handles.nextmove, 'String', 'Completed');
end

for i = 1:length(movelist)
    switch movelist(i)
        case 0
            showtext{i} = 'Completed  ';
        case 1
            showtext{i} = 'Right Clockwise  ';
        case 2
            showtext{i} = 'Right Counterclockwise  ';
        case 3
            showtext{i} = 'Left Clockwise  ';
        case 4
            showtext{i} = 'Left Counterclockwise  ';
        case 5
            showtext{i} = 'Back Clockwise  ';
        case 6
            showtext{i} = 'Back Counterclockwise  ';
        case 7
            showtext{i} = 'Bottom Clockwise  ';
        case 8
            showtext{i} = 'Bottom Counterclockwise  ';
        case 9
            showtext{i} = 'Front Clockwise  ';
        case 10
            showtext{i} = 'Front Counterclockwise  ';
        case 11
            showtext{i} = 'Top Clockwise  ';
        case 12
            showtext{i} = 'Top Counterclockwise  ';
        case 13
            showtext{i} = 'Middle Row Right  ';
        case 14
            showtext{i} = 'Middle Row Left  ';
        case 15
            showtext{i} = 'Middle Column Up  ';
        case 16
            showtext{i} = 'Middle Column Down  ';

    end
end

global h
h = uicontrol('Style','edit','Position',[10 10 250 500],...
      'min',0,'max',2,'enable','inactive'); % create a listbox object
% showtext;
if (~isempty(showtext))
    showtext{1} = strrep(showtext{1}, '  ', '  *');
    set(h,'String',showtext) % display the string
else
    set(h, 'String', 'No Moves');
end
set(handles.showhidebutton, 'String', 'Hide Moves');

% UIWAIT makes SolverGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SolverGUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in nextbutton.
function nextbutton_Callback(hObject, eventdata, handles)
% hObject    handle to nextbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global movelist;
global w;
global showtext;
global h;
if (w < length(showtext))   
    showtext{w} = strrep(showtext{w}, '  *', '  ');
end

if (w < length(movelist))
    switch movelist(w)
        case 1
            a = R(a);
        case 2
            a = Ri(a);
        case 3
            a = L(a);
        case 4
            a = Li(a);
        case 5
            a = B(a);
        case 6
            a = Bi(a);
        case 7
            a = D(a);
        case 8
            a = Di(a);
        case 9
            a = F(a);
        case 10
            a = Fi(a);
        case 11
            a = U(a);
        case 12
            a = Ui(a);
        case 13
            a = HR(a);
        case 14
            a = HL(a);
        case 15
            a = VU(a);
        case 16
            a = VD(a);
    end
     w = w + 1;
    if (w < length(showtext))
        showtext{w} = strrep(showtext{w}, '  ', '  *');
    end
    
    switch movelist(w)
        case 0
            next = 'Completed';
        case 1
            next = 'Right Clockwise';
        case 2
            next = 'Right Counterclockwise';
        case 3
            next = 'Left Clockwise';
        case 4
            next = 'Left Counterclockwise';
        case 5
            next = 'Back Clockwise';
        case 6
            next = 'Back Counterclockwise';
        case 7
            next = 'Bottom Clockwise';
        case 8
            next = 'Bottom Counterclockwise';
        case 9
            next = 'Front Clockwise';
        case 10
            next = 'Front Counterclockwise';
        case 11
            next = 'Top Clockwise';
        case 12
            next = 'Top Counterclockwise';
        case 13
            next = 'Middle Row Right';
        case 14
            next = 'Middle Row Left';
        case 15
            next = 'Middle Column Up';
        case 16
            next = 'Middle Column Down';

    end
    
    set(h,'String',showtext) % display the string
    set(handles.nextmove, 'String', next);
    for i = 1:9
        for j = 1:12
            switch a(i, j)
                case 'r'
                    b{i, j} = 'Red';
                case 'b'
                    b{i, j} = 'Blue';
                case 'y'
                    b{i, j} = 'Yellow';
                case 'o'
                    b{i, j} = [1 .6 0];
                case 'w'
                    b{i, j} = 'White';
                case 'g'
                    b{i, j} = 'Green';
                otherwise
                    b{i, j} = '';
            end
        end
    end
    set(handles.text17, 'BackgroundColor', b{1, 7});
    set(handles.text18, 'BackgroundColor', b{1, 8});
    set(handles.text19, 'BackgroundColor', b{1, 9});
    set(handles.text27, 'BackgroundColor', b{2, 7});
    set(handles.text28, 'BackgroundColor', b{2, 8});
    set(handles.text29, 'BackgroundColor', b{2, 9});
    set(handles.text37, 'BackgroundColor', b{3, 7});
    set(handles.text38, 'BackgroundColor', b{3, 8});
    set(handles.text39, 'BackgroundColor', b{3, 9});

    set(handles.text47, 'BackgroundColor', b{4, 7});
    set(handles.text48, 'BackgroundColor', b{4, 8});
    set(handles.text49, 'BackgroundColor', b{4, 9});
    set(handles.text57, 'BackgroundColor', b{5, 7});
    set(handles.text58, 'BackgroundColor', b{5, 8});
    set(handles.text59, 'BackgroundColor', b{5, 9});
    set(handles.text67, 'BackgroundColor', b{6, 7});
    set(handles.text68, 'BackgroundColor', b{6, 8});
    set(handles.text69, 'BackgroundColor', b{6, 9});

    set(handles.text77, 'BackgroundColor', b{7, 7});
    set(handles.text78, 'BackgroundColor', b{7, 8});
    set(handles.text79, 'BackgroundColor', b{7, 9});
    set(handles.text87, 'BackgroundColor', b{8, 7});
    set(handles.text88, 'BackgroundColor', b{8, 8});
    set(handles.text89, 'BackgroundColor', b{8, 9});
    set(handles.text97, 'BackgroundColor', b{9, 7});
    set(handles.text98, 'BackgroundColor', b{9, 8});
    set(handles.text99, 'BackgroundColor', b{9, 9});

    set(handles.text44, 'BackgroundColor', b{4, 4});
    set(handles.text45, 'BackgroundColor', b{4, 5});
    set(handles.text46, 'BackgroundColor', b{4, 6});
    set(handles.text54, 'BackgroundColor', b{5, 4});
    set(handles.text55, 'BackgroundColor', b{5, 5});
    set(handles.text56, 'BackgroundColor', b{5, 6});
    set(handles.text64, 'BackgroundColor', b{6, 4});
    set(handles.text65, 'BackgroundColor', b{6, 5});
    set(handles.text66, 'BackgroundColor', b{6, 6});

    set(handles.text41, 'BackgroundColor', b{4, 1});
    set(handles.text42, 'BackgroundColor', b{4, 2});
    set(handles.text43, 'BackgroundColor', b{4, 3});
    set(handles.text51, 'BackgroundColor', b{5, 1});
    set(handles.text52, 'BackgroundColor', b{5, 2});
    set(handles.text53, 'BackgroundColor', b{5, 3});
    set(handles.text61, 'BackgroundColor', b{6, 1});
    set(handles.text62, 'BackgroundColor', b{6, 2});
    set(handles.text63, 'BackgroundColor', b{6, 3});

    set(handles.text410, 'BackgroundColor', b{4, 10});
    set(handles.text411, 'BackgroundColor', b{4, 11});
    set(handles.text412, 'BackgroundColor', b{4, 12});
    set(handles.text510, 'BackgroundColor', b{5, 10});
    set(handles.text511, 'BackgroundColor', b{5, 11});
    set(handles.text512, 'BackgroundColor', b{5, 12});
    set(handles.text610, 'BackgroundColor', b{6, 10});
    set(handles.text611, 'BackgroundColor', b{6, 11});
    set(handles.text612, 'BackgroundColor', b{6, 12});
end


% --- Executes on button press in previousmove.
function previousmove_Callback(hObject, eventdata, handles)
% hObject    handle to previousmove (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global movelist;
global w;
global h;
global showtext;
if (w > 1)
    if (w <= length(showtext))
        showtext{w} = strrep(showtext{w}, '  *', '  ');
    end
     
    w = w - 1;
    showtext{w} = strrep(showtext{w}, '  ', '  *');
    set(h,'String',showtext) % display the string
    switch movelist(w)
        case 1
            a = Ri(a);
        case 2
            a = R(a);
        case 3
            a = Li(a);
        case 4
            a = L(a);
        case 5
            a = Bi(a);
        case 6
            a = B(a);
        case 7
            a = Di(a);
        case 8
            a = D(a);
        case 9
            a = Fi(a);
        case 10
            a = F(a);
        case 11
            a = Ui(a);
        case 12
            a = U(a);
        case 13
            a = HL(a);
        case 14
            a = HR(a);
        case 15
            a = VD(a);
        case 16
            a = VU(a);
    end
    switch movelist(w)
        case 0
            next = 'Completed';
        case 1
            next = 'Right Clockwise';
        case 2
            next = 'Right Counterclockwise';
        case 3
            next = 'Left Clockwise';
        case 4
            next = 'Left Counterclockwise';
        case 5
            next = 'Back Clockwise';
        case 6
            next = 'Back Counterclockwise';
        case 7
            next = 'Bottom Clockwise';
        case 8
            next = 'Bottom Counterclockwise';
        case 9
            next = 'Front Clockwise';
        case 10
            next = 'Front Counterclockwise';
        case 11
            next = 'Top Clockwise';
        case 12
            next = 'Top Counterclockwise';
        case 13
            next = 'Middle Row Right';
        case 14
            next = 'Middle Row Left';
        case 15
            next = 'Middle Column Up';
        case 16
            next = 'Middle Column Down';

    end
    set(handles.nextmove, 'String', next);

    for i = 1:9
        for j = 1:12
            switch a(i, j)
                case 'r'
                    b{i, j} = 'Red';
                case 'b'
                    b{i, j} = 'Blue';
                case 'y'
                    b{i, j} = 'Yellow';
                case 'o'
                    b{i, j} = [1 .6 0];
                case 'w'
                    b{i, j} = 'White';
                case 'g'
                    b{i, j} = 'Green';
                otherwise
                    b{i, j} = '';
            end
        end
    end
    set(handles.text17, 'BackgroundColor', b{1, 7});
    set(handles.text18, 'BackgroundColor', b{1, 8});
    set(handles.text19, 'BackgroundColor', b{1, 9});
    set(handles.text27, 'BackgroundColor', b{2, 7});
    set(handles.text28, 'BackgroundColor', b{2, 8});
    set(handles.text29, 'BackgroundColor', b{2, 9});
    set(handles.text37, 'BackgroundColor', b{3, 7});
    set(handles.text38, 'BackgroundColor', b{3, 8});
    set(handles.text39, 'BackgroundColor', b{3, 9});

    set(handles.text47, 'BackgroundColor', b{4, 7});
    set(handles.text48, 'BackgroundColor', b{4, 8});
    set(handles.text49, 'BackgroundColor', b{4, 9});
    set(handles.text57, 'BackgroundColor', b{5, 7});
    set(handles.text58, 'BackgroundColor', b{5, 8});
    set(handles.text59, 'BackgroundColor', b{5, 9});
    set(handles.text67, 'BackgroundColor', b{6, 7});
    set(handles.text68, 'BackgroundColor', b{6, 8});
    set(handles.text69, 'BackgroundColor', b{6, 9});

    set(handles.text77, 'BackgroundColor', b{7, 7});
    set(handles.text78, 'BackgroundColor', b{7, 8});
    set(handles.text79, 'BackgroundColor', b{7, 9});
    set(handles.text87, 'BackgroundColor', b{8, 7});
    set(handles.text88, 'BackgroundColor', b{8, 8});
    set(handles.text89, 'BackgroundColor', b{8, 9});
    set(handles.text97, 'BackgroundColor', b{9, 7});
    set(handles.text98, 'BackgroundColor', b{9, 8});
    set(handles.text99, 'BackgroundColor', b{9, 9});

    set(handles.text44, 'BackgroundColor', b{4, 4});
    set(handles.text45, 'BackgroundColor', b{4, 5});
    set(handles.text46, 'BackgroundColor', b{4, 6});
    set(handles.text54, 'BackgroundColor', b{5, 4});
    set(handles.text55, 'BackgroundColor', b{5, 5});
    set(handles.text56, 'BackgroundColor', b{5, 6});
    set(handles.text64, 'BackgroundColor', b{6, 4});
    set(handles.text65, 'BackgroundColor', b{6, 5});
    set(handles.text66, 'BackgroundColor', b{6, 6});

    set(handles.text41, 'BackgroundColor', b{4, 1});
    set(handles.text42, 'BackgroundColor', b{4, 2});
    set(handles.text43, 'BackgroundColor', b{4, 3});
    set(handles.text51, 'BackgroundColor', b{5, 1});
    set(handles.text52, 'BackgroundColor', b{5, 2});
    set(handles.text53, 'BackgroundColor', b{5, 3});
    set(handles.text61, 'BackgroundColor', b{6, 1});
    set(handles.text62, 'BackgroundColor', b{6, 2});
    set(handles.text63, 'BackgroundColor', b{6, 3});

    set(handles.text410, 'BackgroundColor', b{4, 10});
    set(handles.text411, 'BackgroundColor', b{4, 11});
    set(handles.text412, 'BackgroundColor', b{4, 12});
    set(handles.text510, 'BackgroundColor', b{5, 10});
    set(handles.text511, 'BackgroundColor', b{5, 11});
    set(handles.text512, 'BackgroundColor', b{5, 12});
    set(handles.text610, 'BackgroundColor', b{6, 10});
    set(handles.text611, 'BackgroundColor', b{6, 11});
    set(handles.text612, 'BackgroundColor', b{6, 12});
end

function slider_callback1(src,eventdata,arg1)
val = get(src,'Value');
set(arg1,'Position',[0 -val 1 2])


  
  
  
  


% --- Executes on button press in showhidebutton.
function showhidebutton_Callback(hObject, eventdata, handles)
% hObject    handle to showhidebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global h
global visibletext
if (visibletext == 1)
    set(h, 'Visible', 'off');
    set(handles.showhidebutton, 'String', 'Show Moves');
    visibletext = 0;
else
    set(h, 'Visible', 'on');
    set(handles.showhidebutton, 'String', 'Hide Moves');
    visibletext = 1;
end







