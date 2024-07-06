#  echo "BUILD START"
#  python3.9 -m pip install -r requirements.txt
#  python3.9 manage.py collectstatic --noinput --clear
#  echo "BUILD END"
 #!/bin/bash

# Install dependencies
pip install -r requirements.txt

# Run collectstatic
python manage.py collectstatic --noinput
