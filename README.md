<a name="PropiedadesYa"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [ER diagram](#er-diagram)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
  - [ Live demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [PropiedadesYa] <a name="about-project"></a>

PropiedadesYa, Is a website to publish properties

## ER diagram <a name="er-diagram"></a>

ER diagram link: https://drawsql.app/teams/team1-238/diagrams/parachute-db-diagram
There's also an image attached with the diagram

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Ruby on Rails</a></li>
  <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Image_magik</a></li>
  <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Active_storage</a></li>
  <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">devise</a></li>
  <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">pagy</a></li>
  <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Cancancan</a></li>
  <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">HTTParty</a></li>
  <li><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Bootstrap</a></li>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Ruby on Rails**
- **Image_magik**
- **Active_storage**
- **devise**
- **pagy**
- **Cancancan**
- **HTTParty**
- **Bootstrap**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Live demo <a name="live-demo"></a>

Link to the live demo [here](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
I tried deploying but didn't succeed. Here's a video presentation instead (in spanish) 
[video presentation](https://drive.google.com/file/d/1rLpNHEKnDB8skFbJX8262VLcyLJovGeM/view?usp=sharing)

## 💻 Getting Started <a name="getting-started"></a>
<!-- https://github.com/EmiLoKiJu/PropiedadesYa -->

To get a local copy of this project and run it in your computer, follow these steps.

### Prerequisites

In order to run this project you need:
- Ruby 3 or above
- Ruby on rails 7 or above
- Image Magick (If you don't want to use this, comment line 6 of the file at config/environments/development.rb and will make use of vips by default)

### Setup

To get a local copy up and running follow these simple example steps.

Clone this repository in the desired folder:
```
cd my-folder
git clone https://github.com/EmiLoKiJu/PropiedadesYa.git
```

### Install

To install this project:
```
cd PropiedadesYa
code .
bundle install
```
### Usage

To run the project, make sure you configured your database yml correctly, then execute the following command:
```sh
  rails db:create
  rails db:migrate
```

For seeding, there's a file for the communes, with the csv format. To import this, run:

```sh
  rails import:communes
```

Then, run the command to seed normally:

```sh
  rails db:seed
```

After setting up the database, let's precompile the assets. Run the following commands:

```sh
  rake assets:clean
  rake assets:precompile
```

Finally, time to run the project:

```
rails server
```

Then check the link of the rails server link that appears in the terminal (it should be http://localhost:3000/)


<p align="right">(<a href="#PropiedadesYa">back to top</a>)</p>

<!-- AUTHORS -->
## 👥 Authors <a name="authors"></a>

👤 **Gabriel Rozas**
- GitHub: [@EmiLoKiJu](https://github.com/EmiLoKiJu)
- Twitter: [@GabrielRozas12](https://twitter.com/GabrielRozas12)
- LinkedIn: [grozas](https://www.linkedin.com/in/grozas/)

<p align="right">(<a href="#PropiedadesYa">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Improving performance

<p align="right">(<a href="#PropiedadesYa">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

I welcome contributions to enhance the functionality and user experience of the Morse_Translator project. If you have any ideas, suggestions, or bug reports, feel free to open an issue or submit a pull request.

If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive commit messages.
4. Push your changes to your forked repository.
5. Submit a pull request to the main repository, explaining your changes in detail.

Please adhere to the coding conventions and guidelines specified in the project.

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](../../issues).

<p align="right">(<a href="#PropiedadesYa">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project give it a star ⭐️

<p align="right">(<a href="#PropiedadesYa">back to top</a>)</p>

<!-- FAQ -->

## ❓ FAQ <a name="faq"></a>

- **Can I use the project for any purpose?**

  - Yes, you can use this files for anything you need

- **Do I need to ask for permission?**

  - No need to ask for permission.


<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

** I would like to thank to DataProp for giving the oportunity to develop this inspiring project, in which I leared a lot in the process**

<p align="right">(<a href="#PropiedadesYa">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.
