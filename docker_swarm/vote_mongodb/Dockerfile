FROM python:3.8-alpine

# Set the application directory
WORKDIR /app

# Install our requirements.txt
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available for links and/or publish
EXPOSE 80

ENTRYPOINT ["python"]
CMD ["app.py"]
