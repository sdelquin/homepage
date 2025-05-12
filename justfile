# Run hugo server
run:
    hugo serve

# Add new content
add page:
    hugo new {{page}}.md

# Update theme
update:
    cd themes/PaperMod && git pull
