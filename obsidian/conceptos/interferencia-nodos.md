---
tipo: concepto
tags: [kubernetes, interferencia, rendimiento]
relacionado: [[../papers/survey-k8s-scheduling]]
---

# Interferencia entre Pods en Kubernetes

## Definición
Impacto negativo causado al ejecutar múltiples aplicaciones (pods) en un mismo nodo físico, compitiendo por recursos compartidos: CPU, memoria, caché L3, ancho de banda de red.

## Magnitud del problema
- Puede degradar el rendimiento hasta un **34%**
- Especialmente crítico en workloads sensibles a latencia

## Causas principales
- Contención de caché L3 (CPU cache thrashing)
- Saturación de memoria RAM
- Competencia por I/O de disco y red

## Relación con el scheduling
El scheduler de K8s por defecto no considera interferencia al asignar pods → oportunidad de mejora para schedulers energéticamente conscientes.

## Papers que lo abordan
- KEIDS → [[../papers/papers-clave-k8s-energy]]

---
← [[../papers/survey-k8s-scheduling]]
