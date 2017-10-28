![sinatra](https://img.shields.io/badge/sinatra-2.0.0-green.svg)
![docker](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)

# BitBot - Slack Chatbot Project
Slack Chatbot Project is used to answer Slack users with a FAQ.

## Requirements
- Docker
- Ruby
- Sinatra
- [api.ai](api.ai)
- Postgresql
- rspec
- factory_girl

## Getting Started
```
git clone https://github.com/renington/bitbot.git
cd bitbot
```

```
(user admin) $ docker-compose build
```

```
(user admin) $ docker-compose run website rake db:create && db:migrate
```

```
(user admin) $ docker-compose up
```
