#!/usr/bin/env bash
# get the node.js version
function nvm_prompt_info() {
  [[ -f "$NVM_DIR/nvm.bash" ]] || return
  local nvm_prompt
  nvm_prompt=$(node -v 2>/dev/null)
  [[ "${nvm_prompt}x" == "x" ]] && return
  nvm_prompt=${nvm_prompt:1}
  echo "${OSH_THEME_NVM_PROMPT_PREFIX}${nvm_prompt}${OSH_THEME_NVM_PROMPT_SUFFIX}"
}
