publish:
	jekyll build
	sudo rm -rf /var/www/sandwiches
	sudo cp -R _site /var/www/sandwiches
	sudo chown -R www-data:www-data /var/www/sandwiches

build_test:
	jekyll build

record:
	make commit
	git push

commit:
	git add .
	git commit
