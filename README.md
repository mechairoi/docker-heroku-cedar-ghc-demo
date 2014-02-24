# Haskell Demo on Heroku Cedar

This demo is live on Heroku:

http://docker-heroku-cedar-ghc.herokuapp.com/

It uses the Heroku Cedar Docker Image:

https://github.com/mechairoi/docker-heroku-cedar-ghc

## Pushing to Heroku

Clone this repository:

    git clone https://github.com/mechairoi/docker-heroku-cedar-ghc.git

Create a new Heroku application:

    heroku create --stack=cedar

Install Docker: https://www.docker.io/gettingstarted/

Build & Push!

    make build
    git checkout -b deploy
    git add -f dist/build/heroku-haskell/heroku-haskell
    git commit -m "build"
    git push heroku deploy:master
