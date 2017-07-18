c     ATLAS detector simulation. Inner Detector.
c     Created on: Saturday, November 05, 2016 at 10:44                          
    1     0         -1 
    2     2  -1.848 -2 1 
    3     0         -3 
    4     0         -4 
    5     3   -7.86 -5 3 
    6     3   -7.86 -6 4 
    7     0         -7 
    8     0         -8 
    9     3   -7.86 -9 7 
   10     3   -7.86 -10 8 
   11     0         -11 
   12     0         -12 
   13     3   -7.86 -13 11 
   14     3   -7.86 -14 12 
   15     0         -15 
   16     0         -16 
   17     4   -8.96 -17 15 
   18     4   -8.96 -18 16 
   19     1 -0.001225 -19 2 
   20     5   -2.33 -20 19 
   21     1 -0.001225 -21 20 
   22     5   -2.33 -22 21 
   23     1 -0.001225 -23 22 
   24     6 -0.005485 -24 23 
   25     1 -0.001225 -25 20 
   26     1 -0.001225 -26 20 
   27     5   -2.33 -27 25 
   28     5   -2.33 -28 26 
   29     1 -0.001225 -29 27 
   30     1 -0.001225 -30 28 
   31     6 -0.005485 -31 29 
   32     6 -0.005485 -32 30 
   33     1 -0.001225 -33 20 22 24 27 28 31 32 
  100     0         2 5 6 9 10 13 14 17 18 33 

c     ***********************************************************************   
c    Detector Subsystems                                                        
c     ***********************************************************************   
c    --- Beampipe ---                                                           
    1       rcc -355 0 0 710 0 0 2.9 
c    wall                                                                       
    2       rcc -355 0 0 710 0 0 2.98 
c    ----------------                                                           
    3       rcc -355 0 0 -691.5 0 0 2.9 
    4       rcc 355 0 0 691.5 0 0 2.9 
c    wall                                                                       
    5       rcc -355 0 0 -691.5 0 0 2.98 
    6       rcc 355 0 0 691.5 0 0 2.98 
c    ----------------                                                           
    7       rcc -1046.5 0 0 -4.2 0 0 4 
    8       rcc 1046.5 0 0 4.2 0 0 4 
c    wall                                                                       
    9       rcc -1046.5 0 0 -4.2 0 0 4.1 
   10       rcc 1046.5 0 0 4.2 0 0 4.1 
c    ----------------                                                           
   11       rcc -1050.7 0 0 -390.9 0 0 6 
   12       rcc 1050.7 0 0 390.9 0 0 6 
c    wall                                                                       
   13       rcc -1050.7 0 0 -390.9 0 0 6.15 
   14       rcc 1050.7 0 0 390.9 0 0 6.15 
c    ----------------                                                           
   15       rcc -1441.6 0 0 -958.4 0 0 1.7 
   16       rcc 1441.6 0 0 958.4 0 0 1.7 
c    wall                                                                       
   17       rcc -1441.6 0 0 -958.4 0 0 3 
   18       rcc 1441.6 0 0 958.4 0 0 3 
c    *********************************************                              
c    air between beampipe and pixel                                             
   19       rcc -309.2 0 0 618.4 0 0 4.55 
c    Pixel                                                                      
   20       rcc -309.2 0 0 618.4 0 0 24.2 
c    air between SCT barrel and Pixel                                           
   21       rcc -80.5 0 0 161 0 0 25.5 
c    SCT barrel                                                                 
   22       rcc -80.5 0 0 161 0 0 54.9 
c    air between SCT barrel and TRT barrel                                      
   23       rcc -78 0 0 156 0 0 55.4 
c    TRT barrel                                                                 
   24       rcc -78 0 0 156 0 0 108.2 
c    air for SCT end - caps                                                     
   25       rcc 81 0 0 198.7 0 0 25.1 
   26       rcc -279.7 0 0 198.7 0 0 25.1 
c    SCT end - caps                                                             
   27       rcc 81 0 0 198.7 0 0 61 
   28       rcc -279.7 0 0 198.7 0 0 61 
c    air for TRT end - caps                                                     
   29       rcc 82.7 0 0 191.7 0 0 61.7 
   30       rcc -274.4 0 0 191.7 0 0 61.7 
c    TRT end - caps                                                             
   31       rcc 82.7 0 0 191.7 0 0 110.6 
   32       rcc -274.4 0 0 191.7 0 0 110.6 
c    Inner Detector                                                             
   33       rcc -309.2 0 0 618.4 0 0 110.6 
c    *********************************************                              

