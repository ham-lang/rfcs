#!/bin/bash 
# ========== FUNCTIONS ==========
# https://stackoverflow.com/questions/7126580/expand-a-possible-relative-path-in-bash/7126780
function normalizepath {
  (cd "$(dirname '$1')" &>/dev/null && printf "%s/%s" "$PWD" "${1##*/}")
}

repo_folder=$(normalizepath "$(dirname "${BASH_SOURCE[0]}")/../")

# ========== PROMPT =============
read -p "Enter Proposal ID (my-feature): " proposal_id
cp "${repo_folder}rfc-template.md" "${repo_folder}text/0000-${proposal_id}.md"
echo "Created \"${repo_folder}text/0000-${proposal_id}.md\""
