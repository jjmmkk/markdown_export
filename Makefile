cwd = $(shell pwd)

alias:
	@echo 'markdown_export() {'
	@echo '    cwd=`pwd`'
	@echo "    script_dir='$(cwd)'"
	@echo '    cd "$$script_dir" && ./markdown_export.sh "$$cwd/$$1" && cd "$$cwd"'
	@echo '}'
