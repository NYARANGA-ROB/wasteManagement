<a href="https://github.com/ShivaBhattacharjee/WasteEasy">
<p align="center">
  <img src="./public/wastelogo.png" height="180px"/>
  </a>
<br/>
  <h3 align="center">WasteEasy</h3>




<div align="center" >

![jwt token](http://jwt.io/img/badge-compatible.svg)
![NextJs](https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white)
[![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg?style=flat-square)](https://github.com/prettier/prettier)
![GitHub repo size](https://img.shields.io/github/repo-size/shivabhattacharjee/WasteEasy)

  </div>

  <p align="center">
     An app for waste classification and easy disposal, where users earn coupons by dumping waste.
    <br/>
    <br/>
    <a href="https://wasteeasy.theshiva.xyz//">View Demo</a>
    .
    <a href="https://github.com/ShivaBhattacharjee/wasteeasy/issues">Report Bug</a>
    .
    <a href="https://github.com/ShivaBhattacharjee/wasteeasy/issues">Request Feature</a>
  </p>
</p>



## Table Of Contents

- [Table Of Contents](#table-of-contents)
- [About The Project](#about-the-project)
- [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Host your own](#host-your-own)
- [Contributing](#contributing)
  - [Creating A Pull Request](#creating-a-pull-request)
- [Raising an issue](#raising-an-issue)
- [Code of conduct](#code-of-conduct)
- [License](#license)
- [Authors](#authors)

## About The Project
![image](https://github.com/ShivaBhattacharjee/WasteEasy/assets/95211406/1f716016-efa3-4b4e-934e-86ef48f7caeb)


WasteEasy is an app designed to streamline waste management. Developed during the Envision Hackathon, it focuses on waste classification and encourages proper waste segregation. Users can earn points or coupons by utilizing WasteEasy for their waste disposal needs.




## Built With

* [NextJs](https://nextjs.org)
* [Bun](https://bun.sh/)
* [NextJS](https://nextjs.org)
* [TailwindCss](https://tailwindcss.com/)
* [MongoDb](https://www.mongodb.com/)
* [GoogleMaps](https://www.google.com/maps/)
* [Gemini](https://gemini.google.com/)



## Getting Started


### Prerequisites

<a href="https://git-scm.com/downloads" >Git</a> is a distributed version control system used for software development. It allows multiple developers to work on the same codebase simultaneously, keeping track of changes and managing versions. It also enables users to revert changes and collaborate more effectively.

<a href="https://bun.sh/">Bun</a> or <a href="https://nodejs.org/">Node.js</a> is required as the JavaScript runtime. Bun is a JavaScript runtime, package manager, test runner bundler built from scratch using the Zig programming language. It was designed by Jarred Sumner as a drop-in replacement for Node.js.

<a href="https://dev.mysql.com/downloads/mysql/">MySQL</a> is an open-source relational database management system. This project uses MySQL with Prisma ORM for type-safe database access. **Note: This project was migrated from MongoDB to MySQL. See [MYSQL_SETUP.md](./MYSQL_SETUP.md) for detailed setup instructions.**



<a href="https://developers.google.com/maps/documentation/javascript/get-api-key">GoogleMaps Api key</a>

<a href="https://makersuite.google.com/app/apikey">Gemini Api Key</a> 

<a href="https://www.emailjs.com/">EmailJs</a>

### Installation


<h3> This project can use <a href="https://bun.sh">Bun</a> or npm. Install either before running locally</h3>

```bash
git clone https://github.com/ShivaBhattacharjee/WasteEasy
```
```bash
cd WasteEasy
```
```bash
cp .env.example .env
```
<h3>Fill the required fields inside the .env before starting the server</h3>

**Important: Set up MySQL database first. See [MYSQL_SETUP.md](./MYSQL_SETUP.md) for complete instructions.**

```bash
# Install dependencies (use npm if bun is not available)
npm install --legacy-peer-deps
# or
bun install
```

```bash
# Generate Prisma client
npx prisma generate
```

```bash
# Run database migrations to create tables
npx prisma migrate dev --name init
```

```bash
# Start development server
npm run dev
# or
bun dev
```
This will start the development server at http://localhost:3000/

## Host your own
* ## Vercel

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2FShivaBhattacharjee%2FWasteEasy)
<br/>
<br/>

* ## Netlify

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/ShivaBhattacharjee/WasteEasy)
<br/>
<br/>

* ## Render

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/ShivaBhattacharjee/WasteEasy)

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.
* If you have suggestions for adding or removing projects, feel free to [open an issue](https://github.com/ShivaBhattacharjee/WasteEasy/issues) to discuss it

* Please make sure you check your spelling and grammar.

### Creating A Pull Request

Wanna contribute to WasteEasy ?

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/FeatureName`)
3. Commit your Changes (`git commit -m 'Add some FeatureName'`)
4. Push to the Branch (`git push origin feature/FeatureName`)
5. Open a Pull Request


## Raising an issue

If you're experiencing any problems with WasteEasy, please be sure to review our [issue template](https://github.com/ShivaBhattacharjee/WasteEasy/tree/main/.github/ISSUE_TEMPLATE) before opening a new issue. The template includes a list of questions and prompts that will help us better understand the issue you're experiencing, and it will ensure that we have all of the necessary information to investigate the problem.

We kindly ask that you provide as much detail as possible when submitting an issue, including steps to reproduce the problem, any error messages that you have seen, and any other relevant information. This will help us to identify and fix the issue more quickly.

Thank you for your cooperation, and we look forward to hearing from you!

## Code of conduct

Developers are requested to go through our <a href="https://github.com/ShivaBhattacharjee/Trim/blob/WasteEasy/CODE_OF_CONDUCT.md">code of conduct</a> thoroughly to maintain a peaceful environment within our project.

## License

Distributed under the Apache License 2.0 . See [LICENSE](https://github.com/ShivaBhattacharjee/WasteEasy/blob/main/LICENSE) for more information.


## Authors

* **Shiva Bhattacharjee** - [Shiva Bhattacharjee](https://github.com/ShivaBhattacharjee) - *Waste Easy*
