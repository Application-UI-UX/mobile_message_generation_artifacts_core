cmake --build . --target clean
cmake .
cmake install
gradle
source ../rosmobile_build_tools/init_setup.sh
source ../rosmobile_bootstrap/init_setup.sh
source ../genmobile/init_setup.sh
source devel/setup.bash
sudo python3 setup.py install
mvn install
mvn site:site
