FROM phaustin/notebook:sep23n7
USER ${NB_USER}
mkdir -p /home/jovyan/work/docker_files_jb

CMD /bin/bash



