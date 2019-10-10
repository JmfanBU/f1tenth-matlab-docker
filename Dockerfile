FROM madhurbehl/f1tenth
LABEL maintainer="Jiameng Fan <jmfan@bu.edu>"

RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; source /home/catkin_ws/devel/setup.bash; rosdep update'

EXPOSE 80
WORKDIR /home/
ENV HOME=/home/ubuntu \
    SHELL=/bin/bash
ENTRYPOINT ["/startup.sh"]
