function Newton_Rapson=Newton_Rapson_04()
  function y=f(x)
    y=x.^2+x-1;
  end
  function p=g(x)
    p=2*x+1;
  end
  a=0;
  b=1;
  c=(a+b)/2;
  r=[];
  tangent_line=[];
  i=0;
  t=100000;
  while t>0
    r=[r;c];
    tangent_line=[tangent_line;[c,f(c),g(c)]];
    if g(c)==0
      fprintf("Divisible by zero.");
    else
      if f(c)==0
        break;
      else
        k=c-(f(c)/g(c));
        c=k;
      end
    end
    i=i+1;
    t=t-1;
  end
  fprintf('Number of iteration required is: %d\n',i);
  fprintf("The root is: \n");
  disp(r(end));
  x = linspace(0, 10, 1000);
  y = f(x);

  figure;
  plot(x,y);
  hold on;
  plot(r, f(r),'rx');

  for i=1:length(r)
      x1= r(i)-1:0.01:r(i)+1;
      y1= tangent_line(i,2)+ tangent_line(i,3)*(x1-r(i));
      plot(x1,y1,'k--');
  end;
  hold off;
  xlabel('X');
  ylabel('F(X)');
  title('Newton_Raphson_Method');
  legend('f(x)=x^2+x-1', 'r', 'Tangent Lines');
  grid on;
endfunction
