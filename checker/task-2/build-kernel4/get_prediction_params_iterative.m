function [a] = get_prediction_params (K, y, lambda)
  n = size(K, 1);
  A = K + lambda * eye(n);
  [Q, R] = qr(A);
  a = R \ (Q' * y);
endfunction
