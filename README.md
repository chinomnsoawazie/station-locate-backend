<p align="center">
  <a target="_blank" rel="noopener noreferrer" href="https://github.com/chinomnsoawazie/station-locate-backend">
  
 <img width="30%" src="https://github.com/chinomnsoawazie/station-locate-frontend/blob/master/station-locate-frontend/src/pictures/logo.png" style="max-width:50%;">
</a>
</p>

<p align="center"> <img src="https://img.shields.io/badge/-Technologies%20Used-blue" style="max-width:50%;"> </p>

<p align="center">
  <img src="https://img.shields.io/badge/Ruby-2.7.0-red" style="max-width:50%;">
  <img src="https://img.shields.io/badge/PostgreSQL-12.1-orange" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Image%20processing-1.2-green" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Ruby%20on%20Rails-6.0.2-red" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Active%20model%20serializers-0.10.0-yellow" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Dotenv%20Rails-2.7-orange" style="max-width:50%;">
  <img src="https://img.shields.io/badge/Bycrypt-3.1.7-blue" style="max-width:50%;">
  <img src="https://img.shields.io/badge/JWT-1.5.4-red" style="max-width:50%;">
 </p>
  
 <p align="center"> <img src="https://img.shields.io/badge/-Notices-blue" style="max-width:50%;"> </p>
   
 <p align="center"> 
  <a target="blank" rel="noopener noreferrer" href="https://github.com/chinomnsoawazie/station-locate-frontend">
    <img src="https://img.shields.io/badge/Frontend%20repository-Click%20here-green" style="max-width:50%;">
  </a>
   <img src="https://img.shields.io/badge/Status-Making%20mobile%20app%20version-brightgreen" style="max-width:50%;">
</p>

 <h3 align="center"> Take a spin of the FindStation app on Heroku by clicking
 <a href="https://stationfind-app-frontend.herokuapp.com/">👉here👈</a></h3>

