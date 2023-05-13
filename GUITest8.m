function varargout = GUITest8(varargin)
% GUITEST8 MATLAB code for GUITest8.fig
%      GUITEST8, by itself, creates a new GUITEST8 or raises the existing
%      singleton*.
%
%      H = GUITEST8 returns the handle to a new GUITEST8 or the handle to
%      the existing singleton*.
%
%      GUITEST8('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITEST8.M with the given input arguments.
%
%      GUITEST8('Property','Value',...) creates a new GUITEST8 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUITest8_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUITest8_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUITest8

% Last Modified by GUIDE v2.5 04-May-2023 21:47:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUITest8_OpeningFcn, ...
                   'gui_OutputFcn',  @GUITest8_OutputFcn, ...
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


% --- Executes just before GUITest8 is made visible.
function GUITest8_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUITest8 (see VARARGIN)

% Choose default command line output for GUITest8
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUITest8 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUITest8_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in histoBtn.
function histoBtn_Callback(hObject, eventdata, handles)
gray=getappdata(0,'gray');
axes(handles.axes1);
imhist(gray);

% hObject    handle to histoBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in complementBtn.
function complementBtn_Callback(hObject, eventdata, handles)
im=getappdata(0,'im');
acomp=imcomplement(im);
axes(handles.axes1);
imshow(acomp);
% hObject    handle to complementBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in edgeBtn.
function edgeBtn_Callback(hObject, eventdata, handles)
im=getappdata(0,'gray');
aedge=edge(im,'Canny');
axes(handles.axes1);
imshow(aedge);
% hObject    handle to edgeBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rotateBtn.
function rotateBtn_Callback(hObject, eventdata, handles)
im=getappdata(0,'im');
aclock=imrotate(im,270);
axes(handles.axes1);
imshow(aclock);
% hObject    handle to rotateBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rotateAntiBtn.
function rotateAntiBtn_Callback(hObject, eventdata, handles)
im=getappdata(0,'im');
aticlock=imrotate(im,90);
axes(handles.axes1);
imshow(aticlock);
% hObject    handle to rotateAntiBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rgb2grayBtn.
function rgb2grayBtn_Callback(hObject, eventdata, handles)
im=getappdata(0,'im');
gray=rgb2gray(im);
axes(handles.axes1);
imshow(gray);
setappdata(0,'gray',gray);
% hObject    handle to rgb2grayBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in binarizeBtn.
function binarizeBtn_Callback(hObject, eventdata, handles)
im=getappdata(0,'gray');
bw=imbinarize(im);
axes(handles.axes1);
imshow(bw);
setappdata(0,'bw',bw);
% hObject    handle to binarizeBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in resetBtn.
function resetBtn_Callback(hObject, eventdata, handles)
im=getappdata(0,'im');
axes(handles.axes1);
imshow(im);
% hObject    handle to resetBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
