# MuseExchange Museum Loan Application

## Overview of MuseExchange

MuseExchange is two-sided marketplace that allows cultural institutions to loan artefacts and art to other cultural institutions. An application like this resulted from a need to acquire objects for temporary exhibitions. This type of application allows museums to streamline acquisition with a database that shows all available artefacts. Currently, most cultural institutions organise loans through a loans register, loan agreement forms and a strict application process. The creation of a marketplace application aims to assist in the activities of record keeping with loan registers and ensuring that the parties involved are relevant cultural institutions that have a purpose for the loan, will have appropriate environmental controls and insurance for each loaned out object. 

Each individual user within the application will represent a cultural institution such as the British Museum, Australian National Museum, Altes Museum, Narodní Muzeum etc. Furthermore, cultural institutions will have to register through an application process to become a verified user. The aim of verifying a user is to prevent non-cultural institutions from purchasing loans from the application without having sufficient conditions for acquiring a new object. 

## The Problem that the application tries to solve

Museums only display approximately 2-4 % off their overall collection. The rest of a museum’s collection remains in storage away from the public eye. 
A majority of museums own more artefacts than they have space to display. Because of this issue, a large portion of collections are inaccessible to the public. The application MuseExchange enables institutions to loan objects that are in storage to other institutions for temporary exhibitions. Furthermore, MuseExchange aims to create a platform for museums to easily apply for loans of objects that are within their database. This is a significant improvement to contacting museums directly to organise inbound and outbound loans, which is a process that can take several months of preparation.   

Important considerations that determine a cultural institutions decision on whether to loan out an artefact to another cultural institution include the following:

-	The lengthy application process in organising items for loan and there is no known application platform for museums to directly loan from other museums. 
-	Understanding the identity of the borrower
-	Understanding the plans that the borrower has for the object
-	Understanding the overall security of the building and the environmental controls within the gallery space 

**The application will meet these considerations by implementing the following:**

-	A registration process that requires each new user to provide their cultural institution’s name, description, and country their physical gallery space is in, inward and outward loan agreement guidelines (document upload)
-	When a user chooses to loan an object, they must submit an application on their plans for the object alongside details of their building environment and any associated risk assessments

## Functionalities

### User Profile

This functionality allows cultural institutions to set up a verified user profile that allows the user to be part of the loan network. Within this profile, users will be able to add information on the museums name, an overview of their mission, information on the exhibition space, their geographical location in the world and upload any important lending policies for inbound and outbound loans. 

### Amend User Profile

This functionality allows user to update their information within their profile giving the user the flexibility to change information surrounding the location, exhibition space, and lending policies. For instance, if the museum is undergoing renovations and has a new temporary space, the user has the responsibility to update the location information. 

### Create New Listing

This functionality is unlocked after the user has set up a profile. It concerns the ability to list new objects that other cultural institutions can loan. Each object will require a name, an associated artist (if known), date created (if known), a description, dimensions, materials, overall condition and a price. All of this information is considered vital for both parties in establishing appropriate environmental and security controls. 

### Amend Current Listings

This functionality allows the user to update existing listings to either remove or amend attributes. For example, if more research has been conducted on a particular object the user can add additional information within the description field of the item. Likewise, if the overall condition of an object changes this can be communicated to other museums via amending the condition attribute. This will ultimately help borrowers implement appropriate environmental controls to ensure a stable condition of the object. 

### Remove Current Listings

This functionality enables the user to delete existing listings. A delete function gives the user the option to remove any objects that they no longer want to put forth for loan. Museums may choose to delete a listing if the overall condition changes and the object is no longer suitable for loan or the object has been chosen for an exhibition within their site. 

### Loaning Objects

This functionality gives users the ability to loan objects that are available from other museums. It operates similar to a sale whereby once the user selects loan item they are required to pay for the loan period. The loan price does not cover any additional costs such as security, condition reporting, and environmental controls that are billed to the borrower for the period of the loan. 

## Targeted Audience

The targeted audience for this application is museum professionals that have a role in exhibition design and loans such as curators, registrars and directors.  

Curators have a direct role in the creation of exhibitions and conducting research of collections. They play a vital role in finding objects for new exhibitions. An application that provides users with a platform to exchange objects would enable curators to obtain objects more efficiently.

Registrars play a pivotal role in ensuring that all museum items are accounted for and that appropriate security and environmental controls are in place to keep them safe. MuseExchange aims to provide registrars with a way to track any inbound and outbound loans and provide supporting documentation such as condition reports to potential borrowers. 

Directors act as a duty manager of a museum and ensure that all activities within the museum are running smoothly, which includes organising exhibitions, care for collection, and building relationships with other museums. The MuseExchange platform creates an environment in which museums can be a part of a greater network that encourages directors to reach out and build relationships with museums that they may not have worked with before.  

## Tech Stack

- Program Languages
    - HTML5 - Website Markup
    - CSS3 - Website Styling
    - Bootstrap - Website Styling
    - Simple Form - Form Design
    - JavaScript - Website Functionality
    - Ruby - Website Functionality - Backend development
- Ruby on Rails
    - Server side web application framework
- PostgreSQL
    - Relational database system
- Heroku
    - Cloud application platform for the deployment of MuseExchange
- Amazon S3
    - Object based secure cloud storage

## Wireframes 



## Link to the Deployed Application

https://museexchange.herokuapp.com/

## Link to GitHub Repository

https://github.com/NatalieLouise91/Market_Place_Application

## User Stories

### Curator 
As a museum curator, I want to be able to create diverse exhibitions with objects that are not within my museum’s collection, so that I can create a narrative that will provide an educative experience for visitors to my museum.

### Registrar
As a museum registrar, I want to ensure that when I loan out objects from my collection there is an appropriate incoming and outgoing logistical procedures including appropriate security and environmental controls of the borrowing institution, so that I can ensure the protection of my collection. 

### Director
As a museum director, I want to be able to share my collection with other cultural institutions, so that I can create relationships with other museums, encourage patrons to visit my museum, and promote the significance of my collection.

## Identified Entities within MuseExchange

MuseExchange has a number of entities that must be tracked by the application. For example, as a two-side marketplace loan system, MuseExchange will have users with user profiles, loaners lending out objects, borrowers borrowing objects, objects that are being loaned out, and Loan Orders that are created when borrowers loan objects from loaners. Additionally, each loaner and borrower will have a location in which each museum is based. Therefore, the fundamental entities needed in MuseExchange are users, user profiles, loaners, borrowers, objects, loan orders and locations.

## Database relations that are implemented in MuseExchange

### User Entity & Profile Entity

A user entity will have a one-to-one relationship with the profile entity. A museum can sign up to become a user and a part of that process is to build a profile which details the following attributes: 
-	id
-	Institution name
-	Exhibition venue size
-	Lending policy
-	Location id
-	User id
-	Loaner id
Each user can only create one profile, however, if necessary, they can amend that profile. 

### Location Entity & Profile Entity

A location entity will have a one-to-one relationship with a profile entity. Each profile will have one attached location which will include the following attributes:
-	id
-	Street
-	State
-	Postcode
-	Country
-	Profile id
This allows users to easily update location information if they have a change of address etc.  

### Loaner Entity & Borrower Entity

A loaner entity will have a one-to-many relationship with the borrower entity. Additionally, a borrower will also reference the loaner entity. For example, a loaner will have many borrowers loaning objects from them. 
