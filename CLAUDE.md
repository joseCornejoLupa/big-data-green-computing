# Investigación: Big Data + Green Computing

## Directorio del proyecto
`./` (raíz del repositorio)

## Objetivo de la investigación
Explorar la intersección entre arquitecturas de Big Data y Green Computing, con el fin de identificar, medir y optimizar el consumo energético en pipelines de procesamiento de datos distribuidos.

## Pregunta de investigación (en definición)
¿Cómo pueden las arquitecturas de Big Data modernas reducir su huella energética sin comprometer el rendimiento de procesamiento?

## Variables de estudio
- **Independientes:** arquitectura de procesamiento (Spark, Flink, etc.), configuración de cluster, tamaño de dataset
- **Dependientes:** consumo energético (W/job), emisiones de CO₂ equivalente, tiempo de procesamiento
- **Control:** hardware homogéneo, temperatura ambiente, carga de red

## Métricas clave
| Métrica | Descripción | Herramienta de medición |
|---|---|---|
| PUE | Power Usage Effectiveness | Monitoreo de datacenter |
| Energía/job | Watios consumidos por tarea | RAPL, Scaphandre |
| CO₂ eq. | Emisiones equivalentes | codecarbon (Python) |
| Throughput | Registros procesados/segundo | Spark UI, métricas nativas |

## Stack tecnológico
- **Procesamiento:** Apache Spark / Apache Flink
- **Medición energética:** Scaphandre, Intel RAPL, `perf`
- **Análisis:** Python (Jupyter), pandas, matplotlib
- **Gestión de papers:** Zotero
- **Síntesis de literatura:** Claude Projects (claude.ai), NotebookLM
- **Notas:** Obsidian (`./obsidian/`)
- **Escritura académica:** Overleaf (LaTeX)

## Estructura del proyecto
```
big data/
├── CLAUDE.md               ← este archivo
├── obsidian/               ← vault Obsidian (notas de investigación)
│   ├── papers/             ← notas de papers leídos
│   ├── ideas/              ← hipótesis, borradores, reflexiones
│   └── experimentos/       ← diseño y registro de experimentos
├── notebooks/              ← Jupyter notebooks de análisis
├── data/                   ← datasets (raw y procesados)
├── experiments/            ← código de experimentos reproducibles
└── docs/                   ← reportes, borradores de artículo
```

## Sincronización entre dispositivos
- **Linux/Windows → Android:** Syncthing apuntando a este directorio
- **Claude Code (CLI):** usa este CLAUDE.md como contexto en cada sesión
- **Claude.ai / móvil:** subir este CLAUDE.md + notas clave al Claude Project

## Modo Investigador

Para iniciar una sesión de investigación ejecutar:
```bash
./start-research.sh
```

Esto lanza en orden: Syncthing → Zotero → Obsidian (vault `./obsidian/`) y muestra el flujo de trabajo.

### Flujo de investigación
```
🔍 Encuentras paper  →  Semantic Scholar / Connected Papers
        ↓
📚 Agrégalo a Zotero  ←  fuente principal, citas, metadata
        ↓
🤖 Sube el PDF        ←  NotebookLM (consultas exactas, sin alucinaciones)
        ↓
📝 Nota resumen       ←  Obsidian en obsidian/papers/
        ↓
🧠 Sube nota o PDF    ←  Claude Project (análisis profundo y síntesis)
```

### Foco actual de investigación
- **Área:** Energy-aware scheduling en Kubernetes
- **Pregunta tentativa:** ¿Cómo puede el scheduler de K8s optimizarse para reducir el consumo energético en workloads de Big Data sin degradar el rendimiento?
- **Baseline disponible:** datos experimentales en `../microservices/historyexecutions/`

### Vault Obsidian — estado actual
- `obsidian/papers/survey-k8s-scheduling.md` — índice del primer survey procesado
- `obsidian/papers/plantilla-analisis-paper.md` — plantilla reutilizable para nuevos papers
- `obsidian/conceptos/` — interferencia entre nodos, eficiencia energética CPU vs GPU
- `obsidian/ideas/direcciones-futuras-k8s.md` — gaps y preguntas abiertas
- Papers clave identificados: KEIDS, KCSS, Kube-Knots, Townend et al.

## Instrucciones para Claude Code
- El idioma de trabajo es español
- Priorizar reproducibilidad en todos los experimentos (seeds fijos, entornos documentados)
- Toda medición energética debe especificar las condiciones del hardware
- Al generar código de análisis, usar pandas + matplotlib como base
- Las citas académicas siguen formato IEEE
- Antes de sugerir una nueva herramienta, verificar si ya existe en el stack

<!-- workflow: cambios via PR, nunca push directo a main -->
