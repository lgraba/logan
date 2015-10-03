# Logan's Personal Site

This will be a personal site for myself!

## Planning

  - Answer Questions
  - User Stories
  - Model Data
  - Think through the pages


###  Questions

1. What are we building? A simple website for Logan Graba to showcase web projects, my resume, and social media profile links.
2. What features do we want to have?
  - An engaging, full-page, responsive design
  - New or novel web components, such as Google Polymer library stuff
  - Reasons to hire Logan Graba for web development, web design, academic type jobs
  - Access to clear resume (html, pdf, and/or docx)
  - Contant information and/or email form
  - Projects in self-contained directories for easy viewing


### User Stories

  - As a user, I want to be able to view necessary information about Logan in one page, but have access to
    - His resume
    - His programming projects (Front end web, back end web, science) in an easily navigable format
    - His contact information
    - Email him via form on website easily
    - His social media profiles (Github, LinkedIn, and/or Twitter)
  - As Logan, I want to be able to easily add updated resumes. (add later)
  - As Logan, I want to be able to easily add new projects.
    - Each project should have a description page in markdown
    - Each project should be self-contained in logangraba.com/projects/project_name directory
  - As Logan, I want to be able to add pictures/screenshots/thumbnail for each project description


### Data

  - User
  `has_many :projects`
  `has_many :resumes` (add later)
    - Name
    - Email
    - Password
  - Project
  `belongs_to :user`
    - Title
    - Image
    - Body
    - Tags
  - Resume (add later)
  `belongs_to :user`
    - Title
    - File
    - Body


### Pages

  - Home (home)
    - Resume (resume#index)
    - Projects (projects#index) Do I need sections for programming, painting, go, etc.?
      - Individual project (projects#show)
    - Contact (contact)
      - Contact Form Sent (contact#post)

    - Administrator Login (users#login)
      - All Resumes (add later)
      - Add/Change Resume (title, markdown body, file attachment) (add later)
      - Add/Edit Project (title, markdown body, image attachment) (projects#new, projects#edit)


### Miscellaneous

#### Components
  - RoR for development
    - Devise Gem for authentication of Logan
    - Paperclip Gem for image attachment
    - Mail gem and SendGrid? for contact form
  - Heroku for deployment and testing
  - My updated general resume

#### Style
  - One long page, mimimalist design/nice images, with 3 full-page sections:
    - Welcome/"Logan Graba"
    - About me (Link - see my resume)
    - Projects (A few links to latest projects)
  - Navigation:
    - Large "Logan Graba"
    - Link "Holler at me! To contact form
    - Link "Projects" To projects page
    - Link "Resume" To resume page
  - Find some good stock photots
  - Greyscale with small splashes of color

### ToDo
1. Fix responsivity of sidebar menu
  - I think using something like breakpoint would be beneficial
  - There is an issue with the way the menu is displayed on screens smaller than 800px - Nothing to the right of the Resume link is shown when the main content is long enough to require a scrollbar.
2. Content Styling
  - Projects
  - Project#show
  - Resume - HTML version of resume - simple
  - About - picture of me?
  - Site-wide colors (make variables in SCSS)
  - Refactor SCSS already written
  - Forms
3. Testing
  - Take a look at some test suites to help this process along