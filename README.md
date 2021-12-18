# Introdução
Modificação no painel do XFCE que impede o usuário de realizar modificações através do  menu de contexto, impedindo assim que o usuários leigos destruam a interface do sistema de forma não intecional

> Nota: isso não é um fork do projeto original, se trata apenas de uma modificação simples

# Como funciona?
Basicamente ele baixa o código fonte do painel e remove a chamada do menu de contexto e compila em pacotes Debian, todo o painel funciona, a compatibilidade API/ABI é mantida

# Qual a compatibilidade?
Qualquer distro com a versão da GLibc compatível com a LTS atual do Ubuntu ou equivalente Debian

# Como personalizar o painel?
O projeto não bloqueia modificações no painel, só deixa pra quem sabe o que está fazendo, para personalizar rode num terminal:

```
xfce4-panel -p
```
