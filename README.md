<p align="center"><a href="https://moltaqa.net/" target="_blank">
<img src="https://raw.githubusercontent.com/husseinzaher/moltaqa-task/main/public/logo.webp?raw=true" width="400"></a></p>



<p align="center">
<img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version">
<img src="https://img.shields.io/packagist/l/laravel/framework" alt="License">
</p>

# Moltaqa Task Documentation

### Pleas Read This Before Using This Project

* Welcome Moltaqa Co.
* I am a software developer ,I trying to learn new things everyday .
* I hope you will enjoy this project .

## What is Moltaqa Task ?

    I am working on this task to provide you with my technical capabilities .

## _Task Details_

    DETAILS :
      Get attached users text file
      and break them down and Seed in Database

    The following must be observed :
    
      1 - only authorized client ( type in the text file ) can login max 6 times in
      minute with particular IP

      2 - provide one route as api for login when login return
      user data with nearest 3 drivers in json resource

      3 - make sure of validation and resources data format and seeding files

### **_Users Array_**

    'Lauretta McClure', 'shanie.gorczany@example.com', '566666666','password', 24.69023, 46.685, 'address', 'client'
    'Kristian Beatty', 'brandyn50@example.org', '577777777','password', 24.69023, 46.685, 'address', 'driver'
    'Ms. Raquel Borer Sr.', 'hhudson@example.org', '588888888','password', 24.69022, 46.684, 'address', 'driver'
    'Jordane Schroeder', 'alden.rutherford@example.com', '584444444','password', 24.69018, 46.680, 'address', 'driver'
    'Dr. Lemuel Jacobson', 'norval23@example.net', '599999999','password', 24.69021, 46.683, 'address', 'driver'
    'Kiel Volkman', 'ynolan@example.net', '5111111110','password', 24.69020 , 46.682, 'address', 'driver'
    'Cortney Wolf', 'jast.lillian@example.org', '563333333','password', 24.69019, 46.681, 'address', 'driver'

### **_Result_**
- first phase please config your database connection in .env file or database.php config file 
- second phase please run : `php artisan migrate:fresh --seed` to create tables and seed data

to test login with test unit : `php artisan test tests\Feature\UserAuthTest.php`,

or run local development server : `php artisan serve` and follow this postman
collection  [documentation](https://documenter.getpostman.com/view/14745945/UzBgupY7)  
to got valid data about use api login URL : `http://localhost:8000/api/login`

## Thanks for your attention

- Hussein Zaher

- Sr.Backend Developer 
