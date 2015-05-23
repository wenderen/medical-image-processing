function output = gradient_quadfunction(x_loop, imageNoisy, alpha, mask)
output = (1-alpha)*2*(ifft2(mask .* fft2(x_loop)) - ifft2(mask .* imageNoisy)) + 2*alpha*(4*x_loop-circshift(x_loop,1,1)-circshift(x_loop,-1, 1)-circshift(x_loop, 1, 2)-circshift(x_loop, -1, 2));