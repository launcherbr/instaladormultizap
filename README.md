# Whaticket versão Multizap

O suporte a essa versão é limitado.

1️⃣ No Ubuntu 22 criar o Usuário deploy:

Crie o usuário "deploy" manualmente:

```bash
adduser deploy
```

Defina uma senha segura para o usuário. 🔑
Pressione "Enter" para pular os campos de dados pessoais.

2️⃣ Adicione o usuário "deploy" ao grupo sudo:

```bash
usermod -aG sudo deploy
```

ou

```bash
adduser deploy sudo
```

Isso permitirá que o usuário "deploy" execute comandos com privilégios de administrador. 🧑‍🔧

Comando alternativo, apenas se não for usado o anterior:

```bash
useradd -m -p *senha* -s /bin/ -G sudo deploy
usermod -aG sudo deploy
```

3️⃣ Atualize o servidor e instale os pacotes requeridos

```bash
sudo apt -y update && apt -y upgrade
```

```bash
apt install software-properties-common
```

```bash
sudo apt-get install -y libgbm-dev wget unzip fontconfig locales gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils git
```

```bash
sudo apt update && sudo apt install zip unzip -y
```

4️⃣ Baixe o instalador:

```bash
sudo apt install -y git && git clone https://github.com/launcherbr/instaladormultizap.git instalador && sudo chmod -R 777 instalador  && cd instalador  && sudo ./instalar_primaria
```
===================================================

Acessando diretório do instalador & iniciando instalações adicionais (usar este comando para segunda ou mais instalaçãos:

```bash
cd instalador  && sudo ./instalar_nova_instancia
```

===================================================

login: admin@admin.com </br>
senha: 123456

===================================================

Integração Mercado Pago.
Editar o .env do backend

```bash
su deploy
sudo nano .env
```

```bash
MP_ACCESS_TOKEN=
MP_NOTIFICATION_URL=BACKEND_URL/subscription/mercadopagowebhook
```

Realizar o rebuild dentro do backend:

```bash
sudo su deploy 
pm2 stop all && npm run build && pm2 restart all && sudo reboot now
```

===================================================
Personalizações:
TROCAR NOME APP MÓVEL

frontend/public/manifest.json

Troque pelo nome da sua empresa

linhas: 2 e 3

------------------------------------------

LOGO DA TELA DE LOGIN 

frontend/public
logo.png

------------------------------------------

PERSONALIZAÇÃO INTERNA
----------------------
frontend\src\pages\Login/index

TROCAR CAPA DO SISTEMA
Linha: 24 (link do arquivo)
Modelo 1 - https://i.ibb.co/bjWb8wtF/20250619-1156-Chatbot-no-Futuro-Digital-remix-01jy4azzb1fhfr62wpj150st74.png

Modelo 2 - https://i.ibb.co/9mrhK8xN/20250619-1156-Chatbot-no-Futuro-Digital-remix-01jy4azzb0fnqsfbcs1d0a9sex.png


TROCAR NÚMERO WHATSAPP TELA INICIAL
Linha:295

TROCAR ÍCONE DO WHATSAPP
Linha: 298 - https://i.ibb.co/rRckh8MF/favicon-256x256.png



Comando no TERMINAL

cd /home/deploy/empresa01/frontend && npm i --f && npm run build

----------------------------------------
PRONTO FINALIZADO!
