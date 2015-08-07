for i in "${MIT-MAGIG-COOKIES[@]}"; do xauth add $i; done
cd /opt/kitematic; npm start
