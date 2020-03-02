###############################################
###### Configurações de Aparência          ####
###############################################

# Define as cores da borda dos painéis
set -g pane-border-style "fg=colour238"
set -g pane-active-border-style "fg=colour4"

# Define o estilo de cores da barra de comandos/mensagens
set -g message-style "fg=colour231,bg=colour26"

###############################################
###### Configurações da barra de status    ####
###############################################

# Habilita a barra de status
set -g status "on"

# Define a posição da barra no terminal
set -g status-position bottom

# Define as cores da barra
set -g status-style "none,bg=colour235"

# Define o intervalo de atualização (seg)
set -g status-interval 1

###############################################
##### Configurações de status esq/dir      ####
###############################################

# Define o comprimento do status esquerdo e direito
set -g status-left-length "100"
set -g status-right-length "100"

# Remove todos os estilos dos status
set -g status-left-style "none"
set -g status-right-style "none"

# Define as opções da barra de status no lado esquerdo
set -g status-left "#{?pane_synchronized,#[fg=colour254]#[bg=colour27] #[blink]⮀ SYNC#[noblink] #[fg=colour27]#[bg=colour245],}#[fg=colour235,bg=colour245,bold]  #S #[fg=colour245,bg=colour235,nobold,nounderscore,noitalics]"

# Define as opções da barra de status no lado direito
set -g status-right "#[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour254,bg=colour238,bold] %H:%M:%S     #(echo $(uptime) | awk -F, \'{sub(\".*up \",x,$1);print $1}\') #[fg=colour245,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour235,bg=colour245,bold] #h "

##############################################
#### Configurações dos status das Janelas ####
##############################################

# Define a localização do status das janelas
set -g status-justify "left"

# Define as cores para o status das janelas
setw -g window-status-style "none,fg=colour246,bg=colour235"
setw -g window-status-activity-style "none,fg=colour245,bg=colour235"

# Define o separador entre Janelas
setw -g window-status-separator ""

# Desabilita o renomear automático de janelas
setw -g automatic-rename off

# Define a formatação do status das Janelas inativas
setw -g window-status-format "#[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]#[default]#{?window_last_flag,✱,} #{?window_activity_flag,✹ ,}#{?window_bell_flag,⚡,} #W #[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]"

# Define a formatação do status da Janela ativa
setw -g window-status-current-format "#[fg=colour235,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour254,bg=colour238] #{?window_active,✭ ,}#{?window_zoomed_flag,⍟ ,} #W #[fg=colour238,bg=colour75,nobold,nounderscore,noitalics]#[fg=colour254,bg=colour75]#P#[fg=colour75,bg=colour235]"

#------------------------------------#
# Significado dos simbolos de status #
#------------------------------------#
# ✭ : Indica a janela atual.
# ✱ : Indica a janela anterior selecionada.
# ✹ : Indica atividade detectada numa janela monitorada.
# ⚡: Indica a ocorrência de um alerta na janela.
# ~ : The window has been silent for the monitor-silence interval.
# M : The window contains the marked pane.
# ⍟ : Indica que o painel está ampliado na janela.

#------------------------------------#
# Outros simbolos                    #
#------------------------------------#
# ➤ ✭ ✘ ● ⚡ ⚙ ⌚ ◀ ▶ ✓ ✗ ✈ ✂ ➦ ☞ λ ᐅ ♥ ☂ ♒ 𝝙 ⬢ ⍟ ⮀ 
# ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ 3 ⚳ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♺ ♻ ♼ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
# ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ ⨠ 
# ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟  ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ
