function varargout = GUITest6(varargin)
% GUITEST6 MATLAB code for GUITest6.fig
%      GUITEST6, by itself, creates a new GUITEST6 or raises the existing
%      singleton*.
%
%      H = GUITEST6 returns the handle to a new GUITEST6 or the handle to
%      the existing singleton*.
%
%      GUITEST6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITEST6.M with the given input arguments.
%
%      GUITEST6('Property','Value',...) creates a new GUITEST6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUITest6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUITest6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUITest6

% Last Modified by GUIDE v2.5 03-May-2023 00:42:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUITest6_OpeningFcn, ...
                   'gui_OutputFcn',  @GUITest6_OutputFcn, ...
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


% --- Executes just before GUITest6 is made visible.
function GUITest6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUITest6 (see VARARGIN)

% Choose default command line output for GUITest6
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUITest6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUITest6_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
a=imread('1.jpg');
axes(handles.axes1);
imshow(a);
val=get(hObject,'Value');
if(val==1)
    axes(handles.axes2);
    imshow(a);
elseif(val==2)    
    x=rgb2gray(a);
    axes(handles.axes2);
    imshow(x);
else
    x=rgb2gray(a);
    axes(handles.axes2);
    imshow(imbinarize(x));
end
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
