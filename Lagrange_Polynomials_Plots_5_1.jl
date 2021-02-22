using Plots
L1(x) = (x*(x-exp(1))*(x - pi))/((-3)*(-3 - exp(1))*(-3 - pi)) % y1
L2(x) = ((x + 3)*(x - exp(1))*(x - pi))/((-3)*(exp(1))*(pi)) % y2
L3(x) = ((x+3)*(x)*(x-pi))/((exp(1))*(exp(1) + 3)*(exp(1) - pi)) % y3
L4(x) = ((x + 3)*(x)*(x - exp(1)))/((pi + 3)*(pi)*(pi - exp(1))) % y4
plot([L1,L2,L3,L4], title = "Lagrange Polynomials",-3, pi)
xlabel!("x")
ylabel!("y")
