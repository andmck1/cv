CV_DIRS := src/ml_engineering src/masters_game_development src/masters_game_technology

.PHONY: all help build open clean

help:
	@echo "Usage:"
	@echo "  make build             - Build CV for all directories"
	@echo "  make clean             - Remove auxiliary LaTeX files"
	@echo "  make help              - Show this help message"

build:
	@echo "Building all PDFs..."
	@for dir in $(CV_DIRS); do \
		pdflatex -output-directory ./$${dir}/out ./$${dir}/cv.tex > /dev/null ; \
	done

clean:
	@echo "Cleaning auxiliary files..."
	@rm -f $(foreach dir, $(CV_DIRS), $(dir)/out/*.aux $(dir)/out/*.log $(dir)/out/*.toc $(dir)/out/*.blg $(dir)/out/*.out $(dir)/out/*.fls $(dir)/out/*.fdb_latexmk $(dir)/out/*.synctex.gz)

