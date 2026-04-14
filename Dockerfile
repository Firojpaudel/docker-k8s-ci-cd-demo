# Use a small base image to keep things fast
FROM python:3.11-slim

# Quick tip: Don't run as root in production!
# We create a system user for better security.
RUN useradd -m appuser

WORKDIR /home/appuser

# Layer caching: Copy requirements first so we don't 
# re-download packages if only our code changes.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the actual application code
COPY app.py .

# Give our non-root user ownership of the files
RUN chown -R appuser:appuser /home/appuser
USER appuser

# Flask runs on 5000 by default
EXPOSE 5000

CMD ["python", "app.py"]
