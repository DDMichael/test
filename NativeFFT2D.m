function[real2DFFTNative, imag2DFFTNative]= NativeFFT2D(realInput, imagInput)    
%     theta = 0:(2*pi)/63:2*pi;
    x = realInput;
    y = imagInput;
%     x = 122*sin(2*theta)+122*cos(3*theta);
%     y = 122*cos(5*theta)+122*sin(8*theta);
    z_mat = x + 1j*y;
    b = reshape(z_mat, [8 8]).';
    c = fft2(b);
    real2DFFTNative = real(c(:));
    imag2DFFTNative = imag(c(:));
end

%% lack of one transpose