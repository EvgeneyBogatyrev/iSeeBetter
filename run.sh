cd /model/pyflow
python3 setup.py build_ext -i
cp pyflow*.so ..
chmod -R 0777 /model
mkdir /results/bicubic
python3 /model/iSeeBetterTest.py -o /results/bicubic -s 4 -c --data_dir /dataset/bicubic --future_frame False -u -m /model/weights/RBPN_4x.pth --gpus 1 --threads 1
chmod -R 0777 /results
