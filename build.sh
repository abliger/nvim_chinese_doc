if [ -d "target/cn" ]; then
		rm -rf ./target/cn
fi
nvim -V1 -es --clean +"lua require('gen_help_html').gen('./doc/cn/', './target/cn/')"

if [ ! -d "./target/en" ];then
		nvim -V1 -es --clean +"lua require('gen_help_html').gen('./doc/en/', './target/en/')"
fi

