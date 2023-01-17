#!/usr/bin/envsh

# abortar en caso de errores
set -e

# compilado
npm run build

# navega al directorio de salida de compilación
cd dist

# coloca .nojekyll para forzar el procesamiento de Jekyll
echo > .nojekyll

# si estás desplegando en un dominio personalizado
# echo 'www.ejemplo.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'


# si estás desplegando en https://<NOMBRE DE USUARIO>.github.io/<REPO>
git push -f git@github.com:<daw2-garcia23>/<VueGit>.git main:gh-pages

cd -
