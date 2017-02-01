# README

A fundraising app prototype.

## TODO

### DONE
* add & refine models (see erb.pdf)
* link model relationships
* seed campaigns, users, and solicitations
* seed donations
* add fundraiser and donor methods on user
* fix nested resource CRUD paths
* only solicitation owners (fundraisers) should see and access edit and delete functions for solicitations.
* only donation owners (donors) should see and access edit and delete functions for donations.

### FUNCTIONALITY
* handle goal met for individual fundraisers and campaigns
* countdown to days left in campaign
* add name to users (currently using email)
* add social_share feature and count to solicitation show page
* add home button link

### LAYOUT
* format #s
* embed youtube videos
* build campaign index page (show campaigns) -- in progress
* build campaign show page (show overall progress to goal, individual cards, team leaderboard, plus a "join" button)
* add goal and progress to goal to solicitation show page (individual progress)
* build solicitation show page (this is the individual fundraising page for a campaign. has "donate" button and list of donations and comments, as well as progress to goal)
* add goal and progress to goal to campaign show page. add # of fundraisers, rank them by amount and # of donations (leaderboard)
* build donation form
* add styling

### TESTS & VALIDATION
* validate no negative goals or donations
* add model tests
* integration tests

### FEATURES
* add email share to solicitation page
* set up mailers for email sharing capability (store emails somewhere? track who sent to?)
* add ability to edit to solicitation page for fundraiser ONLY IF signed in
* paperclip for uploading images

### IF TIME
* add bootstrap progress bar to campaign and solicitation page
