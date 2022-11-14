FROM python:3.8


COPY ./requirements.txt /app/getemp/requirements.txt
WORKDIR /app/getemp
RUN pip install -r requirements.txt

COPY ./GetEmp.py /app/getemp/GetEmp.py
COPY ./templates/GetEmp.html /app/getemp/templates/GetEmp.html
COPY ./templates/GetEmpOutput.html /app/getemp/templates/GetEmpOutput.html

EXPOSE 8080

ENTRYPOINT ["python", "GetEmp.py"]
