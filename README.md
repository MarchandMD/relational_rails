<!-- Improved compatibility of back to top link: See: https://github.com/marchandmd/relational_rails/pull/73 -->

<a name="readme-top"></a>

<!--
*** Thanks for checking out the relational_rails. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">

  <h1 align="center">Relational Rails</h1>

  <p align="center">
    <h3> Demonstration of one-to-many relationship schema design in a monolithic Rails app</h3>
    <br />
  <img src="app/assets/images/relational_rails_homepage.jpg" />
    <br />
    <a href="https://backend.turing.edu/module2/projects/relational_rails/"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/marchandmd/relational_rails">View Demo</a>
    ·
    <a href="https://github.com/marchandmd/relational_rails/issues">Report Bug</a>
    ·
    <a href="https://github.com/marchandmd/relational_rails/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#schema">Schema</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

I was tasked with creating a new Rails app from scratch that would use a one-to-many relationship. I chose Mountain to SkiTrails. I designed the database

Concepts learned during this project:

- Design a one-to-many relationship using a schema designer
- Write migrations to create tables with columns of varying data types and foreign keys
- Use Rails to create web pages that allow users to CRUD resources
- Create instance and class methods on a Rails model that use ActiveRecord methods and helpers
- Write model and feature tests that fully cover data logic and user behavior


<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

-   [![Ruby][ruby.com]][ruby-url]
-   [![Rspec][rspec.com]][rspec-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

- ruby version 2.7.4

### Installation

1. Clone the repo
    ```sh
    git clone https://github.com/marchandmd/relational_rails.git
    ```
2. Install packages
    ```sh
    bundle
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Schema -->

## Schema

<img src="app/assets/images/relational_rails_schema.png" />


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

You can see this locally by running `rails s` from the command line.

```bs

```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- README
- [ ] Front-end interface? Command line performance?

See the [open issues](https://github.com/marchandmd/relational_rails/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Michael Marchand - MichaelDavidMarchand@gmail.com

Project Link: [https://github.com/MarchandMD/relational_rails](https://github.com/marchandmd/relational_rails)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

Some great tools and/or people who helped to make this project what it is!

-   [Choose an Open Source License](https://choosealicense.com)
-   [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
-   [Img Shields](https://shields.io)
-   [GitHub Pages](https://pages.github.com)
-   [Rubocop](https://rubocop.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/marchandmd/relational_rails.svg?style=for-the-badge
[contributors-url]: https://github.com/marchandmd/relational_rails/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/marchandmd/relational_rails.svg?style=for-the-badge
[forks-url]: https://github.com/marchandmd/relational_rails/network/members
[stars-shield]: https://img.shields.io/github/stars/marchandmd/relational_rails.svg?style=for-the-badge
[stars-url]: https://github.com/marchandmd/relational_rails/stargazers
[issues-shield]: https://img.shields.io/github/issues/marchandmd/relational_rails.svg?style=for-the-badge
[issues-url]: https://github.com/marchandmd/relational_rails/issues
[license-shield]: https://img.shields.io/github/license/marchandmd/relational_rails.svg?style=for-the-badge
[license-url]: https://github.com/marchandmd/relational_rails/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/marchandmd1
[product-screenshot]: images/screenshot.png
[bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[bootstrap-url]: https://getbootstrap.com
[ruby.com]: https://img.shields.io/badge/ruby-v2.7.4-red
[ruby-url]: https://ruby-doc.org/core-2.7.2/
[rspec.com]: https://img.shields.io/badge/rspec-v3.12-success
[rspec-url]: https://rspec.info/documentation/
