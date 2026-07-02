#!/bin/bash
# Crea un .gitkeep en cada carpeta que debe existir pero está vacía (o solo tiene datos ignorados)

folders=(
  "data/raw/01_ganado_porcino"
  "data/raw/02_gasoductos"
  "data/raw/03_pendiente_dem"
  "data/raw/04_red_natura2000"
  "data/raw/05_red_viaria"
  "data/raw/06_clasificacion_suelo"
  "data/raw/delimitations"
  "data/map/01_ganado_porcino"
  "data/map/02_gasoductos"
  "data/map/03_pendiente_dem"
  "data/map/04_red_natura2000"
  "data/map/05_red_viaria"
  "data/map/06_clasificacion_suelo"
  "data/map/idoneidad_scoring_clustering"
  "data/processed"
)

for f in "${folders[@]}"; do
  mkdir -p "$f"
  touch "$f/.gitkeep"
  echo "Creado: $f/.gitkeep"
done
