Building the newest Zero
Boot build

Running Zero
	./zero ukb gotc-dev 1 "gs://broad-gotc-dev-white-album/" "gs://gotc-us-testbucket2/"

Using Zero to start workflows
	./zero starter gotc-dev

Starting the zero service:
	To run the API:
		./ops/server.sh
	To run the UI
		npm install --prefix=ui
		npm run serve --prefix=ui


Location of swagger:
	http://localhost:3000/swagger/index.html
	
Location of API:
	http://localhost:8080/

