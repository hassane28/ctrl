FROM tiangolo/uvicorn-gunicorn-fastapi:latest
WORKDIR /ctrl
COPY . /ctrl
EXPOSE 5000
RUN pip install groq
CMD ["python", "mini_groq.py", "uvicorn"]
