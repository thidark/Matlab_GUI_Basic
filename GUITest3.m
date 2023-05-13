function varargout = GUITest3(varargin)
% GUITEST3 MATLAB code for GUITest3.fig
%      GUITEST3, by itself, creates a new GUITEST3 or raises the existing
%      singleton*.
%
%      H = GUITEST3 returns the handle to a new GUITEST3 or the handle to
%      the existing singleton*.
%
%      GUITEST3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITEST3.M with the given input arguments.
%
%      GUITEST3('Property','Value',...) creates a new GUITEST3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUITest3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUITest3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUITest3

% Last Modified by GUIDE v2.5 02-May-2023 00:19:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUITest3_OpeningFcn, ...
                   'gui_OutputFcn',  @GUITest3_OutputFcn, ...
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


% --- Executes just before GUITest3 is made visible.
function GUITest3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUITest3 (see VARARGIN)

% Choose default command line output for GUITest3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUITest3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUITest3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in SineBtn.
function SineBtn_Callback(hObject, eventdata, handles)
% hObject    handle to SineBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t=0:0.1:2*pi;
x=sin(t);
plot(t,x);
axes(handles.axes1);

% --- Executes on button press in BarBtn.
function BarBtn_Callback(hObject, eventdata, handles)
% hObject    handle to BarBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=randi(100,3,3);
axes(handles.axes1);
bar(A);
set(handles.uitable1,'Data',A);
