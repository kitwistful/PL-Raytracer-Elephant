.PHONY : run
.PHONY : test
.PHONY : clean

all: run

run:
	cd ./src ; \
	runhaskell QuadTreeDemo.hs

test:
	rm -rf test/Scene/Scene/; \
	mkdir test/Scene/Scene/; \
	cp src/Scene/* test/Scene/Scene/ ;\
	cd test/Scene/ ; \
	runhaskell TestEntity.hs ; \
	runhaskell TestRectangle.hs ; \
	runhaskell TestQuadrant.hs ; \
	runhaskell TestQuadTree.hs

clean:
	rm -rf test/Scene/Scene/
