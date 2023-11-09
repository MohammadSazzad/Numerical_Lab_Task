function Bisection=Bisection_02()
  function y=f(x)
    y=x.^2+x-1;
  end
  a=0;
  b=1;
  tol=1e-6;
  r=[];
  i=0;
  while ((b-a)/2)>tol
    c=(a+b)/2;
    r=[r;c];
    if f(c)==0
      break;
    elseif f(c)*f(a)>0
      a=c;
    else
      b=c;
    end
    i=i+1;
  end
  fprintf("The Number of Iteration required is : %d\n",i);
  fprintf("The root is: \n");
  disp(r(end));
  x = linspace(-5, 5, 100);
  y = f(x);

  figure;
  plot(x, y);
  hold on;
  plot(r, f(r),'rx');
  hold off;
  xlabel('x');
  ylabel('f(x)');
  title('Bisection Method');
  legend('f(x)=x.^2+x-1', 'r');
  grid on;

endfunction