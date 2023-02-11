%---------------------------------------------------------------------------------------------------------------------------
% RIME 
% RIME: A physics-based optimization
% Website and codes of RIME:http://www.aliasgharheidari.com/RIME.html

% Hang Su, Dong Zhao, Ali Asghar Heidari, Lei Liu, Xiaoqin Zhang, Majdi Mafarja, Huiling Chen 

%  Last update: Feb 11 2023

%  e-Mail: as_heidari@ut.ac.ir, aliasghar68@gmail.com, chenhuiling.jlu@gmail.com 
%  
%---------------------------------------------------------------------------------------------------------------------------
%  Authors: Ali Asghar Heidari(as_heidari@ut.ac.ir, aliasghar68@gmail.com),Huiling Chen(chenhuiling.jlu@gmail.com) 
%---------------------------------------------------------------------------------------------------------------------------

% After use of code, please users cite to the main paper on RIME:
% Hang Su, Dong Zhao, Ali Asghar Heidari, Lei Liu, Xiaoqin Zhang, Majdi Mafarja, Huiling Chen  
% RIME: A physics-based optimization
%Neurocomputing,ELSEVIER- 2023 
%---------------------------------------------------------------------------------------------------------------------------
% You can also follow the paper for related updates in researchgate: 
% https://www.researchgate.net/profile/Ali_Asghar_Heidari.

%  Website and codes of RIME:%  http://www.aliasgharheidari.com/RIME.html

% You can also use and compare with our other new optimization methods:
                                                                       %(RIME)-2023-http://www.aliasgharheidari.com/RIME.html
																	   %(INFO)-2022- http://www.aliasgharheidari.com/INFO.html
																	   %(RUN)-2021- http://www.aliasgharheidari.com/RUN.html
                                                                       %(HGS)-2021- http://www.aliasgharheidari.com/HGS.html
                                                                       %(SMA)-2020- http://www.aliasgharheidari.com/SMA.html
                                                                       %(HHO)-2019- http://www.aliasgharheidari.com/HHO.html  

%---------------------------------------------------------------------------------------------------------------------------

%---------------------------------------------------------------------------------------------------------------------------
 
clear all %#ok<CLALL>
close all
clc

N=30; % Number of search agents

Function_name='F1'; % Name of the test function, range from F1-F23

iter=100; % Maximum number of iteration times

dimSize = 30;   %dimension size

% Load details of the selected benchmark function
[lb,ub,dim,fobj]=Get_Functions_RIME(Function_name,dimSize);

[Destination_fitness,bestPositions,Convergence_curve]=RIME(N,iter,lb,ub,dim,fobj);


%Draw objective space
figure,
hold on
semilogy(Convergence_curve,'Color','b','LineWidth',4);
title('Convergence curve')
xlabel('Iteration');
ylabel('Best fitness obtained so far');
axis tight
grid off
box on
legend('RIME')

display(['The best location of RIME is: ', num2str(bestPositions)]);
display(['The best fitness of RIME is: ', num2str(Destination_fitness)]);

        



