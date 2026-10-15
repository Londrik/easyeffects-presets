ee() {
  local preset="$1"
  local display_name="${2:-$preset}"
  local icon="${3:-audio-headphones}"

  if [[ -z "$preset" ]]; then
    echo "Uso: ee <nome> (ex: eemaximo, eemetal, eeclassic, eemovie)"
    return 1
  fi

  if ! pgrep -x easyeffects >/dev/null 2>&1; then
    easyeffects --gapplication-service >/dev/null 2>&1 &
    sleep 0.5
  fi

  easyeffects -l "$preset" 2>/dev/null
  notify-send "EasyEffects" "Perfil $display_name ativado" -i "$icon" -t 2000 2>/dev/null || true
  echo "Áudio: $display_name"
}

alias eemaximo="ee eemaximo 'Volume Máximo' audio-volume-high"
alias eemetal="ee Metal_Moderno 'Metal / Djent' audio-headphones"
alias eeclassic="ee Musica_Classica 'Música Clássica' audio-headphones"
alias eemovie="ee Filmes_Cinema 'Filmes Cinema' video-display"
alias eehifi="ee Musica_HiFi 'Música Hi-Fi' audio-headphones"

# --- Utilitários de Controle ---
alias eereset="easyeffects -b 1 2>/dev/null && notify-send 'EasyEffects' 'Efeitos desativados (Bypass)' -i audio-volume-muted -t 2000 2>/dev/null || true"
alias eebypass="easyeffects -b 2 2>/dev/null && notify-send 'EasyEffects' 'Alternando Bypass' -i audio-volume-high -t 2000 2>/dev/null || true"
alias eekill="easyeffects -q 2>/dev/null; sleep 0.3; easyeffects --gapplication-service >/dev/null 2>&1 & notify-send 'EasyEffects' 'Daemon reiniciado' -i view-refresh -t 2000 2>/dev/null || true"
