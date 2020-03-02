WINDOW="dev"

new-window
rename-window $WINDOW
#rename-session $USER

# Seleciona o primeiro painel
selectp -t 1
# Divide o painel na metade na vertical
splitw -h -p 50 "exec htop"

# Seleciona o segundo (novo) painel
selectp -t 2
# Divide o painel na metade na horizontal
splitw -v -p 50
# Retorna o foco ao primeiro painel
selectp -t 1
