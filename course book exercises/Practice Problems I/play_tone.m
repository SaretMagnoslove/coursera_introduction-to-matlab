function play_tone(f)
Fs = 8192;
t = 0 : 1/Fs : 1;
tone = sin(f * 2 * pi * t);
sound(tone,Fs);