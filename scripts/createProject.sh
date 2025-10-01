#Replace `test` with the project name
# 1) make the project home
docker exec -it hop-web bash -lc 'mkdir -p /home/hop/projects/test'

# 2) create & register the project "test"
docker exec -it hop-web bash -lc '/usr/local/tomcat/webapps/ROOT/hop-conf.sh \
  --project-create \
  --project test \
  --project-home /home/hop/projects/test \
  --project-parent default'

# 3) (optional) set it as default so you don’t have to pass -j every time
docker exec -it hop-web bash -lc '/usr/local/tomcat/webapps/ROOT/hop-conf.sh --default-project test'

# 4) check it’s there
docker exec -it hop-web bash -lc '/usr/local/tomcat/webapps/ROOT/hop-conf.sh -pl'

