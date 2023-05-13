function varargout = GUITest4(varargin)
% GUITEST4 MATLAB code for GUITest4.fig
%      GUITEST4, by itself, creates a new GUITEST4 or raises the existing
%      singleton*.
%
%      H = GUITEST4 returns the handle to a new GUITEST4 or the handle to
%      the existing singleton*.
%
%      GUITEST4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITEST4.M with the given input arguments.
%
%      GUITEST4('Property','Value',...) creates a new GUITEST4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUITest4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUITest4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUITest4

% Last Modified by GUIDE v2.5 02-May-2023 15:04:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUITest4_OpeningFcn, ...
                   'gui_OutputFcn',  @GUITest4_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before GUITest4 is made visible.
function GUITest4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUITest4 (see VARARGIN)

% Choose default command line output for GUITest4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUITest4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUITest4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
A=get(hObject,'String');
switch A
    case '10'
        set(handles.text2,'FontSize',10);
    case '14'
        set(handles.text2,'FontSize',14);
    case '18'
        set(handles.text2,'FontSize',18);
end


% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup2 
A=get(hObject,'String');

switch A
    case 'Sine'
        ezplot('sin(x)',[0 10]);
    case 'Cosine'
        ezplot('cos(x)',[0 10]);
    case 'Tangent'
        ezplot('tan(x)',[0 10]);
end


% --- Executes on button press in GridCheck.
function GridCheck_Callback(hObject, eventdata, handles)
value=get(hObject,'Value');
if value==1
    grid on;
else
    grid off;
end

% Hint: get(hObject,'Value') returns toggle state of GridCheck
