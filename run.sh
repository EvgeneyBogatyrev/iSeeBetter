cd /model/pyflow
python3 setup.py build_ext -i
cp pyflow*.so ..
mkdir /model/resultmkdir /model/result/gauss
python3 iSeeBetterTest.py -o /model/result/gauss -s 4 -c --data_dir /dataset/gauss --future_frame False -u -m /model/weights/RBPN_4x.pth --gpus 1 --threads 1
mkdir /model/result/bicubic
python3 iSeeBetterTest.py -o /model/result/bicubic -s 4 -c --data_dir /dataset/bicubic --future_frame False -u -m /model/weights/RBPN_4x.pth --gpus 1 --threads 1
chmod -R 0777 /model/result
