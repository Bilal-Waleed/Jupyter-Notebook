FROM python:3.12-slim

WORKDIR /lesson-2

COPY . /lesson-2

RUN pip install notebook

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
