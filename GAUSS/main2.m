%%%%%%%%%%%%%%%% EXERCISE 1 %%%%%%%%%%%%%%%%%
disp("SOLVING EXERCISE 1")
disp("\n")

initial_vector_1 = [5/2; 7/3; 11/4];
vandermonde_1 = generate_vandermonde_matrix(initial_vector_1);

independent_vector_1 = [1; 2; 3];

real_solution_1 = [168/5; -842/5; 212];

% Solving the linear equation
[system_gauss, independent_gauss] = GaussClasico(vandermonde_1, independent_vector_1);
solution_gauss_1 = GaussTrianguloSuperior(system_gauss, independent_gauss)';

[abs_error_gauss, rel_error_gauss] = compute_errors(real_solution_1, solution_gauss_1);

disp("Using Gauss method the solution is:")
disp(solution_gauss_1)
disp("Absolute error made with Gauss method:")
disp(abs_error_gauss)
disp("Relative error made with Gauss method:")
disp(rel_error_gauss)
disp("\n")

[system_pivoting, independent_pivoting] = GaussColumnPivoting(vandermonde_1, independent_vector_1);
solution_pivoting_1 = GaussTrianguloSuperior(system_pivoting, independent_pivoting)';

[abs_error_pivoting, rel_error_pivoting] = compute_errors(real_solution_1, solution_pivoting_1);

disp("Using column-pivoting method the solution is:")
disp(solution_pivoting_1)
disp("Absolute error made with column-pivoting method:")
disp(abs_error_pivoting)
disp("Relative error made with column-pivoting method:")
disp(rel_error_pivoting)
disp("\n")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% EXERCISE 2 %%%%%%%%%%%%%%%%%
disp("SOLVING EXERCISE 2")
disp("\n")

initial_vector_2 = [5/2; 7/3; 11/4; 13/5; 17/6; 19/7; 23/8; 29/9];
vandermonde_2 = generate_vandermonde_matrix(initial_vector_2);

independent_vector_2 = [1; 2; 3; 4; 5; 6; 7; 8];

real_solution_2 = [313592014347/340340; 
                   -457459856945933/25989600;
                   493563948366959513/3430627200; 
                   -197436771134498893/302702400; 
                   24307645219148215987/13722508800; 
                   -23727434239811381423/8233505280; 
                   915020783660384899/351859200; 
                   -485845220125397/483840];

% Solving the linear equation
[system_gauss, independent_gauss] = GaussClasico(vandermonde_2, independent_vector_2);
solution_gauss_2 = GaussTrianguloSuperior(system_gauss, independent_gauss)';

[abs_error_gauss, rel_error_gauss] = compute_errors(real_solution_2, solution_gauss_2);

disp("Using Gauss method the solution is:")
disp(solution_gauss_2)
disp("Absolute error made with Gauss method:")
disp(abs_error_gauss)
disp("Relative error made with Gauss method:")
disp(rel_error_gauss)
disp("\n")

[system_pivoting, independent_pivoting] = GaussColumnPivoting(vandermonde_2, independent_vector_2);
solution_pivoting_2 = GaussTrianguloSuperior(system_pivoting, independent_pivoting)';

[abs_error_pivoting, rel_error_pivoting] = compute_errors(real_solution_2, solution_pivoting_2);

disp("Using column-pivoting method the solution is:")
disp(solution_pivoting_2)
disp("Absolute error made with column-pivoting method:")
disp(abs_error_pivoting)
disp("Relative error made with column-pivoting method:")
disp(rel_error_pivoting)
disp("\n")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%