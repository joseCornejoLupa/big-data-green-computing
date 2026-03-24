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
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  \"El Kwisatz Haderach no nació sabiendo. Leyó. Observó."
echo "   Conectó lo que nadie más se atrevía a conectar.\""
echo "                                        — Bene Gesserit"
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
echo "  \"El miedo es el asesino de la mente. El miedo es la pequeña"
echo "   muerte. Afrontaré mi miedo. Que pase sobre mí y a través"
echo "   de mí. Solo yo permaneceré.\""
echo "                         — Letanía contra el Miedo, Dune"
echo ""
echo "  Que la investigación comience. La especia debe fluir. 🌊"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
