guestbook:
  image:
    build: /vagrant/guestbook
  container:
    environment:
      - REDIS_HOST: 'localhost'
      - DATABASE_URL: 'postgres://guestbook:oxeophie2IeWah2u@localhost/guestbook'
    network_mode: host
