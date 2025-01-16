init:
	flutter config --enable-web

chrome:
	flutter run -d chrome --web-renderer=html

edge:
	flutter run -d edge --web-renderer=html

deploy:
	git add . && git commit -m "deploy" && git push -u origin master