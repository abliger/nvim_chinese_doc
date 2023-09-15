if [ -d "target" ]; then
		rm -rf ./target
fi

nvim -V1 -es --clean +"lua require('gen_help_html').gen('./doc/en/', './target/dir/')"

