#!/bin/bash
set -e

# pull examples notebooks
git clone https://github.com/met-office-lab/example-notebooks.git /usr/local/share/notebooks/Example\ Notebooks
rm /usr/local/share/notebooks/Example\ Notebooks/LICENSE

# start single user server
notebook_arg=""
if [ -n "${NOTEBOOK_DIR:+x}" ]
then
    notebook_arg="--notebook-dir=${NOTEBOOK_DIR}"
fi

# exec jupyterhub-singleuser \
#   --port=8888 \
#   --ip=0.0.0.0 \
#   --user=$JPY_USER \
#   --cookie-name=$JPY_COOKIE_NAME \
#   --base-url=$JPY_BASE_URL \
#   --hub-prefix=$JPY_HUB_PREFIX \
#   --hub-api-url=$JPY_HUB_API_URL \
#   ${notebook_arg} \
#   $@

exec jupyter notebook