mode  n p e
c     ***********************************************************************   
c                    Materials Specification                                    
c     ***********************************************************************   
m1    7014.         -0.755636  $ air
      8016.         -0.231475 18000.        -0.012889 
m2    4000.                -1  $beryllium
m3    6000.          -0.00075  $stainless steel 202
      7000.          -0.00125 14000.           -0.005 15000.          -0.0003 
      16000.         -0.00015 24000.            -0.18 25000.          -0.0875 
      26000.         -0.67505 28000.            -0.05 
m4    29000.               -1  $Copper
m5    14028.               -1  $silicon
m6    54000.               -1  $Xenon
imp:p             1 32r                     0  $ 1, 100
c     ***********************************************************************   
c                    Source Specification                                       
c     ***********************************************************************   
sdef pos=d1 erg=d2 par=2                                                        
c     Radius                                                                    
si1 L 0 0 0                                                                     
sp1 1                                                                           
c     Energies                                                                  
si2 L 10 10                                                                     
sp2     1 1                                                                     
c     ***********************************************************************   
c                     Tallies. F2 tallies (flux on surface)                                                   
c     *********************************************************************** 
c     Surface tallies are placed on critical areas of the ATLAS Inner
c     detector. Photon fluxes are measured on those areas.   
f12:p 20.1 $Pixel                                                               
f22:p 22.1 $SCT barrel                                                          
f32:p 24.1 $TRT barrel                                                          
f42:p 27.1 $SCT-TRT ec cylindrical section                                      
f52:p 29.1 $SCT-TRT ec cylindrical section                                      
f62:p 25.2 $SCT right ec outer                                                  
f72:p 25.3 $SCT right ec inner                                                  
f82:p 26.2 $SCT left ec inner                                                   
f92:p 26.3 $SCT left ec outer                                                   
f102:p 29.2 $TRT right ec outer                                                 
f112:p 29.3 $TRT right ec inner                                                 
f122:p 30.2 $TRT left ec inner                                                  
f132:p 30.3 $TRT left ec outer                                                  
f142:p 31.1 $ID layout                                                          
c     ***********************************************************************   
c                           Energy Bins (MeV)                                   
c     ***********************************************************************   
e0    1.00E-05 2.00E-05 3.00E-05 4.00E-05 5.00E-05 6.00E-05 7.00E-05 8.00E-05   
      9.00e-05 1.00E-04 2.00E-04 3.00E-04 4.00E-04 5.00E-04 6.00E-04 7.00E-04   
      8.00e-04 9.00E-04 1.00E-03 2.00E-03 3.00E-03 4.00E-03 5.00E-03 6.00E-03   
      7.00e-03 8.00E-03 9.00E-03 1.00E-02 1.10E-02 1.20E-02 1.30E-02 1.40E-02   
      1.50e-02 1.60E-02 1.70E-02 1.80E-02 1.90E-02 2.00E-02 2.10E-02 2.20E-02   
      2.30e-02 2.40E-02 2.50E-02 2.60E-02 2.70E-02 2.80E-02 2.90E-02 3.00E-02   
      3.10e-02 3.20E-02 3.30E-02 3.40E-02 3.50E-02 3.60E-02 3.70E-02 3.80E-02   
      3.90e-02 4.00E-02 4.10E-02 4.20E-02 4.30E-02 4.40E-02 4.50E-02 4.60E-02   
      4.70e-02 4.80E-02 4.90E-02 5.00E-02 5.10E-02 5.20E-02 5.30E-02 5.40E-02   
      5.50e-02 5.60E-02 5.70E-02 5.80E-02 5.90E-02 6.00E-02 6.10E-02 6.20E-02   
      6.30e-02 6.40E-02 6.50E-02 6.60E-02 6.70E-02 6.80E-02 6.90E-02 7.00E-02   
      7.10e-02 7.20E-02 7.30E-02 7.40E-02 7.50E-02 7.60E-02 7.70E-02 7.80E-02   
      7.90e-02 8.00E-02 8.10E-02 8.20E-02 8.30E-02 8.40E-02 8.50E-02 8.60E-02   
      8.70e-02 8.80E-02 8.90E-02 9.00E-02 9.10E-02 9.20E-02 9.30E-02 9.40E-02   
      9.50e-02 9.60E-02 9.70E-02 9.80E-02 9.90E-02 1.00E-01 1.01E-01 1.02E-01   
      1.03e-01 1.04E-01 1.05E-01 1.06E-01 1.07E-01 1.08E-01 1.09E-01 1.10E-01   
      1.11e-01 1.12E-01 1.13E-01 1.14E-01 1.15E-01 1.16E-01 1.17E-01 1.18E-01   
      1.19e-01 1.20E-01 1.21E-01 1.22E-01 1.23E-01 1.24E-01 1.25E-01 1.26E-01   
      1.27e-01 1.28E-01 1.29E-01 1.30E-01 1.31E-01 1.32E-01 1.33E-01 1.34E-01   
      1.35e-01 1.36E-01 1.37E-01 1.38E-01 1.39E-01 1.40E-01 1.41E-01 1.42E-01   
      1.43e-01 1.44E-01 1.45E-01 1.46E-01 1.47E-01 1.48E-01 1.49E-01 1.50E-01   
      1.51e-01 1.52E-01 1.53E-01 1.54E-01 1.55E-01 1.56E-01 1.57E-01 1.58E-01   
      1.59e-01 1.60E-01 1.61E-01 1.62E-01 1.63E-01 1.64E-01 1.65E-01 1.66E-01   
      1.67e-01 1.68E-01 1.69E-01 1.70E-01 1.71E-01 1.72E-01 1.73E-01 1.74E-01   
      1.75e-01 1.76E-01 1.77E-01 1.78E-01 1.79E-01 1.80E-01 1.81E-01 1.82E-01   
      1.83e-01 1.84E-01 1.85E-01 1.86E-01 1.87E-01 1.88E-01 1.89E-01 1.90E-01   
      1.91e-01 1.92E-01 1.93E-01 1.94E-01 1.95E-01 1.96E-01 1.97E-01 1.98E-01   
      1.99e-01 2.00E-01 2.01E-01 2.02E-01 2.03E-01 2.04E-01 2.05E-01 2.06E-01   
      2.07e-01 2.08E-01 2.09E-01 2.10E-01 2.11E-01 2.12E-01 2.13E-01 2.14E-01   
      2.15e-01 2.16E-01 2.17E-01 2.18E-01 2.19E-01 2.20E-01 2.21E-01 2.22E-01   
      2.23e-01 2.24E-01 2.25E-01 2.26E-01 2.27E-01 2.28E-01 2.29E-01 2.30E-01   
      2.31e-01 2.32E-01 2.33E-01 2.34E-01 2.35E-01 2.36E-01 2.37E-01 2.38E-01   
      2.39e-01 2.40E-01 2.41E-01 2.42E-01 2.43E-01 2.44E-01 2.45E-01 2.46E-01   
      2.47e-01 2.48E-01 2.49E-01 2.50E-01 2.51E-01 2.52E-01 2.53E-01 2.54E-01   
      2.55e-01 2.56E-01 2.57E-01 2.58E-01 2.59E-01 2.60E-01 2.61E-01 2.62E-01   
      2.63e-01 2.64E-01 2.65E-01 2.66E-01 2.67E-01 2.68E-01 2.69E-01 2.70E-01   
      2.71e-01 2.72E-01 2.73E-01 2.74E-01 2.75E-01 2.76E-01 2.77E-01 2.78E-01   
      2.79e-01 2.80E-01 2.81E-01 2.82E-01 2.83E-01 2.84E-01 2.85E-01 2.86E-01   
      2.87e-01 2.88E-01 2.89E-01 2.90E-01 2.91E-01 2.92E-01 2.93E-01 2.94E-01   
      2.95e-01 2.96E-01 2.97E-01 2.98E-01 2.99E-01 3.00E-01 3.05E-01            
      3.10e-01 3.15E-01 3.20E-01 3.25E-01 3.30E-01 3.35E-01 3.40E-01 3.45E-01   
      3.50e-01 3.55E-01 3.60E-01 3.65E-01 3.70E-01 3.75E-01 3.80E-01 3.85E-01   
      3.90e-01 3.95E-01 4.00E-01 4.05E-01 4.10E-01 4.15E-01 4.20E-01 4.25E-01   
      4.30e-01 4.35E-01 4.40E-01 4.45E-01 4.50E-01 4.55E-01 4.60E-01 4.65E-01   
      4.70e-01 4.75E-01 4.80E-01 4.85E-01 4.90E-01 4.95E-01 5.00E-01 5.05E-01   
      5.10e-01 5.15E-01 5.20E-01 5.25E-01 5.30E-01 5.35E-01 5.40E-01 5.45E-01   
      5.50e-01 5.55E-01 5.60E-01 5.65E-01 5.70E-01 5.75E-01 5.80E-01 5.85E-01   
      5.90e-01 5.95E-01 6.00E-01 6.05E-01 6.10E-01 6.15E-01 6.20E-01 6.25E-01   
      6.30e-01 6.35E-01 6.40E-01 6.45E-01 6.50E-01 6.55E-01 6.60E-01 6.65E-01   
      6.70e-01 6.75E-01 6.80E-01 6.85E-01 6.90E-01 6.95E-01 7.00E-01 7.05E-01   
      7.10e-01 7.15E-01 7.20E-01 7.25E-01 7.30E-01 7.35E-01 7.40E-01 7.45E-01   
      7.50e-01 7.55E-01 7.60E-01 7.65E-01 7.70E-01 7.75E-01 7.80E-01 7.85E-01   
      7.90e-01 7.95E-01 8.00E-01 8.05E-01 8.10E-01 8.15E-01 8.20E-01 8.25E-01   
      8.30e-01 8.35E-01 8.40E-01 8.45E-01 8.50E-01 8.55E-01 8.60E-01 8.65E-01   
      8.70e-01 8.75E-01 8.80E-01 8.85E-01 8.90E-01 8.95E-01 9.00E-01 9.05E-01   
      9.10e-01 9.15E-01 9.20E-01 9.25E-01 9.30E-01 9.35E-01 9.40E-01 9.45E-01   
      9.50e-01 9.55E-01 9.60E-01 9.65E-01 9.70E-01 9.75E-01 9.80E-01 9.85E-01   
      9.90e-01 9.95E-01 1.00E+00 1.05E+00 1.10E+00 1.15E+00 1.20E+00 1.25E+00   
      1.30e+00 1.35E+00 1.40E+00 1.45E+00 1.50E+00 1.55E+00 1.60E+00 1.65E+00   
      1.70e+00 1.75E+00 1.80E+00 1.85E+00 1.90E+00 1.95E+00 2.00E+00 2.05E+00   
      2.10e+00 2.15E+00 2.20E+00 2.25E+00 2.30E+00 2.35E+00 2.40E+00 2.45E+00   
      2.50e+00 2.55E+00 2.60E+00 2.65E+00 2.70E+00 2.75E+00 2.80E+00 2.85E+00   
      2.90e+00 2.95E+00 3.00E+00 3.05E+00 3.10E+00 3.15E+00 3.20E+00 3.25E+00   
      3.30e+00 3.35E+00 3.40E+00 3.45E+00 3.50E+00 3.55E+00 3.60E+00 3.65E+00   
      3.70e+00 3.75E+00 3.80E+00 3.85E+00 3.90E+00 3.95E+00 4.00E+00 4.05E+00   
      4.10e+00 4.15E+00 4.20E+00 4.25E+00 4.30E+00 4.35E+00 4.40E+00 4.45E+00   
      4.50e+00 4.55E+00 4.60E+00 4.65E+00 4.70E+00 4.75E+00 4.80E+00 4.85E+00   
      4.90e+00 4.95E+00 5.00E+00 5.05E+00 5.10E+00 5.15E+00 5.20E+00 5.25E+00   
      5.30e+00 5.35E+00 5.40E+00 5.45E+00 5.50E+00 5.55E+00 5.60E+00 5.65E+00   
      5.70e+00 5.75E+00 5.80E+00 5.85E+00 5.90E+00 5.95E+00 6.00E+00 6.05E+00   
      6.10e+00 6.15E+00 6.20E+00 6.25E+00 6.30E+00 6.35E+00 6.40E+00 6.45E+00   
      6.50e+00 6.55E+00 6.60E+00 6.65E+00 6.70E+00 6.75E+00 6.80E+00 6.85E+00   
      6.90e+00 6.95E+00 7.00E+00 7.05E+00 7.10E+00 7.15E+00 7.20E+00 7.25E+00   
      7.30e+00 7.35E+00 7.40E+00 7.45E+00 7.50E+00 7.55E+00 7.60E+00 7.65E+00   
      7.70e+00 7.75E+00 7.80E+00 7.85E+00 7.90E+00 7.95E+00 8.00E+00 8.05E+00   
      8.10e+00 8.15E+00 8.20E+00 8.25E+00 8.30E+00 8.35E+00 8.40E+00 8.45E+00   
      8.50e+00 8.55E+00 8.60E+00 8.65E+00 8.70E+00 8.75E+00 8.80E+00 8.85E+00   
      8.90e+00 8.95E+00 9.00E+00 9.05E+00 9.10E+00 9.15E+00 9.20E+00 9.25E+00   
      9.30e+00 9.35E+00 9.40E+00 9.45E+00 9.50E+00 9.55E+00 9.60E+00 9.65E+00   
      9.70e+00 9.75E+00 9.80E+00 9.85E+00 9.90E+00 9.95E+00 1.00E+01 1.01E+01   
c     ***********************************************************************   
ctme 1                                                                          
