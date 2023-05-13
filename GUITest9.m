function varargout = GUITest9(varargin)
% GUITEST9 MATLAB code for GUITest9.fig
%      GUITEST9, by itself, creates a new GUITEST9 or raises the existing
%      singleton*.
%
%      H = GUITEST9 returns the handle to a new GUITEST9 or the handle to
%      the existing singleton*.
%
%      GUITEST9('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITEST9.M with the given input arguments.
%
%      GUITEST9('Property','Value',...) creates a new GUITEST9 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUITest9_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUITest9_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUITest9

% Last Modified by GUIDE v2.5 04-May-2023 22:53:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUITest9_OpeningFcn, ...
                   'gui_OutputFcn',  @GUITest9_OutputFcn, ...
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


% --- Executes just before GUITest9 is made visible.
function GUITest9_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUITest9 (see VARARGIN)

% Choose default command line output for GUITest9
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUITest9 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUITest9_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in uploadBtn.
function uploadBtn_Callback(hObject, eventdata, handles)
[rawname,rawpath]=uigetfile({'*.Jpg'});
fullname=[rawpath rawname];
im= imread(fullname);
axis(handles.axes1);
imshow(im);
setappdata(0,'im',im);

% hObject    handle to uploadBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rgbtoGrayBtn.
function rgbtoGrayBtn_Callback(hObject, eventdata, handles)
im=getappdata(0,'im');
gray=rgb2gray(im);
axes(handles.axes1);
imshow(gray);
setappdata(0,'gray',gray);
% hObject    handle to rgbtoGrayBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
