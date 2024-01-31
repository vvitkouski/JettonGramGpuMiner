#!/bin/bash
npm install

i=0

until [ $i -gt 7 ]
do
  bgtid=gram$i node send_universal.js --api tonhub --givers 10000 --bin ./pow-miner-cuda --gpu $i >output.$i 2>&1 &
  echo test$i
  ((i++))
  sleep 1;
done
