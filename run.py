import os
from pathlib import Path


os.system("chmod -R 0777 /model")

with open("/model/run.sh", 'w') as f:
    
    videos = os.listdir("/dataset")
    for video in videos:
        f.write(f"mkdir /model/result/{video}\n")
        f.write(f"python3 iSeeBetterTest.py -o /model/result/{video} -s 4 -c --data_dir /dataset/{video} --future_frame False -u -m /model/weights/RBPN_4x.pth --gpus 1 --threads 1\n")

    f.write("chmod -R 0777 /model/result\n")

os.system("/model/run.sh")
