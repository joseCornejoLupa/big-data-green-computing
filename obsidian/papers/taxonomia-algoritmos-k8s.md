---
tipo: concepto
tags: [kubernetes, scheduling, taxonomia]
relacionado: [[survey-k8s-scheduling]]
---

# Taxonomía de Algoritmos de Scheduling en Kubernetes

## 1. Programación Genérica (Generic Scheduling)
- **Objetivo:** mejorar rendimiento general y eficiencia de recursos
- **Características:** sin optimización específica, aplica a cargas de trabajo variadas
- **Ejemplo de papers:** → [[papers-clave-k8s-energy]]

## 2. Optimización Multiobjetivo
- **Objetivo:** equilibrar metas en conflicto simultáneamente
- **Metas típicas:**
  - Minimizar consumo de energía
  - Minimizar costos operativos
  - Maximizar rendimiento (throughput)
- **Técnicas comunes:** TOPSIS, ILP (Integer Linear Programming), Pareto

## 3. Programación Enfocada en IA
- **Objetivo:** manejar cargas de trabajo complejas y dinámicas
- **Técnicas:**
  - Aprendizaje automático (ML)
  - Aprendizaje profundo (Deep Learning)
  - Aprendizaje por refuerzo (RL)
- **Ventaja:** adaptación en tiempo real sin reglas fijas

## 4. Programación con Autoescalado
- **Objetivo:** ajustar recursos automáticamente según demanda
- **Integración:** combina scheduling con HPA/VPA de Kubernetes
- **Caso de uso:** cargas variables, picos de tráfico

---
← [[survey-k8s-scheduling]]
