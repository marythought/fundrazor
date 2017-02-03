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
* build campaign index page (show campaigns)
* validate no negative goals or donations
* add factory girl and factories for testing
* add model tests
* add goal and progress to goal to campaign show page. add # of fundraisers, rank them by amount and # of donations (leaderboard)
* handle goal met for individual fundraisers and campaigns
* add user login and signup links
* add goldiloader for eager loading
* rerun erd (bundle exec erd)
* remove social shares table
* integration tests (started, not fully fleshed out)

### TODO
* add styling
* load test
* Allow fundraisers to delete their solicitation page
* Add a user owner to campaigns (coach) and restrict CRUD to campaign owner
* Add option to make a campaign private
* Add a view for users to track 1) their donations and 2) donations from their solicitation page(s). Include option to toggle thank you note sent and/or email multiple donors.
* Change email share to include multiple email addresses, comma separated
* Add an email preview
* Add an "Update" feature -- polymorphic -- campaigns and solicitations are "updatable"
* countdown to days left in campaign
* add search in campaign index
* send emails via delayed jobs
* add social_share table to database and track share count on solicitation show page
* add custom or bootstrap progress bar to campaign and solicitation page
* paperclip for uploading images
* add name to users (currently using email)

### For Discussion


1. Email sharing: How important is tracking shares and/or enabling email sharing? If important, does it have to be through our site? Something like mail chimp much better for mass emailing. We'd have to handle unsubscribe somehow. Maybe instead of doing the emailing we could generate a template for a person to email to their contacts (more personal that way anyway), and just count social shares? If it must be sent through our site, probably want to keep a record of who sent to. Add a new class "Referrals" with an id, an email address, a user_id, solicitation_id and date sent. Check this table before sending to make sure we're not emailing anyone twice, unless desired.

2. fundraisers_by_amount_raised and fundraisers_by_number_of_donations could both be refactored -- but how?? getting called from campaigns controller. Doing an n + 1 load but I'm not sure how to tackle this since it goes a couple layers deep...eager load? includes?

3. Given more time, would add formatting and improve social sharing options. Improve user roles. See Code Fellows project "U-Deal-It" for example of a similar but more built out version of this.
