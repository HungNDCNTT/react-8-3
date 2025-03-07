#!/bin/bash

# Cài đặt các package (npm install)
echo "Installing dependencies..."
npm install

# Khởi chạy server (npm start) dưới background
echo "Starting server..."
npm start &

# Đợi một chút để server khởi động (có thể điều chỉnh thời gian nếu cần)
sleep 10

# Khởi chạy ngrok để tạo tunnel cho server
echo "Starting ngrok..."
ngrok http http://localhost:2006
