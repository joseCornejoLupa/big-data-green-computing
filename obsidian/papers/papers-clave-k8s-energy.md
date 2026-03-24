---
tipo: referencia
tags: [kubernetes, scheduling, energy, papers]
relacionado: [[survey-k8s-scheduling]]
---

# Papers Clave — K8s Energy-Aware Scheduling

## KEIDS
- **Contexto:** IIoT (Industrial Internet of Things)
- **Técnica:** Programación Lineal Entera (ILP)
- **Objetivos:** minimizar energía + minimizar interferencia entre pods
- **Destacado:** uno de los pocos que aborda interferencia explícitamente
- Nota detallada → _(crear con [[plantilla-analisis-paper]])_

## KCSS
- **Técnica:** Algoritmo TOPSIS (multicriterio)
- **Objetivos:** balancear makespan (tiempo de finalización) y consumo de potencia
- **Tipo:** Optimización multiobjetivo
- Nota detallada → _(crear con [[plantilla-analisis-paper]])_

## Kube-Knots
- **Contexto:** workloads GPU
- **Mecanismo:** recolecta ciclos GPU no utilizados
- **Resultado:** reducción del **33% en energía del clúster**
- **Relevante para:** scheduling de workloads de Deep Learning
- Nota detallada → _(crear con [[plantilla-analisis-paper]])_

## Townend et al.
- **Enfoque:** holístico — integra modelos de hardware y software
- **Resultado:** reducciones del **10-20% en potencia**
- **Destacado:** uno de los enfoques más completos del survey
- Nota detallada → _(crear con [[plantilla-analisis-paper]])_

---
← [[survey-k8s-scheduling]]
