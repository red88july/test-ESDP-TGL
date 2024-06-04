#!/bin/bash

REL_PATH=$(dirname "$0")
CURRENT_DIR=$(pwd)

echo $REL_PATH
echo $CURRENT_DIR

if ! command -v pm2 &> /dev/null
then
  echo "pm2 is not installed or not in PATH"
  exit 1
fi

echo '#########################'
echo '### Initializing test process! ###'

echo '# Initializing SERVER'
cd '../ESDP-TGL' || exit 1

echo '# Running FIXTURES in test mode'
npm run seed:test

echo '# Running SERVER in test mode'
pm2 start "npm run start:test" --name="tgl-server-test"

echo '# Initializing FRONTEND'
cd '../ESDP-TGL-FRONT' || exit 1

echo '# Running FRONTEND in test mode'
pm2 start "npm run start:test" --name="tgl-frontend-test"

while ! nc -z localhost 5183; do
  sleep 0.1
done

echo '### Running TESTS!'

cd '../test-ESDP-TGL' || exit 1
npx codeceptjs run --steps "$@"
EXIT_CODE=$?

echo '### Killing test process'
pm2 kill

exit ${EXIT_CODE}
