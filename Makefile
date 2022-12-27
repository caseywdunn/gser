all: KMC GenomeScope2

KMC:
		mkdir -p bin; \
		cd bin; \
		mkdir -p tmp; \
		cd tmp; \
		wget 'https://github.com/refresh-bio/KMC/releases/download/v3.2.1/KMC3.2.1.linux.tar.gz'; \
		tar -xzf KMC3.2.1.linux.tar.gz; \
		rm KMC3.2.1.linux.tar.gz; \
		cd ..; \
		mv tmp kmc3;\

GenomeScope2:
		mkdir -p bin; \
		cd bin; \
		git clone 'https://github.com/tbenavi1/genomescope2.0.git'; \
		cd genomescope2.0; \
		Rscript install.R; \
