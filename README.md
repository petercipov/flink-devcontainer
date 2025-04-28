# flink-devcontainer

## Start
```bash


source /venv/bin/activate

# Deploy to local cluster
start-cluster.sh
flink run --jobmanager localhost:8081  --python word_count.py
# > Job has been submitted with JobID 851d0f23bc9bf9006d52548c5b88b894
stop-cluster.sh

# Run locally (spin up in memory -flink calling python process - usefull for debugging)
python ./word_count.py

```

Open `http://localhost:8081` to open flink admin console


## Stop
```bash
stop-cluster.sh
```
