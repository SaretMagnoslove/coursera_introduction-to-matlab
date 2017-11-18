function varargout = smooth(varargin)
% SMOOTH MATLAB code for smooth.fig
%      SMOOTH, by itself, creates a new SMOOTH or raises the existing
%      singleton*.
%
%      H = SMOOTH returns the handle to a new SMOOTH or the handle to
%      the existing singleton*.
%
%      SMOOTH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SMOOTH.M with the given input arguments.
%
%      SMOOTH('Property','Value',...) creates a new SMOOTH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before smooth_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to smooth_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help smooth

% Last Modified by GUIDE v2.5 07-Jul-2017 22:40:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @smooth_OpeningFcn, ...
                   'gui_OutputFcn',  @smooth_OutputFcn, ...
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


% --- Executes just before smooth is made visible.
function smooth_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to smooth (see VARARGIN)

% Choose default command line output for smooth
handles.output = hObject;

% add our own data fields
handles.minFreq = 1;
handles.maxFreq = 10;
handles.amp = 1;
handles.freq = 1;
handles.t = 0:0.001:1;
handles.x = handles.amp * sin(2*pi*handles.freq*handles.t);
plot(handles.axes,handles.t,handles.x);
set(handles.axes,'XMinorTick','on');
grid on

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes smooth wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = smooth_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on slider movement.
function freqSlider_Callback(hObject, eventdata, handles)
% hObject    handle to freqSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
fs = get(handles.freqSlider,'Value');
handles.freq = handles.minFreq + fs * (handles.maxFreq - handles.minFreq);
handles.x = handles.amp * sin(2*pi*handles.freq*handles.t);
plot(handles.axes,handles.t,handles.x);
set(handles.axes,'XMinorTick','on');
grid on
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function freqSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to freqSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function amplEdit_Callback(hObject, eventdata, handles)
% hObject    handle to amplEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplEdit as text
%        str2double(get(hObject,'String')) returns contents of amplEdit as a double
amp = str2double(get(hObject,'String'));
if isnan(amp) || ~isreal(amp)
% isdouble returns NaN for non-numbers and f1 cannot be complex
% Disable the Plot button and change its string to say why
set(hObject,'String',num2str(handles.amp));
else
if abs(amp) > 100
amp = 100;
set(hObject,'String',num2str(amp));
end
handles.amp = amp;
handles.x = handles.amp * sin(2*pi*handles.freq*handles.t);
plot(handles.axes,handles.t,handles.x);
set(handles.axes,'XMinorTick','on');
grid on
guidata(hObject, handles);
end

% --- Executes during object creation, after setting all properties.
function amplEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
