echo "update apt-get..."
sudo apt-get update
echo "install essential python packages..."
sudo apt-get install python-dev libxml2-dev libxslt1-dev zlib1g-dev
echo "installing pip..."
sudo apt-get install python-pip
echo "installing setup tools..."
sudo pip install --upgrade setuptools
echo "installing lxml"
sudo pip install lxml‑3.5.0‑cp27‑none‑win32.whl
echo "installing Scrapy..."
sudo pip install Scrapy
echo "install SQLAlchemy..."
sudo pip install sqlalchemy
echo "creat requirements.txt"
sudo rm -rf requirements.txt
sudo pip freeze > requirements.txt
echo "~~~~~installation done~~~~~"
