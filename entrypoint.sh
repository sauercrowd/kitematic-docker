for i in "${MITCOOKIES[@]}"; do xauth add $i; done
cd /opt/kitematic; npm start
