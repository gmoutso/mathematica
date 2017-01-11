# mathematica
Some Wolfram Mathematica packages I wrote, useful for tensor algebra in gravity and supergravity.

## 20mini3dSugra...
### Description
This little mathematica file can be whatever you want. In the section *Functions* you will find all its utility functions. Given a metric and a coordinate system (a dxd and d list respectively), you may first calculate the Christoffel symbol (a dxdxd list) using the `Christoffel[]` function. From there, you can find the Riemann tensor via `RiemTddud`. Throughout, I use the notation that d is for a down (contravariant/cotangent) index and u for an up (covariant/tangent), e.g. `Du[]` returns the derivative of a tensor with the derivative index up.

The file has the dimension d=3 hardcoded, but you can easily change it. I have used this package many many times. The file's name is really proof of that: I simply uploaded a random incarnation of it.
### Intention
I was once asked by a student if she can use it. My intention in making it public here is clearly paedagogic. Mathematica is fun to use. So be my guest and use the file to calculate the Riemann scalar curvature in your project (hint: use `MyTrace[]` on `Ricci[]`) or whatever else you want. If you *understand* the code in it, then you can *write* such code yourself, and you already *own* this file.
## xVect
### Description
xVect is an extension of xAct, a state of the art package for tensor calculus. This extension implements vector bundles and subbundles. It has support for metric and symplectic fibers. The notebook `3dso8.xact.nb` was written to demonstrate its use. xVect also corrects what I perceived to be a bug in the implementation of the Kronecker delta (or simply identity) tensor.

Save the xVect in your `.Mathematica/Applications` folder (in linux) and load it as you would normally load a package. 
### Intention
I did not find xAct useful and it is missing quite a lot of features. When I wrote xVect, I had embarked on a journey to extend xAct to my satisfaction, since Mathematica needs a sophisticated tensor algebra system. I will not persue this, but it is a shame to not make this thought and resultant work public. It might inspire you to work on xAct!

In any case, I strongly recommend writing your simpler bespoke code (as in the `20mini3dSugra` notebook). If you need some symbolic tensor calculations, then [Cadabra](http://cadabra.science) is a pleasure to use.
### GMFormats
GMFormats is an addon to xVect for prettier output.
