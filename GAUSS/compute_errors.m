function [abs_error, rel_error] = compute_errors(real_solution, approximated_solution)
  [n, m] = size(real_solution);
  abs_error = zeros(size(real_solution));
  rel_error = zeros(size(real_solution));
  
  for i =1:n
    abs_error(i) = abs(real_solution(i)-approximated_solution(i));
    rel_error(i) = abs_error(i)/(abs(real_solution(i)));
  endfor
endfunction