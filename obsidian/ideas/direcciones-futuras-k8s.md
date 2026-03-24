---
tipo: ideas
tags: [investigacion, gaps, futuro, kubernetes]
relacionado: [[../papers/survey-k8s-scheduling]]
---

# Direcciones Futuras — K8s Energy-Aware Scheduling

> Gaps identificados en el survey — posibles temas de tesis o experimentos

## 1. Escalabilidad
- **Problema:** la mayoría de algoritmos se evalúan en clusters pequeños
- **Oportunidad:** evaluar en clusters de **más de 1000 nodos**
- **Mi baseline:** datos experimentales en `../../microservices/historyexecutions/`

## 2. Serverless Computing
- **Problema:** integración de K8s con arquitecturas serverless es limitada
- **Oportunidad:** scheduling energético en entornos Knative / OpenFaaS
- **Conexión:** reducción de cold-starts = menos energía desperdiciada

## 3. Context-Awareness
- **Problema:** los schedulers actuales ignoran contexto externo
- **Oportunidad:** considerar factores como:
  - Hora del día (tarifa eléctrica variable)
  - Temperatura ambiente del datacenter
  - Mix energético de la red (renovable vs fósil)
  - Preferencias del usuario / SLAs

## Preguntas abiertas para mi investigación
- [ ] ¿El scheduler por defecto de K8s es energéticamente proporcional?
- [ ] ¿Cuánto impacta la interferencia entre pods en el consumo energético real?
- [ ] ¿Es posible modificar el scheduler de K8s sin perder compatibilidad?

---
← [[../papers/survey-k8s-scheduling]]
