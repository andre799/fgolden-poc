#!/bin/bash

# Diretório com os arquivos PNG
golden_images_dir="$1"

# Função para listar os arquivos PNG
list_png_files() {
  find "$golden_images_dir" -type f -name "*.png" | while read -r file; do
    echo ">> Arquivo PNG: $file"
  done
}

# Função para visualizar um arquivo PNG específico
visualize_png_file() {
  png_file="$1"

  # Verifique se o sistema possui o comando `display`
  if command -v display >/dev/null 2>&1; then
    # Use o comando `display` para visualizar a imagem (somente funciona em sistemas X11)
    display "$png_file"
  elif command -v open >/dev/null 2>&1; then
    # Use o comando `open` para abrir a imagem no visualizador padrão (macOS)
    open "$png_file"
  else
    echo ">> Erro: Nenhum visualizador de imagens disponível."
  fi
}

# Argumento 1: Diretório com os arquivos PNG
golden_images_dir="$1"

# Liste os arquivos PNG
list_png_files "$golden_images_dir"

# Exemplo de visualização de um arquivo PNG específico
# (Substitua "Home_Screen.png" pelo nome do arquivo desejado)
visualize_png_file "$golden_images_dir/Home_Screen.png"
