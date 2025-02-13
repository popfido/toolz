# Stage 1: Build the application
FROM node:23-alpine AS builder

# Install Python and build dependencies
RUN apk add --no-cache python3 make g++ gcc

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source files
COPY . .

# Build the application
RUN npm run build

# Stage 2: Serve the application
FROM nginx:alpine

# Create directory for application
RUN mkdir -p /usr/share/nginx/html

# Copy the built files from builder stage
COPY --from=builder /app/dist/ /usr/share/nginx/html/

# Copy nginx configuration
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Set proper permissions
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"] 