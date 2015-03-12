#include <scalar.h>

__device__ float op(float d1,float d2,float *params) {
    if(d1 > d2)
      return 1;
   return 0;
}

extern "C"
__global__ void max_scalar_float(int n, int idx,float dx,float *dy,int incy,float *params,float *result) {
       transform(n,idx,dx,dy,incy,params,result);
 }

