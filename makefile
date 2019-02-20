build: 
	docker build -t opensuse/leap/gnu-cobol .

runcontainer: 
	docker run --rm opensuse/leap/gnu-cobol

dockerprod: build runcontainer
	echo "success"

