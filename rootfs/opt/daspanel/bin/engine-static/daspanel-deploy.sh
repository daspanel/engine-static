#!/bin/sh
clean_up() {
    rm -Rf $build_dir
    rm -Rf $dist_dir
}

echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] INFO Site deploy for engine: $ENGINE"
echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] INFO Pubsub message: $1 $2"

job_cuid=$(echo "$2" | /opt/daspanel/bin/jq -r ._cuid)
site_cuid=$(echo "$2" | /opt/daspanel/bin/jq -r .site)
site_version=$(echo "$2" | /opt/daspanel/bin/jq -r .version)
zip_password=$(echo "$2" | /opt/daspanel/bin/jq -r .password)

site_dir="/opt/daspanel/data/$DASPANEL_SYS_UUID/content/$site_cuid/v/$site_version"
build_dir="/tmp/daspanel-build/$job_cuid"
dist_dir="/tmp/daspanel-dist/$job_cuid"

if [ -d $build_dir ]; then
    echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] ERROR Job $job_cuid Build directory already exists: $build_dir"
    exit 1
fi
if [ -d $dist_dir ]; then
    echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] ERROR Job $job_cuid Dist directory already exists: $dist_dir"
    exit 1
fi
mkdir -p $build_dir
mkdir -p $dist_dir

echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] INFO Job $job_cuid Site directory: $site_dir"
echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] INFO Job $job_cuid Build directory: $build_dir"
echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] INFO Job $job_cuid Dist directory: $dist_dir"
echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] INFO Job $job_cuid Zip password: $zip_password"

rm -Rf $build_dir/*

zip -P $zip_password -r $build_dir/$site_cuid-$site_version.zip $site_dir > $build_dir/zip-content.log

echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] INFO Job $job_cuid Finished building: $build_dir/$site_cuid-$site_version.zip"

remote_file=$(curl --upload-file $build_dir/$site_cuid-$site_version.zip https://transfer.sh/$job_cuid.zip)
result=$?
if [ ! $result -eq 0 ] ; then
    echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] ERROR Job $job_cuid Failed dist upload: $build_dir/$site_cuid-$site_version.zip https://transfer.sh/$job_cuid.zip"
    clean_up
    exit 1
fi
echo "[DASPANEL-$DASPANEL_CONTAINER_TYPE] INFO Job $job_cuid Finished dist upload: $remote_file"
clean_up

