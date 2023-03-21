FROM python:3
WORKDIR /srv/app/
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip \  
&& pip install --no-cache-dir -r requirements.txt
RUN mkdir -p /srv/app/conf/
COPY web.py /srv/app/web.py
COPY web.conf /srv/app/conf/web.conf
CMD ["python", "/srv/app/web.py"]  