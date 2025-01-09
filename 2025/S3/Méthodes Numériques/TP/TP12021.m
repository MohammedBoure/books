format 
% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =
         % = = = = = =          Question a         = = = = = =
clc;

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =
         % = = = = = =          Question b         = = = = = =
fprintf('\t\t\tMETHODE DE JACOBI ET METHODE DE GAUSS-SEIDEL\n');
fprintf('\t\t\t= = = = = = = = = = = = = = = = = = = = = = =\n\n');

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =
         % = = = = = =          Question c         = = = = = =

%A1=[-5 1 1 2;1 7 2 -1;3 -1 9 -3;1 3 2 6];
A1=[-5 1 1 8;7 1 2 -1;3 -1 9 -3;4 3 2 1];
disp(A1);
%b1=[1;18;-15;20];
b1=[13;6;-15;13];
disp(b1);

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =
         % = = = = = =           Question d          = = = = = =
A=[A1 b1];
fprintf('\tLa matrice augmentée :\n');
disp(A);

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =
         % = = = = = =           Question e          = = = = = =
N=size(A,1);
% condition de convergence
Conv=1;
i=1;
while (Conv==1)&&(i<=N)
    sm=0;    
    for j=1:N
        if j~=i
            sm=sm+abs(A(i,j));
        end
    end
    if sm>abs(A(i,i))
        Conv=0;
    else
        i=i+1;
    end
end
if Conv==1
     fprintf('La matrice est diagonale dominante\n');
else
     fprintf('La matrice n''est pas diagonale dominante\n');
end

touche=input(sprintf('\n\tUne touche pour continuer . . .\n'));

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =
         % = = = = = =           Question f          = = = = = =

         %                    Décomposition de A
fprintf('\t\t\tDECOMPOSITION DE LA MATRICE\n');
fprintf('\t\t\t= = = = = = = = = = = = = =\n');

D=diag(diag(A1));                        %D=tril(triu(A))  || D=eye(N).*A
E=-tril(A1,-1);                          %D-tril(A1)
F=-triu(A1,1);                           %D-triu(A1)
fprintf('\tLa matrice D :\n');disp(D);
fprintf('\tLa matrice E :\n');disp(E);
fprintf('\tLa matrice F :\n');disp(F);

touche=input(sprintf('\n\tUne touche pour continuer . . .\n'));

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =

         % = = = = = =           Question g          = = = = = =


% =   =   =   =   =   =   =  METHODE DE JACOBI  =  =  =   =   =   =   =   = 

fprintf('\t\t\tMETHODE DE JACOBI\n');
fprintf('\t\t\t= = = = = = = = =\n');
fprintf('La matrice d''itération Bj :\n');
Bj=inv(D)*(E+F);
disp(Bj);

% =   =   =   =   =   =   =  METHODE DE GAUSS-SEIDEL  =   =   =   =   =   = 

fprintf('\t\t\tMETHODE DE GAUSS-SEIDEL\n');
fprintf('\t\t\t= = = = = = = = = = = =\n');
fprintf('La matrice d''itération Bgs :\n');

Bgs=inv(D-E)*F

         % = = = = = =           Question h          = = = = = =

rhoj=max(abs(eig(Bj)));
fprintf('\n\t Rho(Bj) = %f ==> ',rhoj);
if rhoj<1
    fprintf('La méthode de Jacobi converge pour cette matrice.\n');
else
    fprintf('La méthode de Jacobi ne converge pas pour cette matrice.\n');
end

rhogs=max(abs(eig(Bgs)));
fprintf('\n\t Rho(Bgs) = %f ==> ',rhogs);
if rhogs<1
    fprintf('La méthode de Gauss-Seidel converge pour cette matrice.\n');
else
    fprintf('La méthode de Gauss-Seidel ne converge pas pour cette matrice.\n');
end


touche=input(sprintf('\n\tUne touche pour continuer . . .\n'));

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =

         % = = = = = =            Question i         = = = = = =
         
if(rhoj<1)&&(rhogs<1)
    if (rhoj<rhogs)
        fprintf('La méthode de Jacobi converge plus vite que la méthode de Gauss-Seidel\n')
    else
        fprintf('La méthode de Gauss-Seidel converge plus vite que la méthode de Jacobi\n')
    end
else
    if(rhoj>1)
        fprintf('La méthode de Jacobi ne converge pas\n');
    end
    if rhogs>1
        fprintf(('La méthode de Gauss-Seidel ne converge pas\n');
    end
end

touche=input(sprintf('\n\tUne touche pour terminer . . .\n'));

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =

         % = = = = = =           Question j          = = = = = =
         
         % = = = = = = Question j pour Jacobi = = = = = =

fprintf('La solution Jacobi :\n');
X0=zeros(N,1);
fprintf('\n\t X0 = ');disp(X0');
X=X0;
epsilon=10^-5;
fprintf('\t Epsilon = ');disp(epsilon');
DX=1;
k=1;
while (abs(DX)>epsilon)&&(k<=30)
    fprintf('\n\tITERATION  : %d \n\n',k);
    for i=1:N
        X(i)=A(i,N+1);
        for j=1:N
            if j~=i
                X(i)=X(i)-A(i,j)*X0(j);
            end
        end
       X(i)=X(i)/A(i,i); 
    end
    fprintf('\n\t X = ');disp(X');
    k=k+1;
    DX=max(abs(X))-max(abs(X0));
    fprintf('\n\t DX = %f\n',DX);
    X0=X;
    touche=input(sprintf('\n\tUne touche pour continuer . . .\n'));
end
fprintf('voici la solution :\n');
fprintf('\t X = ');disp(X');        

         % = = = = = = Question j pour Gauss-Seidel = = = = = =
         
fprintf('La solution Gauss-Seidel :\n');
X0=zeros(N,1);
fprintf('\n\t X0 = ');disp(X0');
X=X0;
epsilon=10^-5;
fprintf('\t Epsilon = ');disp(epsilon');
DX=1;
k=1;
while (abs(DX)>epsilon)&&(k<=30)
    fprintf('\n\tItération  : %d \n',k);
    for i=1:N
        X(i)=A(i,N+1);
        for j=1:N
            if j<i
                X(i)=X(i)-A(i,j)*X(j);
            else
                if j>i
                    X(i)=X(i)-A(i,j)*X0(j);
                end
            end
        end
       X(i)=X(i)/A(i,i); 
    end
    fprintf('\t X = ');disp(X');
    k=k+1;
    DX=max(abs(X))-max(abs(X0));
    fprintf('\n\t DX = %f\n',DX);
    X0=X;
    touche=input(sprintf('\n\tUne touche pour continuer . . .\n'));
end
fprintf('voici la solution :\n');
fprintf('\t X = ');disp(X');

% =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =

touche=input(sprintf('\n\tUne touche pour terminer . . .\n'));

 