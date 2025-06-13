FROM apache/beam_python3.12_sdk:2.65.0

WORKDIR app

copy ./requirements.txt ./
RUN pip install -r --no-cache-dir requirements.txt

COPY . .

