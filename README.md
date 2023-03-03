# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Final-Capstone <a name="about-project"></a>

> This project is a group Final Capstone Project based on an app to book an appointment to try a motorcycle. It is a fullstack application built with rails for the backend and react for the front end

**Final Capstone** Project is based on an app to book an appointment to try a motorcycle. Users can book an appointment to try out a motorcycle and also save their booked motorcycle. 

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>


<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Login Functionality**
- **Make Reservations**
- **Save Reservations**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link](https://yourdeployedapplicationlink.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- npm
- Ruby
- Ruby on Rails
- Postgresql

### Setup

Clone this repository to your desired folder:

```sh
cd my-folder
git clone https://github.com/MohamedCK/Final-Capstone.git
```

### Install

Install this project with:

```sh
  cd my-project
  bundle install
  npm install
```

### Usage

To run the project, execute the following command:


```sh
  ./bin/dev
```

### Run tests

To run tests, run the following command:

```sh
  bin/rails test test/models/article_test.rb
```


### Deployment

- Coming soon...


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Sharon Kessio**

- GitHub: [@kessio](https://github.com/kessio)
- Twitter: [@kessio_sharon](https://twitter.com/kessio_sharon)
- LinkedIn: [LinkedIn](https://linkedin.com/in/sharon-kessio-172220b5)

👤 **MohamedCK**

- GitHub: [@MohamedCK](https://github.com/MohamedCK)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/mohamed-cake/)

👤 **Abdulai Samuel Moiwa**

- GitHub: [@Moiwa](https://github.com/samuelmoiwa)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ing-abdulai-samuel-moiwa-726340142/)
- Twitter: [SamuelMoiwa](https://twitter.com/samuelmoiwa)

👤 **Emem Cookey**

- GitHub: [@ecekpo](https://github.com/ecekpo)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/emem-ekpo/)
- Twitter: [@ememcookey](https://twitter.com/ememcookey)

👤 **Babou Omar3**

- GitHub: [@omarbabou](https://github.com/omarbabou)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/idrissa-makoba-omar/)
- Twitter: [@BabouOmar3](https://twitter.com/BabouOmar3)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **User Authentication**
- [ ] **Design User Interface**
- [ ] **CRUD Operations**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project leave a star on this repository

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I give credit to my coding partners who's insights helped in making this project a success

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **What is the difference between using rake and rails?**

  - Rails core team decided to have consistency by enabling rails command to support everything that rake does.

For example in Rails 5 commands like db:migrate, db:setup, db:test etc which are part of rake command in Rails 4 are now being supported by rails command. However you can still choose to use rake to run those commands similar to how they were run in Rails 4. This is because Rails community has introduced Rake Proxy instead of completely moving the command options from rake to rails.

What happens internally is that when rails db:migrate command is executed, Rails checks if db:migrate is something that rails natively supports or not. In this case db:migrate is not natively supported by rails, so Rails delegates the execution to Rake via Rake Proxy.

If you want to see all the commands that is supported by rails in Rails 5 then you can get a long list of options by executing rails --help.
