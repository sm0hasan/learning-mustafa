# GoRails Tutorial - Creating a Blog

## Want to try?
**Here is the link to my website, take a look!**
<br>https://reddit-ish-jhiq.onrender.com/

**New to Rails? Looking to learn?**
<br>Start here: https://guides.rubyonrails.org/getting_started.html

## Available Features
- A flexible user authentication service with...
	-  a smooth **registration process** (including the creation of a **username**)
	-  an easy to **edit user info** as well as redirections to user registration when accessing a restricted page
	-  implemented with `devise`
- The ability to...
	- **create** (only by registered users)
		- Drafts, scheduled posts, and publish current time
	- **destroy** and **edit** (only by the poster)
	- **preview** and **see** posts (anyone)
- Users can **upload images** to their blog posts
- Logged in users can **upvote** or **downvote** posts
	- A user can only vote once for a post
	- A user can vote either at the preview or the specific blog post page
	- Guest users will be redirected to user login if they attempt to vote
- Logged in users can **comment** on blog posts
	- Any comment made by the user will be shown alongside their usernames and the 'time ago' they commented
- Users can **search** for posts within 'Reddit-ish' based off the titles of the blog posts
- Used `pagy` for **pagination** (css has been changed)
- The majority front end has been done through `Tailwind`


## Features to be added

 - Users can upload profile pictures
	- Must have a default profile picture for all users
	- Users can change in user settings or registration
	- Must be visible on the navbar and any other areas as needed

 - Tagging for posts
	- Users may select from a certain list of tags to tag their posts which will effect the view of other users
	- Users may select from a certain list of tags (up to 3) within user settings and/or registration which will affect the order in which the posts are displayed
		- There will be default tag options
		- Filtering will be based of showing the tagged posts moreso as compared to the other posts

- User chatting (Direct Messaging)
	- Through an available list of all joined users based of their usernames, any other user should have the ability to  message another unless blocked
	- Search function for the user list
	- Real-time messaging

- User chatting (group chats)
	- Up to 4 people
	- Displayed the same as direct messaging
