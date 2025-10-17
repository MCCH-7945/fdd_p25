#!/bin/bash
set -e

echo "==============================================="
echo "🕹️  Conectando a Bandit nivel $BANDIT_LEVEL ..."
echo "==============================================="

if [ -z "$BANDIT_LEVEL" ] || [ -z "$BANDIT_PASSWORD" ]; then
  echo "❌ ERROR: Debes definir BANDIT_LEVEL y BANDIT_PASSWORD"
  echo "Ejemplo:"
  echo "docker run -e BANDIT_LEVEL=5 -e BANDIT_PASSWORD=HWasnPhtq9AVKe0dmk45nxy20cvUa6EG mi_bandit_image"
  exit 1
fi

# Ejecutar conexión SSH al nivel indicado
sshpass -p "$BANDIT_PASSWORD" ssh -o StrictHostKeyChecking=no bandit$BANDIT_LEVEL@bandit.labs.overthewire.org -p 2220

