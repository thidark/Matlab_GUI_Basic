function varargout = GUITest7(varargin)
% GUITEST7 MATLAB code for GUITest7.fig
%      GUITEST7, by itself, creates a new GUITEST7 or raises the existing
%      singleton*.
%
%      H = GUITEST7 returns the handle to a new GUITEST7 or the handle to
%      the existing singleton*.
%
%      GUITEST7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITEST7.M with the given input arguments.
%
%      GUITEST7('Property','Value',...) creates a new GUITEST7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUITest7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUITest7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUITest7

% Last Modified by GUIDE v2.5 03-May-2023 01:21:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUITest7_OpeningFcn, ...
                   'gui_OutputFcn',  @GUITest7_OutputFcn, ...
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


% --- Executes just before GUITest7 is made visible.
function GUITest7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUITest7 (see VARARGIN)

% Choose default command line output for GUITest7
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUITest7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUITest7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
val=get(handles.listbox1,'Value');
a=str2num(get(handles.IN1,'String'));
b=str2num(get(handles.IN2,'String'));

switch (val)
    case 2
        c=a+b;
    case 3
        c=a-b;
    case 4
        c=a*b;
    case 5
        c=a/b;
    otherwise
        c='Option invalid'
end

set(handles.OUT,'String',c);
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CLEAR.
function CLEAR_Callback(hObject, eventdata, handles)
set(handles.IN1,'String','');
set(handles.IN2,'String','');
set(handles.OUT,'String','');
% hObject    handle to CLEAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CLEAR



function OUT_Callback(hObject, eventdata, handles)
% hObject    handle to OUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OUT as text
%        str2double(get(hObject,'String')) returns contents of OUT as a double


% --- Executes during object creation, after setting all properties.
function OUT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function IN1_Callback(hObject, eventdata, handles)
% hObject    handle to IN1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IN1 as text
%        str2double(get(hObject,'String')) returns contents of IN1 as a double


% --- Executes during object creation, after setting all properties.
function IN1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IN1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function IN2_Callback(hObject, eventdata, handles)
% hObject    handle to IN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IN2 as text
%        str2double(get(hObject,'String')) returns contents of IN2 as a double


% --- Executes during object creation, after setting all properties.
function IN2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
