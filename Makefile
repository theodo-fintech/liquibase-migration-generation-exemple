MIGRATION_LABEL = "to-be-changed"
DATE_WITH_TIME := $(shell /bin/date "+%Y%m%d%H%M%S")

start:
	mvn spring-boot:run

makeMigration:
	mvn liquibase:diff -DdiffChangeLogFile=src/main/resources/db/changelog/changes/${DATE_WITH_TIME}-${MIGRATION_LABEL}.yaml
	@echo "  - include:" >> src/main/resources/db/changelog/db.changelog-master.yaml
	@echo "      file: classpath*:db/changelog/changes/$(DATE_WITH_TIME)-$(MIGRATION_LABEL).yaml" >> src/main/resources/db/changelog/db.changelog-master.yaml
