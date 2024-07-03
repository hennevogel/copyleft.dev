# blog deployment

I need a webhook endpoint that runs make once a commit it pushed to master

# blog staging

I need a webhook endpoint that does...

## PR 12345 gets opened

function create {
  cd ~/blog
  git worktree add pull/12345
  cd pull/12345
  make
  docker run -dit --network=apps_default \
             --label traefik.enable=true \
             --label traefik.http.routers.featmap.rule="Host(`blog-pr-review.copyleft.dev`) && Path(`/12345`)" \
             --label traefik.http.routers.featmap.entrypoints=websecure \
             --label traefik.http.routers.featmap.tls.certresolver=mydnschallenge \
             --name blog-pull-12345 \
             -v ~/blog/pull/12345/_site:/srv/www/htdocs \
             tumbleweed_apache
}

## PR 12345 gets synced

function remove {
  docker stop blog-pull-12345 
  docker rm blog-pull-12345
  cd ~/blog
  git worktree remove --force pull/12345
}

remove(12345)
create(12345)

## PR 12345 gets closed

remove(12345)
