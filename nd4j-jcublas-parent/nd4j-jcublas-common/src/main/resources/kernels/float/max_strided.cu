#include <reduce.h>

__device__ float update(float old,float opOutput,float *extraParams) {
       return opOutput;
 }


/**
 An op on the device
 @param d1 the first operator
 @param d2 the second operator
*/
__device__ float op(float d1,float d2,float *extraParams) {
       return fmaxf(d1,d2);
}



__device__ float op(float d1) {
      return d1;
}


__device__ float postProcess(float reduction,int n,int xOffset,float *dx,int incx,float *extraParams,float *result) {
             return reduction;
}

extern "C"
__global__ void max_strided_float(int n, int xOffset,float *dx,int incx,float *extraParams,float *result) {
             transform(n,xOffset,dx,incx,extraParams,result);
}


