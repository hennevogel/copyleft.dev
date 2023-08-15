.PHONY: all
include ../.env
all:
	sed "s/FEATMAP_DB_NAME/$(FEATMAP_DB_NAME)/; s/FEATMAP_DB_USER/$(FEATMAP_DB_USER)/; s/FEATMAP_DB_PASS/$(FEATMAP_DB_PASS)/; s/FEATMAP_JWT_SECRET/$(FEATMAP_JWT_SECRET)/; s/FEATMAP_HTTP_PORT/$(FEATMAP_HTTP_PORT)/" conf.json.template > conf.json
	docker build -t leap_featmap .
	rm conf.json
