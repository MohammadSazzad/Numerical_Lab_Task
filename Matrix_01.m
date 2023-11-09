function matrix=Matrix_01()
  A=input("Enter Matrix A: ");
  B=input("Enter Matrix B: ");
  
  max_A=max((A(:)));
  fprintf("Max of A Matrix : %d\n",max_A);
  if size(A,2)==size(B,1)
    result=A*B;
    fprintf("Multiplication of A & B : \n",result);
    disp(result);
  else
    fprintf("A & B are not multiplicable.\n");
  end
  endfunction