<h1>
  <a id="table-of-contents" class="anchor" href="#contents">  </a>
  Table of Contents
  </h1>
  
  <ul>
    <li><a href="#inspiration">Inspiration</a></li>
    <li><a href="#introduction">Introduction</a>
      <ul>
        <li><a href="#overview">Basic overview</a></li>
        <li><a href="#features">Features</a></li>
        <li><a href="#goals">Goals</a></li>
        <li><a href="#challenge">Challenge</a></li>
      </ul>
    </li>
    <li><a href="#demo">Demo</a></li>  
    <li><a href="#installation">Installation</a>
      <ul>
          <li><a href="#prerequisites">Prerequisites</a></li>
          <li><a href="#backend-installation">Backend installation</a></li>
          <li><a href="#first-start">First start</a></li>
      </ul>
    </li>   
    <li><a href="#summary-of-files">Summary of files</a>
      <ul>
          <li><a href="#internal-file-structure">Internal file structure</a></li>
          <li><a href="#internal-dataset">Internal dataset</a></li>
      </ul>
    </li>
   <li><a href="#planned-improvements">Planned improvements</a></li>
   <li><a href="#contact">Contact</a></li>
   <li><a href="#credits">Credits</a></li>
 </ul>
 
 
   
 <h1 id="inspiration">Inspiration</h1>
  
 <p>The root inspiration for this app is sustainability. For Electric Vehicle (EV) drivers, knowing stations closest to them is crucial. They equally need information about those stations without the clutter of ads. Finally, drivers should be able to focus on driving and delegate charge management to the app.</p>
  
 <a href=#table-of-contents> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
  
  <h1 id="introduction">Introduction</h1>
   <h2 id="overview">Basic Overview</h2>
    <p>User searches for nearest EV charging stations, displays those stations on a map individually or all at once, be able to have a street view of a station location whether viewed individually or collectively, and if they like a station, they can navigate to it.</p>
    
   <h2 id="features">Features</h2>
    <p>Features of the app include the following;
      <ul> 
       <li>User can create, edit, and delete an account</li>
       <li> A logged in user can search for stations using the following search criteria:
        <ul>
         <li>Street, city, and state</li>
         <li>Street and zipcode</li>
         <li>Zipcode</li>
         <li>City and state</li>
         <li>Use their current geolocation(or GPS)</li>
        </ul>
        </li>
       <li>A logged in user can search for stations and do the following:
        <ul>
         <li>Add a station to 'My stations' (a kinda favorite stations)</li>
         <li>If station was already in the user's 'My stations', the station card gives them the option to remove it from their stations</li>
         <li>View stations on a map individually and collectively</li>
         <li>Navigate to the station directly from the station's card on the search results page or from the collective stations display, and see route info like distance, travel time and estimated time in traffic</li>
         <li>See information on the station like station name, distance from current location, price to charge, address, available ports, kind of facility it is located in, who the station is accessible to, etc</li>
         <li>Search returned stations by name</li>
         <li>Filter stations by hours of operation, Telsa or non-tesla location, connector types, in-my-stations, etc</li>
         <li>Start a new search altogether</li>
        </ul>
       </li>
       <li>User can view 'My stations' in a separate dashboard</li>
       <li>User can add/delete notes to a station in 'My stations'</li>
       <li>User can upload pictures from thier device in the process of creating notes and those pictures will show alongside with the corresponding note</li>
       <li>User can create and delete locations they frequent and view them in 'My locations' dashboard</li>
       <li>User can run a search for nearest stations from a location card</li>
      </ul>
    </p>
    
  <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
  
  
 <h1 id="goals">Goals</h1>
  <p>The goals are to serve up relevant nearby EV charging stations, give information on them, show them on a map, and navigate to them.</p>
  
 <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
 
 <h1 id="challenge">Challenge</h1>
  <p>The challenge for the backend of this app being able to store images in the backend. Elected to go this route as opposed to using cloud storage providers so as to minimize security breaches. The challenge was overcome.</p>
  
 <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
 
 
  <h1 id="demo">Demo</h1>
   <p>Click <a href="https://youtu.be/DE5wNYxjdBY">here</a> to view demo</p>
      
   <a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
   
   
   <h1 id="installation">Installation</h1>
   <h2 id="prerequisites">Prerequisites</h2>
   <ul>
   <li>Sign up with<a href="https://developer.nrel.gov/signup/"> National Renewable Energy Laboratory</a> to get an API key that will enable you fetch EV charging stations from their API</li>
     <li>Go to<a href="https://developers.google.com/maps/documentation/javascript/get-api-key"> Google maps JavaScript API key documentation page</a> to get an API key that will enable use any number of the about 14 different APIs for google maps services</li>
  </ul>
     <h2 id="backend-installation">Backend installlation</h2>

   <p>FindStation backend is biult with Ruby(2.7.0), Rails(^6.0.2), PostgreSQL(0.18) for PostgreSQL 12.1, Bcrypt(^3.1.7), Image processing(^1.2) from Active Storage, JWT, Active model serializer(^0.10.0), and Dotenv-rails(^2.7). 
  
 <ul> 
  <li>Clone <a href="https://github.com/chinomnsoawazie/station-locate-backend">FindStation backend</a>
    <ul>
      <li>Ensure you have these uncommented or added in your gemfile before running <code>bundle install</code>
      <ul>
         <li><code>gem 'jwt'</code></li>
         <li><code>gem 'active_model_serializers', '~> 0.10.0'</code></li>
         <li><code>gem "dotenv-rails", "~> 2.7"</code></li>
         <li><code>gem 'bcrypt', '~> 3.1.7'</code></li>
         <li><code>gem 'image_processing', '~> 1.2'</code></li>
         <li><code>gem 'pg', '>= 0.18'</code></li>
         <li><code>gem 'rails', '~> 6.0.2'</code></li>
         <li><code>ruby '2.7.0'</code></li>
        </ul>
      </li>
    </ul>
  </li>
  <li>In your terminal, run <code>rvm use ruby-2.7.0</code> to make sure you are using the correct Ruby version(this assumes you already had Ruby 2.7.0 installed)</li>
  <li>Run <code>bundle install</code> to install all gems/dependancies required for FindStation</li>
  <li>Run <code>rails db:create</code> to create a local PostgresQL database</li>
  <li>Run <code>rails db:migrate</code>to create the tables/columns required for proper FindStation functionality</li>
  <li>Create a file called .env in the backend directory (/station_locate_backend/) and add HMAC_SECRET = "<insert a secret string here>"(this is for your JWT token), NREL_API_KEY= "<insert API Token you were issued by National Renewable Energy Laboratory>", and GOOGLE_MAPS_API_KEY= "<insert API Token you were issued by Google maps API>" to the file</li>
   <li>Head over to  the <a href="https://github.com/chinomnsoawazie/station-locate-frontend/blob/master/README.md#frontend-installation">frontend</a> for instructions on how to install the frontend</li>

 </ul>
