Этот проект использует многоступенчатую сборку (multi-stage build) для Java-приложения. Это позволяет сначала скомпилировать код в одном контейнере, а затем запустить его в легковесном JRE-контейнере.

Запуск

Собрать Docker-образ:
docker build -t java-multi-stage.

Запустить контейнер:
docker run --rm java-multi-stage
