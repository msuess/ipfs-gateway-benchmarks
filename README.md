# IPFS gateway benchmark

This is a collection of quick-and-dirty scripts to test the performance of some IPFS gateways.

The list of gateways was obtained from [here](https://ipfs.io/ipfs/QmR4P4szLnHfyQic7B19kGTjKYY1jnkb5U4YxTijNmPPAY/).

## TL;DR

Use [Infura](https://infura.io/).

## Simple cURL GET

```
./benchmark_curl.sh
```

```
INFURA
    time_namelookup:  0.067857
       time_connect:  0.164977
    time_appconnect:  0.408993
   time_pretransfer:  0.409049
      time_redirect:  0.000000
 time_starttransfer:  0.519306
                    ----------
         time_total:  0.519405

siderus.io
    time_namelookup:  0.136022
       time_connect:  0.196776
    time_appconnect:  0.416863
   time_pretransfer:  0.417016
      time_redirect:  0.000000
 time_starttransfer:  0.621786
                    ----------
         time_total:  0.621873

ipfs.io
    time_namelookup:  0.069343
       time_connect:  0.546081
    time_appconnect:  2.087483
   time_pretransfer:  2.087538
      time_redirect:  0.000000
 time_starttransfer:  2.340070
                    ----------
         time_total:  2.340150

ipfs.jes.xxx
    time_namelookup:  0.004236
       time_connect:  0.233971
    time_appconnect:  0.879783
   time_pretransfer:  0.879844
      time_redirect:  0.000000
 time_starttransfer:  1.089795
                    ----------
         time_total:  1.089878

hardbin.com
    time_namelookup:  0.004924
       time_connect:  0.209342
    time_appconnect:  1.443734
   time_pretransfer:  1.443790
      time_redirect:  0.000000
 time_starttransfer:  1.635159
                    ----------
         time_total:  1.635246

gateway.ipfs.io
    time_namelookup:  1.530610
       time_connect:  1.894725
    time_appconnect:  5.288605
   time_pretransfer:  5.288642
      time_redirect:  0.000000
 time_starttransfer:  5.720777
                    ----------
         time_total:  5.720857

xmine128.tk
    time_namelookup:  0.004774
       time_connect:  0.237107
    time_appconnect:  1.079000
   time_pretransfer:  1.079171
      time_redirect:  0.000000
 time_starttransfer:  34.105835
                    ----------
         time_total:  34.105924
```

## Vegeta Attack

*HANDLE WITH CARE*

Please refer to the [Vegeta installation instructions](https://github.com/tsenart/vegeta#install) to learn how to install `vegeta`.

```
./benchmark_vegeta.sh
```

This will save the results to `*.bin` files and generate html reports.

## Sample Results

Feel free to check out my sample results but keep in mind that I executed the benchmarks with a dodgy internet connection, so you should probably try running them yourself.

### gatewayipfsio
```
Bucket           #    %       Histogram
[0s,     100ms]  0    0.00%   
[100ms,  200ms]  0    0.00%   
[200ms,  300ms]  14   5.60%   ####
[300ms,  +Inf]   236  94.40%  ######################################################################
```

### hardbin
```
Bucket           #    %       Histogram
[0s,     100ms]  0    0.00%   
[100ms,  200ms]  9    3.60%   ##
[200ms,  300ms]  55   22.00%  ################
[300ms,  +Inf]   186  74.40%  #######################################################
```

### infura
```
Bucket           #    %       Histogram
[0s,     100ms]  21   8.40%   ######
[100ms,  200ms]  144  57.60%  ###########################################
[200ms,  300ms]  19   7.60%   #####
[300ms,  +Inf]   66   26.40%  ###################
```

### ipfsio
```
Bucket           #    %        Histogram
[0s,     100ms]  0    0.00%    
[100ms,  200ms]  0    0.00%    
[200ms,  300ms]  0    0.00%    
[300ms,  +Inf]   250  100.00%  ###########################################################################
```

### jesxxx
```
Bucket           #    %       Histogram
[0s,     100ms]  0    0.00%   
[100ms,  200ms]  2    0.80%   
[200ms,  300ms]  62   24.80%  ##################
[300ms,  +Inf]   186  74.40%  #######################################################
```

### siderus
```
Bucket           #    %        Histogram
[0s,     100ms]  0    0.00%    
[100ms,  200ms]  0    0.00%    
[200ms,  300ms]  0    0.00%    
[300ms,  +Inf]   250  100.00%  ###########################################################################
```

### xmine
```
Bucket           #    %        Histogram
[0s,     100ms]  0    0.00%    
[100ms,  200ms]  0    0.00%    
[200ms,  300ms]  0    0.00%    
[300ms,  +Inf]   250  100.00%  ###########################################################################
```
