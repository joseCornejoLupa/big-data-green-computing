---
tipo: concepto
tags: [green-computing, energia, kubernetes, GPU, CPU]
relacionado: [[../papers/survey-k8s-scheduling]]
---

# Eficiencia Energética en Kubernetes

## Contexto global
- Los centros de datos consumen entre el **2% y 3% de la energía global**
- Reducir la huella de carbono es una prioridad creciente en cloud computing
- K8s es la plataforma dominante → optimizarlo tiene impacto masivo

## CPU vs GPU: diferencia clave

### CPUs
- Consumo **no lineal** respecto a utilización
- Un nodo al 10% de uso puede consumir el 50-60% de energía máxima
- Consolidar workloads en menos nodos = más eficiencia

### GPUs
- Consumo **lineal** respecto a utilización
- Para ser eficientes energéticamente deben operar al **100% de carga**
- Un scheduler que deje GPUs al 40% desperdicia energía proporcionalmente

## Métricas de medición
| Métrica | Descripción |
|---|---|
| PUE | Power Usage Effectiveness — eficiencia del datacenter |
| W/job | Vatios consumidos por tarea ejecutada |
| CO₂ eq. | Emisiones equivalentes de carbono |
| Energy Delay Product (EDP) | Combina energía y tiempo de ejecución |

## Herramientas de medición en K8s
- Intel RAPL — medición a nivel de CPU
- Scaphandre — exporta métricas de energía por proceso/pod
- Kepler — métricas de energía nativas para Kubernetes

---
← [[../papers/survey-k8s-scheduling]]
