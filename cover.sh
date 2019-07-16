#!/bin/sh

# wake up heroku!
#curl http://demo.opencov.com || true
# comment

export COVERALLS_REPO_TOKEN=UUhvWDVPUjVXZkZyRUJSNFc4cFkzTEpKQWZaVHVHeC9OWEVrV1ZRMQ==
MIX_ENV=test mix coveralls.post \
  --sha="$TRAVIS_COMMIT" \
  --committer="$(git log -1 $TRAVIS_COMMIT --pretty=format:'%cN')" \
  --message="$(git log -1 $TRAVIS_COMMIT --pretty=format:'%s')" \
  --branch="$TRAVIS_BRANCH"
