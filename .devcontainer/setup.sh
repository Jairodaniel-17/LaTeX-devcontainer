#!/bin/bash

cd /home/vscode/workspace

if [ ! -f main.tex ]; then
    echo "main.tex no encontrado. Creando archivo base..."
    cat <<EOF > main.tex
\documentclass{article}
\usepackage[utf8]{inputenc}
\title{Mi Tesis}
\author{Autor}
\date{\today}

\begin{document}
\maketitle
\section{Introducción}
Aquí inicia tu documento.

\end{document}
EOF
else
    echo "Archivo main.tex detectado, no se crea nada nuevo."
fi

latexmk -pdf -silent main.tex || echo "Compilación inicial fallida: revisa errores de sintaxis"