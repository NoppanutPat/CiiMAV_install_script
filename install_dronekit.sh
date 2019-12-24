sudo pip uninstall pymavlink
sudo pip uninstall dronekit
cd ~
git clone https://github.com/dronekit/dronekit-python.git
cd dronekit-python
sudo python setup.py build
sudo python setup.py install
