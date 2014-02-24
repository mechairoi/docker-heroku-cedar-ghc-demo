build:
	sudo docker run -v ${PWD}:/workspace -t mechairoi/heroku-cedar-ghc /bin/bash -xc 'cd /workspace/ \
	  && cabal --sandbox-config-file=./heroku.cabal.sandbox.config sandbox --sandbox=/workspace/.heroku-cabal-sandbox init \
	  && cabal --sandbox-config-file=./heroku.cabal.sandbox.config install --dependencies-only \
	  && cabal --sandbox-config-file=./heroku.cabal.sandbox.config configure \
	  && cabal --sandbox-config-file=./heroku.cabal.sandbox.config build --builddir=./dist-heroku \
	  && strip --strip-unneeded ./dist-heroku/build/heroku-haskell/heroku-haskell'
	mkdir -p ./dist/build/heroku-haskell
	cp ./dist-heroku/build/heroku-haskell/heroku-haskell ./dist/build/heroku-haskell/heroku-haskell
