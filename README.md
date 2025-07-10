# 🦸 SuperHeroAcedemy

SuperHeroAcademy is a **dynamic online marketplace** where users can both enroll in exciting superpower-themed courses and create their own! As students, users can **browse and review** a variety of courses, **add courses to their favorites list**, and **manage their bookings** with ease. As teachers, users can **create new superpower courses** and **manage students** who sign up for their classes.
Unleash your inner hero — **whether you're learning or teaching, SuperHeroAcademy is the place to grow your powers!**

![SuperPowerAcademy Landing Page](screenshots/superpower.png)

<br>
App home: https://superheroacademy-06a9d5a12a6c.herokuapp.com/
   
## Features

- 🦸 **Explore Superpower Courses** – Browse a wide range of creative and fun superpower-themed classes.
- ⭐ **Add to Favorites** – Save your favorite courses.
- 📅 **Manage Your Bookings** – Easily keep track of the courses you've enrolled in.
- 🧑‍🏫 **Become a Teacher** – Share your expertise by creating and managing your own superpower courses.
- 🧑‍🎓 **Student Management** – Teachers can view, accept, or reject students who sign up for their courses.
- 🖼️ **Image Upload with Cloudinary** – Add custom course thumbnails to make your courses stand out.
- 🧑‍🎨 **Custom Avatars** – Users can choose and update their avatar to reflect their unique superhero identity.

## Getting Started
### Setup

Install gems
```
bundle install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
CLOUDINARY_API_KEY=your_own_cloudinary_api_key
CLOUDINARY_API_SECRET=your_own_cloudinary_api_secret
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team Members
- [Amy Huang](https://www.linkedin.com/in/amyhuang-ntu/)
- [Rayz](https://github.com/authorminator)
- [Ruben Hedström](https://github.com/rubenhed)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License


Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
