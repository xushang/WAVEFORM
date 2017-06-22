function test_mvproducts
%test_op_products  Unit tests for operator products

   randn('state',0); rand('state',0);

   % Set up matrices and operators for problems
   A  = randn(2,2) + 1i * randn(2,2);
   B  = opMatrix(A);
   c  = randn(1,1) + 1i * randn(1,1);
   A  = A * c;
   B  = B * c;
   xr = randn(2,2);
   xi = randn(2,2) *1i;
   x  = xr + xi;

   % Check operator products
   C = A' * 5 * A;
   D = B' * 5 * B;
   assertElementsAlmostEqual( ...
       ((5*A*C)' * A) * x    ,...
       ((5*B*D)' * B) * x     );
   assertElementsAlmostEqual( ...
       ((5*A*C)' * A) * xr'  ,...
       ((5*B*D)' * B) * xr'   );
   assertElementsAlmostEqual( ...
       ((5*A*C)' * A) * xi'  ,...
       ((5*B*D)' * B) * xi'   );
   assertElementsAlmostEqual( ...
       (5*A*C*A) * x         ,...
       (5*B*D*B) * x          );
   assertElementsAlmostEqual( ...
       (5*A*C*A) * xr        ,...
       (5*B*D*B) * xr         );
   assertElementsAlmostEqual( ...
       (5*A*C*A) * xi        ,...
       (5*B*D*B) * xi         );

end
