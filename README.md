# README
A fundraising app prototype to process donations for fundraisers.

* Focus on object oriented database design, scaling, and testing models.
* Users should be able to join a fundraiser to send communications and share the fundraiser’s URL.
* Each user should be able to track their participation and performance on the fundraiser.

## USER STORIES
* As a fundraiser I want to collect donations for my campaign.
* As a fundraiser I want to send communications and share URL for my campaign.
* As a fundraiser I want to track my participation and performance.
* As a coach, I want to track my fundraisers' performance.
* As a developer, I want my page to scale and load quickly.
* As a developer, I want my code tested so I can refactor without breaking the site.

### DONE
* add & refine models (see erb.pdf)
* link model relationships
* seed campaigns, users, and solicitations
* seed donations
* add fundraiser and donor methods on user
* fix nested resource CRUD paths
* only solicitation owners (fundraisers) should see and access edit and delete functions for solicitations.
* only donation owners (donors) should see and access edit and delete functions for donations.
* embed youtube videos
* add home button link
* add email share to solicitation page
* set up mailers for email sharing capability (store emails somewhere? track who sent to?)
* add ability to edit solicitation page for fundraiser ONLY IF signed in
* format #s
* build campaign show page (show overall progress to goal, individual cards, team leaderboard, plus a "join" button)
* add goal and progress to goal to solicitation show page (individual progress)
* build solicitation show page (this is the individual fundraising page for a campaign. has "donate" button and list of donations and comments, as well as progress to goal)
* build donation form
* build campaign index page (show campaigns) -- in progress

## TODO
### FUNCTIONALITY
* handle goal met for individual fundraisers and campaigns
* countdown to days left in campaign

### LAYOUT
* add goal and progress to goal to campaign show page. add # of fundraisers, rank them by amount and # of donations (leaderboard)
* add styling

### TESTS & VALIDATION
* validate no negative goals or donations
* add model tests
* integration tests
* load test

### LATER / MAYBE
* send emails via delayed jobs
* add social_share record to database and count to solicitation show page
* add bootstrap progress bar to campaign and solicitation page
* paperclip for uploading images
* add name to users (currently using email)

### For Discussion

#### Email sharing
1. Does this have to be through our site? Something like mail chimp much better for mass emailing. We'd have to handle unsubscribe somehow. Maybe instead of doing the emailing we could generate a template for a person to email to their contacts (more personal that way anyway), and just count social shares?

2. If it must be sent through our site, probably want to keep a record of who sent to. Add a new class "Referrals" with an id, an email address, a user_id, solicitation_id and date sent. Check this table before sending to make sure we're not emailing anyone twice, unless desired.
