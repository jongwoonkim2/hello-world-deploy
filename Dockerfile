# 1. 아주 가벼운 Nginx 웹 서버 이미지를 가져옵니다.
FROM nginx:alpine

# 2. 기본으로 있는 안 예쁜 Nginx 페이지를 지웁니다.
RUN rm /usr/share/nginx/html/index.html

# 3. 방금 우리가 만든 index.html을 웹 서버 폴더로 복사합니다.
COPY index.html /usr/share/nginx/html/index.html

# 4. 80번 포트를 열어줍니다.
EXPOSE 80

# 5. 서버를 실행합니다.
CMD ["nginx", "-g", "daemon off;"]