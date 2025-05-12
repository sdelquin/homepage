# Run hugo server
run:
    hugo serve

# Add new content
add page:
    hugo new {{page}}.md

# Clone theme
clone-theme:
    git submodule update --init --recursive

# Update theme
update-theme:
    cd themes/PaperMod && git pull origin master

# Build website --> output: /public
build:
    hugo
