#!/usr/bin/env bash

rm results_*.bin
rm plot_*.html

echo "GET https://ipfs.infura.io/ipfs/Qmaisz6NMhDB51cCvNWa1GMS7LU1pAxdF4Ld6Ft9kZEP2a" | vegeta attack -duration=5s | tee results_infura.bin | vegeta report -reporter=plot > plot_infura.html

echo "GET https://siderus.io/ipfs/Qmaisz6NMhDB51cCvNWa1GMS7LU1pAxdF4Ld6Ft9kZEP2a" | vegeta attack -duration=5s | tee results_siderus.bin | vegeta report -reporter=plot > plot_siderus.html

echo "GET https://ipfs.io/ipfs/Qmaisz6NMhDB51cCvNWa1GMS7LU1pAxdF4Ld6Ft9kZEP2a" | vegeta attack -duration=5s | tee results_ipfsio.bin | vegeta report -reporter=plot > plot_ipfsio.html

echo "GET https://ipfs.jes.xxx/ipfs/Qmaisz6NMhDB51cCvNWa1GMS7LU1pAxdF4Ld6Ft9kZEP2a" | vegeta attack -duration=5s | tee results_jesxxx.bin | vegeta report -reporter=plot > plot_jesxxx.html

echo "GET https://hardbin.com/ipfs/Qmaisz6NMhDB51cCvNWa1GMS7LU1pAxdF4Ld6Ft9kZEP2a" | vegeta attack -duration=5s | tee results_hardbin.bin | vegeta report -reporter=plot > plot_hardbin.html

echo "GET https://gateway.ipfs.io/ipfs/Qmaisz6NMhDB51cCvNWa1GMS7LU1pAxdF4Ld6Ft9kZEP2a" | vegeta attack -duration=5s | tee results_gatewayipfsio.bin | vegeta report -reporter=plot > plot_gatewayipfsio.html

echo "GET https://xmine128.tk/ipfs/Qmaisz6NMhDB51cCvNWa1GMS7LU1pAxdF4Ld6Ft9kZEP2a" | vegeta attack -duration=5s | tee results_xmine.bin | vegeta report -reporter=plot > plot_xmine.html
