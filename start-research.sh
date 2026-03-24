#!/bin/bash
# ============================================================
#  MODO INVESTIGADOR — Big Data + Green Computing
#  "No doblegues la realidad a tus deseos. Dóblate tú primero
#   al conocimiento, y la realidad te revelará sus secretos."
#                                    — Paul Muad'Dib, Dune
# ============================================================

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OBSIDIAN_VAULT="$PROJECT_DIR/obsidian"

echo ""
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║           INICIANDO MODO INVESTIGADOR                        ║"
echo "║           Big Data + Green Computing                         ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""

# 1. Syncthing
echo "▶ [1/3] Iniciando Syncthing..."
if systemctl --user is-active --quiet syncthing; then
    echo "  ✓ Syncthing ya está corriendo."
else
    systemctl --user start syncthing
    echo "  ✓ Syncthing iniciado."
fi

# 2. Zotero
echo "▶ [2/3] Abriendo Zotero..."
flatpak run org.zotero.Zotero &>/dev/null &
disown
sleep 2
echo "  ✓ Zotero lanzado."

# 3. Obsidian
echo "▶ [3/3] Abriendo bóveda Obsidian..."
obsidian "$OBSIDIAN_VAULT" &>/dev/null &
disown
sleep 2
echo "  ✓ Obsidian lanzado → $OBSIDIAN_VAULT"

# ============================================================
# Citas dinámicas — se elige una al azar en cada ejecución
CITAS=(
    "\"El Kwisatz Haderach no nació sabiendo. Leyó. Observó.\n   Conectó lo que nadie más se atrevía a conectar.\"\n                                        — Bene Gesserit, Dune"
    "\"El miedo es el asesino de la mente. Afrontaré mi miedo.\n   Que pase sobre mí y a través de mí. Solo yo permaneceré.\"\n                              — Letanía contra el Miedo, Dune"
    "\"Quien controla la especia, controla el universo.\n   Quien controla los datos, controla el conocimiento.\"\n                                    — Paul Muad'Dib, Dune"
    "\"No hay fin al aprendizaje. Solo hay distintos niveles\n   de comprensión.\"\n                                  — Lady Jessica, Dune"
    "\"La Fuerza no te dará respuestas. Solo la disciplina\n   y el estudio revelan los patrones ocultos.\"\n                                   — Maestro Yoda, Star Wars"
    "\"Trata de no hacerlo. Hazlo, o no lo hagas.\n   No existe el intentar.\"\n                                   — Maestro Yoda, Star Wars"
    "\"Un Jedi no actúa por gloria. Actúa porque comprende\n   mejor que nadie las consecuencias de no actuar.\"\n                                  — Obi-Wan Kenobi, Star Wars"
    "\"No es el poder del Anillo lo que importa, sino\n   la sabiduría de quien lo estudia.\"\n                                        — Gandalf, LOTR"
    "\"Incluso el más pequeño de los seres puede cambiar\n   el curso del futuro.\"\n                                        — Gandalf, LOTR"
    "\"No toda la oscuridad es maldad. No toda la luz\n   es sabiduría. Distinguirlas requiere estudio.\"\n                                     — Galadriel, LOTR"
)

INDICE=$(( RANDOM % ${#CITAS[@]} ))
CITA_ELEGIDA="${CITAS[$INDICE]}"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo -e "  $CITA_ELEGIDA"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  FLUJO DE INVESTIGACIÓN:"
echo ""
echo "  🔍 1. Encuentra el paper  →  Semantic Scholar / Connected Papers"
echo "      │"
echo "  📚 2. Agrégalo a Zotero   →  fuente principal, citas, metadata"
echo "      │"
echo "  🤖 3. Sube el PDF         →  NotebookLM (consultas exactas)"
echo "      │"
echo "  📝 4. Nota resumen        →  Obsidian / obsidian/papers/"
echo "      │"
echo "  🧠 5. Sube nota o PDF     →  Claude Project (análisis profundo)"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  Que la investigación comience. La especia debe fluir. 🌊"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
