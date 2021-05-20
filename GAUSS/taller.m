
initial_vector = [0.05, 0.3, 1, 15,130,2021];
vadermonde_1 = generate_vandermonde_matrix(independent_vector_1);
independent_vector_1 = [0.1108033125;0.2033079999999999;2.1;482358.0999999999;22421268896.09999847412109375;20237736065565540.0]

[system_gauss, independent_gauss]=GaussMaximalPivoting(initial_vector, independent_vector_1)
solution_gauss_1 = GaussTrianguloSuperior(system_gauss, independent_gauss)

[system_gauss, independent_gauss]=GaussClasico(initial_vector, independent_vector_1)
solution_gauss_1 = GaussTrianguloSuperior(system_gauss, independent_gauss)