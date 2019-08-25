#! /bin/bash

TEMPLATE="debian-docker-template"
echo "===== Construcción de la Box a partir de la template de VBox ====="
echo -e "By MocoNinja...\n"
echo "Crear una box de Vagrant a partir de la plantila (que deberías tener en VirtualBox) llamada: \"$TEMPLATE\"??"

choice="n"

read -p "(y/n): " choice

echo -e "\n"

if [[ $choice =~ ^[y|Y|s|S]$ ]]; then
    echo "😎😎 Creándola!"
    rm -f "package.box" && vagrant package --base $TEMPLATE
    echo "Done!"
    sleep 1
else
    echo "🤷🤷🤷🤷🤷"
    echo "Pues pasando..."
fi

echo -e "\n"

echo "🐕 Ciao! 🐺"

