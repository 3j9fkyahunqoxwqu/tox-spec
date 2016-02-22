# Generates `spec.html`.
# `rust.css` must be included alongside with `.html` file in order to work.
spec.html: spec.md
	rustdoc --markdown-css rust.css --output ./ spec.md

check: spec.md .md-style.rb
	mdl -s .md-style.rb spec.md