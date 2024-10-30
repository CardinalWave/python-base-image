# Imagem base do Python na versao 3.11
FROM python:3.11-alpine

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as propriedades necessarias
RUN apk add --no-cache git build-base libffi-dev

# Atualiza as dependencias
RUN python3 -m pip install --upgrade pip

# Instala as dependências do Pythonz
RUN pip install --no-cache-dir -r requirements.txt


CMD [ "echo", "hello base image" ]
