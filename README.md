# Leo Docker #


### Usage ###

1. Run command below with leo-vanilla repository credentials to build docker image:
```bash
$ sudo ./build.sh 
```

2. Next, you can run container with:
```bash
$ sudo docker run -it --name=<CONTAINER_NAME> --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" vanilla_leo:latest
```

3. Enable X server on host, before running container or attaching to it:
```sh
$ xhost +local:root
```

4. or if you're concerned about security:
```sh
$ xhost +local:`docker inspect --format='{{ .Config.Hostname }}' <CONTAINER_NAME>`
```

5. Then, you can run command in running container:
```sh
$ sudo docker exec -it <CONTAINER_NAME> /bin/bash
```

6. Run Gazebo simulation
```
roslaunch leo_gazebo leo_empty_world.launch
```
7. Open another terminal and run rviz
```
roslaunch leo_viz rviz.launch
```
