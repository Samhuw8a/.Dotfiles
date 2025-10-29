return {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
			enabled =true,
			maxLineLength = 88
		},
		flake8= {
			enabled=true,
			maxLineLength = 88,
		},
		pyright={enabled=false},
      }
    }
  }
}
