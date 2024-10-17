FROM python:3.9-slim


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose the Flask app port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]