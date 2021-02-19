FROM python:3.8-slim
MAINTAINER CRISTIAN_CONTRERA <cristiancontrera95@gmail.com>

WORKDIR /app

COPY requirements.txt requirements.txt
COPY data/Dataset-WinclapApp-TestDS.csv Dataset-WinclapApp-TestDS.csv
COPY notebooks/Outliers.ipynb Outliers.ipynb

RUN pip install --upgrade pip &&\
 pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "lab", "Outliers.ipynb", "--allow-root", "--ip=0.0.0.0", "--no-browser"]