</p>

 <h2 id="first-start">First start</h2>
<p>After installtion you need to fire up the backend API and the frontend in that order. For the backend, navigate into the folder you cloned the backend repo into(probably need to run an <code>ls</code> command to be sure youre in the root app folder), and run <code>rails s</code>. This would start the backend on the default <code>port 3000</code>. Then in a new shell tab or new terminal window, navivate to the folder containing the cloned and properly installed frontend repo and run <code>npm start</code>. It should come up with a dialog that informs you <code>port 3000</code> is taken and props you to chose to run the frontend on a different port. Chose yes and everything should be alright. Frontend will run on a port with a number above 3000, usually 3001.<br/>

To access the backend, go to <code>http://localhost:3000</code><br/>
To acess the frontend, go to <code>http://localhost:3001</code></p>
 
<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

<h1 id="summary-of-files">Summary of files</h1>
   <h2 id="internal-file-structure">Internal file structure</h2>
    <p>
 <ul>
  <li><a href="https://github.com/chinomnsoawazie/station-locate-backend/tree/master/station_locate_backend/app">App:</a> Primary location for backend API configuration
    <ul>
      <li><a href="https://github.com/chinomnsoawazie/station-locate-backend/tree/master/station_locate_backend/app/controllers">controllers:</a> Render/RESTful/CRUD methods that carry our actoins including authorizations, checks, etc</li>
       <li><a href="https://github.com/chinomnsoawazie/station-locate-backend/tree/master/station_locate_backend/app/serializers">serializers:</a>Filters for the backend API</li>
        <li><a href="https://github.com/chinomnsoawazie/station-locate-backend/tree/master/station_locate_backend/app/models">models:</a>Active Record Associations/Validation methods</li>
    </ul>
   
   </li>
   <li><a href="https://github.com/chinomnsoawazie/station-locate-backend/tree/master/station_locate_backend/config"> config:</a> Start/Backend configuration files for routes, image processing, etc</li>
  <li><a href="https://github.com/chinomnsoawazie/station-locate-backend/tree/master/station_locate_backend/db"> db:</a> Database configuration files</li>
  <li><a href="https://github.com/chinomnsoawazie/station-locate-backend/blob/master/station_locate_backend/Gemfile"> Gemfile:</a> Prerquisites and dependencies</li>
</ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>



 <h1 id="planned-improvements">Planned improvements</h1>
    <p>  Some of the planned improvements include;

 <ul>
  <li>Persist checkins</li>
  <li>Persist commenting and sharing to social networks activities</li>
  <li>Implement tracking that lets the user know how when they need to head to a charging station and which stations they can make it to but persisting thier vehicle characteristics parameters
</li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

 <h1 id="contact">Contacts</h1>
    <p>
 <ul>
  <li><a href="coawazie@gmail.com">Email</a></li>
  <li><a href="https://www.linkedin.com/in/chinomnsoawazie/">LinkedIn</a></li>
  <li><a href="https://twitter.com/COAwazie">Twitter</a></li>
  <li><a href="https://medium.com/coffee-software">Medium</a></li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>

 <h1 id="credits">Credits</h1>
    <p>
 <ul>
  <li><a href="https://flatironschool.com/">The Flatiron School</a></li>
  <li><a href="https://jwt.io/introduction/">JWT Auth</a></li>
  <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  <li><a href="https://rubygems.org/gems/dotenv-rails/versions/2.7.5">dotenv-rails</a></li>
  <li><a href="https://rubygems.org/gems/bcrypt/versions/3.1.7">Bcrypt</a></li>
  <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
 </ul>
</p>

<a href="#table-of-contents"> <img src="https://img.shields.io/badge/-Back%20To%20Table%20of%20Contents-lightgrey" style="max-width:50%;"></a>
