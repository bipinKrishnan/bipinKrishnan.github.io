new_post_md=$(shell bash -c 'read -p "File name(include .md extension): " new_post_md;echo $$new_post_md')

.PHONY: server
server:
		hugo server
		
.PHONY: new-post
new-post:
		hugo new './content/posts/${new_post_md}'
