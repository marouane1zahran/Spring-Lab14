#!/bin/bash

echo "[INFO] Lecture des 30 dernières entrées du journal système :"
echo "--------------------------------------------------------"
tail -n 30 logs/application.log