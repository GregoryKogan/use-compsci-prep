#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd $SCRIPTPATH/image_optimization

if [ ! -d ./venv ]; then
    python3 -m venv venv
fi

source venv/bin/activate
pip3 install -r requirements.txt

python3 img_optim.py --input $SCRIPTPATH/../assets/images --output $SCRIPTPATH/../src/images --quality 85
