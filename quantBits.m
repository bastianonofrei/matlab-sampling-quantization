function [Q,q]=quantBits(input,N,A)

%Q = quantBits(input,N,A)
%This function quantizes the input according to the amplitude and the bit
%depth
% 2^m ..  m=8 =>  2^8 quantization levels  (256)

% bit depth (N) 

%quantization step size (q)

q=(A-(-A))/(2^N);
Q=round(input/q)*q;