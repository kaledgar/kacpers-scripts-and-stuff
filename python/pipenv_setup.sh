# Install
pip install pipenv

# clear pipenv
export PIPENV_IGNORE_VIRTUALENVS=1
pipenv --rm

# dot_env
export PIPENV_DOTENV_LOCATION=~/path/.env

# prerequisite - create .env / requirements.txt
pipenv install -v

pipenv shell
