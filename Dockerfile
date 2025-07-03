FROM python:3.11-slim

WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your bot code
COPY bot.py .

# Set environment variables (replace with actual values)
ENV BOT_TOKEN="7767366013:AAH7xhl49t-_DuiQjneqRG33U1dKcI0z7Zk"
ENV API_URL_TEMPLATE="your-api-url-template-here"
ENV WEBHOOK_URL="https://no-permanent-like-onrender.com/"
ENV PORT=5000
ENV TZ=Asia/Kolkata

# Set timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Start the bot
CMD ["python", "bot.py"]