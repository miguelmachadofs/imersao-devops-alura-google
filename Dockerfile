FROM python:3.13.5-alpine3.22

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de requisitos (caso exista)
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante dos arquivos da aplicação
COPY . .

# Expõe a porta padrão (ajuste conforme necessário)
EXPOSE 5000

# Comando para rodar o app principal
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5000", "--reload"]