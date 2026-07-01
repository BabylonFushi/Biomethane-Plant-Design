# Análisis de Idoneidad — Planta de Biometano (Huesca)

Pipeline de análisis geoespacial (descarga de datos, procesado, scoring, clustering y viabilidad) que alimenta el [mapa interactivo](https://babylonfushi.github.io/biomethane_map/).

> ⚠️ Repositorio en construcción. Esta primera fase organiza los notebooks en una estructura común; cada uno se irá limpiando y documentando de forma individual.

## Estructura

```
notebooks/
├── 01_download/             Descarga de las capas base
│   ├── 01_ganado_porcino.ipynb
│   ├── 02_gasoductos.ipynb
│   ├── 03_red_viaria.ipynb
│   ├── 04_red_natura2000.ipynb
│   ├── 05_pendiente_dem.ipynb
│   └── 06_clasificacion_suelo.ipynb
├── 02_analysis/              Grid 500x500m, scoring, K-Means y mapa final
│   └── idoneidad_scoring_clustering.ipynb
└── 03_viability/             Viabilidad económica del Top 10 (en proceso)
    └── viabilidad_economica.ipynb

data/
├── raw/        Salidas de los notebooks de descarga + delimitación de Huesca
│   ├── Huesca_Delimitacion.geojson
│   └── Huesca_Delimitacion.qmd
└── processed/  Grid procesado, Top 10, capas intermedias
```

## Pendiente de limpieza

- [ ] `01_ganado_porcino`: sustituir rutas absolutas
- [ ] `02_gasoductos`: sustituir rutas absolutas (`C:/Users/...`) por rutas relativas a `data/`
- [ ] `03_red_viaria`: eliminar celda con output de error (kernel crash)
- [ ] `04_red_natura2000`: sustituir rutas absolutas
- [ ] `05_pendiente_dem`: separar celdas de diagnóstico/exploración del flujo final de descarga
- [ ] `06_clasificacion_suelo`: sustituir rutas absolutas
- [ ] `idoneidad_scoring_clustering`: sustituir ruta absoluta en la celda del mapa final
- [ ] Añadir cabecera de documentación (fuente, fecha, archivo de salida) en cada notebook
- [ ] `requirements.txt` / `environment.yml` definitivo

## Tecnologías

- GeoPandas, Shapely, PyProj — procesado vectorial
- Rasterio, rasterstats — procesado raster (pendiente/DEM)
- OSMnx — descarga de red viaria
- scikit-learn, statsmodels — clustering K-Means y análisis VIF
- pydeck — generación del mapa interactivo

---

*Repositorio asociado al [mapa de idoneidad](https://github.com/babylonfushi/biomethane_map).*
