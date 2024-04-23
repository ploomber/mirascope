FROM python:3.11

RUN pip install jupyterlab ipywidgets --no-cache-dir
RUN pip install numpy matplotlib pandas openai --no-cache-dir
RUN pip install mirascope[all]

COPY jupyter_server_config.py /root/.jupyter/jupyter_server_config.py

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser",  "--port=80", "-y", "--allow-root"]
