#!/bin/bash
# Script para exibir tarefas pendentes e concluídas

# Array de tarefas (aquelas com 'P' são pendentes, e 'C' são concluídas)
tarefas=(
    "P: Fazer call com Arthur para organizar tarefas 
      - perguntar sobre build embed
      - analisar progresso
      - organizar tarefas
    "
    "P: Criar pagina para renderizar iframe snooker king
      - forma de gerar build iframe para incorporar na página
    "
    "P: Estudar Atualizações framework xplend
      - Problemas ao execultar comandos 
      - Entender como funciona entrar e paginas de login/logout
    "
    "P: Entrar em suporte zoho meeting para contratar plano
      - Entrar em suporte para contratar e entender api
    "
    "P: Estudar python"
)

# Exibir as tarefas no terminal
echo "=== Tarefas Pendentes ===

"
for tarefa in "${tarefas[@]}"; do
    if [[ $tarefa == P* ]]; then
        echo "- ${tarefa:3}"
    fi
done

echo ""
echo "=== Tarefas Concluídas ===

"
for tarefa in "${tarefas[@]}"; do
    if [[ $tarefa == C* ]]; then
        echo "- ${tarefa:3}"
    fi
done
