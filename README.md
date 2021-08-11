# MuseExchange Museum Loan Application

## Overview of MuseExchange

MuseExchange is a two-sided marketplace that allows cultural institutions to loan artefacts and art to other cultural institutions. An application like this resulted from a need to acquire objects for temporary exhibitions. This type of application allows museums to streamline acquisition with a database that shows all available artefacts. Currently, most cultural institutions organise loans through a loans register, loan agreement forms and a strict application process. The creation of a marketplace application aims to assist in record-keeping activities with loan registers and ensure that the parties involved are relevant cultural institutions that have a purpose for the loan, will have appropriate environmental controls and insurance for each loaned out object. 

Each user within the application will represent a cultural institution such as the British Museum, Australian National Museum, Altes Museum, Narodní Muzeum etc. Furthermore, cultural institutions will have to register through an application process to become a verified user. The aim of verifying a user is to prevent non-cultural institutions from purchasing loans from the application without having sufficient conditions for acquiring a new object. 

## The Problem that the application tries to solve

Museums only display approximately 2-4 % of their overall collection. The rest of a museum's collection remains in storage away from the public eye. 

A majority of museums own more artefacts than they have space to display. Because of this issue, a large portion of collections is inaccessible to the public. The application MuseExchange enables institutions to loan objects that are in storage to other institutions for temporary exhibitions. Furthermore, MuseExchange aims to create a platform for museums to easily apply for loans of artefacts that are within their database. This is a significant improvement to contacting museums directly to organise inbound and outbound loans, which is a process that can take several months of preparation.   

Important considerations that determine a cultural institutions decision on whether to loan out an artefact to another cultural institution include the following:

-   The lengthy application process in organising items for loan, and there is no known application platform for museums to directly loan from other museums. 
-   Understanding the identity of the borrower
-   Understanding the plans that the borrower has for the object
-   Understanding the overall security of the building and the environmental controls within the gallery space 

**The application will meet these considerations by implementing the following:**

- A registration process that requires each new user to provide their cultural institution’s name, description, and country their physical gallery space is in, inward and outward loan agreement guidelines (document upload)
Key contacts in a museums profile include a contact for inbound loans and a contact for outbound loans. 

**Future implementation**

-   When a user chooses to loan an object, they must submit an application on their plans for the object alongside details of their building environment and any associated risk assessments

## Functionalities

### User Profile

This functionality allows cultural institutions to set up a verified user profile that allows the user to be part of the loan network. Within this profile, users will add information on the museum's name, an overview of their mission, information on the exhibition space, their geographical location in the world, and upload any essential lending policies for inbound and outbound loans. 

### Amend User Profile

This functionality allows users to update their information within their profile, giving them the flexibility to change information surrounding the location, exhibition space, and lending policies. For instance, if the museum is undergoing renovations and has a new temporary space, the user is responsible for updating the location information. 

### Create New Listing

This functionality is unlocked after the user has set up a profile. It concerns the ability to list new objects that other cultural institutions can loan. Each artefact will require a name, an associated artist (if known), date created (if known), a description, dimensions, materials, overall condition and a price. All of this information is considered vital for both parties in establishing appropriate environmental and security controls. 

### Amend Current Listings

This functionality allows the user to update existing listings to either remove or amend attributes. For example, if more research has been conducted on a particular object, the user can add additional information within the item's description field. Likewise, if an object's overall condition changes, this can be communicated to other museums via amending the condition attribute. This will ultimately help borrowers implement appropriate environmental controls to ensure a stable condition of the object. Note, this can only be completed when an object is not on loan. 

### Remove Current Listings

This functionality enables the user to delete existing listings. A delete function gives the user the option to remove any objects that they no longer want to put forth for a loan. Museums may choose to delete a listing if the overall condition changes and the object is no longer suitable for a loan, or the object has been chosen for an exhibition within their site. Note, this can only be completed when an object is not on loan. 

### Loaning Objects

This functionality gives users the ability to loan objects that are available from other museums. It operates similar to a sale whereby once the user selects a loan item, they must pay for the loan period. The loan price does not cover any additional costs such as security, condition reporting, and environmental controls billed to the borrower for the loan period. 

## Site Map

![Site Map](./docs/site-map.png)

## Screenshots of MuseExchange

### Landing Page

![home-page](./docs/home-page.png)

### Profile Index

![profile-index](./docs/profile-index.png)

### New Profile

![new-profile](./docs/new-profile.png)

### Individual Profile

![profile-page](./docs/profile-page.png)

### Artefact Index

![artefact-index](./docs/artefact-index.png)

### Individual Artefact

![artefact-page](./docs/artefact-page.png)

### New Artefact

![new-artefact-form](./docs/new-artefact-form.png)

### Successful Payment

![successful-payment](./docs/successful-payment.png)

## Targeted Audience

The targeted audience for this application is museum professionals that have a role in exhibition design and loans, such as curators, registrars and directors.  

Curators have a direct role in the creation of exhibitions and research collections. They play a vital role in finding objects for new exhibitions. An application that provides users with a platform to exchange objects would enable curators to obtain objects more efficiently.

Registrars play a pivotal role in ensuring that all museum items are accounted for, and that appropriate security and environmental controls are in place to keep them safe. MuseExchange aims to provide registrars with a way to track any inbound and outbound loans and provide supporting documentation such as condition reports to potential borrowers. 

Directors act as duty managers of a museum and ensure that all activities within the museum are running smoothly, including organising exhibitions, caring for the collection, and building relationships with other museums. The MuseExchange platform creates an environment in which museums can be a part of an extensive network that encourages directors to reach out and build relationships with museums that they may not have worked with before.  

## Tech Stack

**Program Languages**

**HTML5** 

- HTML is website markup used to structure MuseExchange's webpages and their content.

**CSS3**

- CSS3 is utilised in MuseExchange to structure and add style to the HTML files. 

**JavaScript** 

- JavaScript is utilised in MuseExchange to add functionality in the frontend development.

**Ruby** 

- Ruby is the programing language that provides backend development for the MuseExchange application. In addition to the above, Ruby adds functionality into the HTML through embedded Ruby. 

**Ruby on Rails**

- Ruby on Rails is a server-side web application framework. A typical Ruby on Rails application involves the Model View Controller architectural pattern, hereon known as MVC. This MVC architectural design forms the framework for all Ruby on Rails website applications. Ruby on Rails was chosen for the MuseExchange application because it is well suited for website development.

**PostgreSQL**

- PostgreSQL is a relational database system. The data within the MuseExchange is structured within the relational database Postgresql framework. Therefore, the data stored within this type of database forms relations with each other.

**Additional Programs**

**Heroku**

- Heroku is a cloud application platform that was utilised for the deployment of MuseExchange

**Amazon S3**

- Amazon S3 is object-based secure cloud storage utilised to store images and documents that users upload in the MuseExchange application.

**Additional Gems Utilised**

**Bootstrap** 

- Bootstrap was used for website styling and structuring each webpage.

**Simple Form**

- Simple Form was utilised for the design of all of the forms within MuseExchange. 

**Devise**

- Devise was utilised for the authentication within MuseExchange. 

## Third Party Services

**Stripe**

- Stripe API is a payment processing software for processing online payments. Stripe allows developers to utilise a secure payment infrastructure without spending months implementing their own payment processing system. Within the MuseExchange application, Stripe was an important third party to include. This is because Stripe enabled a working payment system. The payment system through Stripe enabled loan orders to be created using the Stripe transaction metadata. Furthermore, users are able to receive a receipt from the payment transaction.

**Ultrahook**

- Ultrahook was utilised to create a webhook endpoint that could be attached to the MuseExchange Stripe account. This service provides feedback on whether payments were correctly processed. 

## User Stories

### Curator 
As a museum curator, I want to be able to create diverse exhibitions with objects that are not within my museum's collection so that I can create a narrative that will provide an educative experience for visitors to my museum. I would like to have the ability to efficiently choose new artefacts for loans from other museums and reach out to key contacts in those museums. 

### Registrar
As a museum registrar, I want to ensure that when I loan out objects from my collection, there are appropriate incoming and outgoing logistical procedures, including proper security and environmental controls of the borrowing institution, so that I can ensure the protection of my collection. I want an all-encompassing platform that provides access to this information.

### Director
As a museum director, I want to be able to share my collection with other cultural institutions to create relationships with other museums, encourage patrons to visit my museum and promote the significance of my collection. I want the opportunity to reach out to other museums on a single platform.

### User
As a user, I want to be able to utilise this application without my sensitive information being leaked to go about my loaning activities without any privacy breaches. I want my data to be only accessible by other museum professions.  

## Wireframes 

### Landing Page

**Desktop**

![home-page-desktop](./docs/wireframe-home-page.png)

**Tablet**

![home-page-tablet](./docs/wireframe-home-page-tablet.png)

**Mobile**

![home-page-mobile](./docs/wireframe-home-page-mobile.png)

### New Profile Page

**Desktop**

![new-profile-page](./docs/wireframe-new-profile.png)

**Tablet**

![new-profile-page-tablet](./docs/wireframe-new-profile-tablet.png)

**Mobile**

![new-profile-page-mobile](./docs/wireframe-new-profile-mobile.png)

### Profile Page

**Desktop**

![wireframe-profile-page](./docs/wireframe-profile-page.png)

**Tablet & Mobile**

![wireframe-profile-page-small](./docs/wireframe-profile-small.png)

### Artefact Index Page

**Desktop**

![artefact-index-page](./docs/wireframe-artefact-index.png)

**Tablet & Mobile**

![artefact-index-page-small](./docs/wireframe-artefact-index-small.png)

### Artefact Page

**Desktop**

![artefact-page](./docs/wireframe-artefact-page.png)

**Tablet**

![artefact-page-tablet](./docs/wireframe-artefact-page-tablet.png)

**Mobile**

![artefact-page-mobile](./docs/wireframe-artefact-page-mobile.png)

## Draft ERD for Application

![ERD-draft](./docs/erd-draft.png)

## Final ERD for Application

The final Entity Relationship Diagram includes relations for active storage:

![ERD-final](./docs/erd-final.png)

## Identified Entities within MuseExchange

MuseExchange has a number of entities that must be tracked by the application. For example, as a two-side marketplace loan system, MuseExchange will have **users** with user **profiles**, **loaners** lending out artefacts to borrowers, **borrowers** borrowing artefacts from **loaners**, **artefacts** that are being loaned out, and **Loan Orders** that are created when borrowers loan artefacts from loaners. Artefacts will also be a part of a **category** that details the artefact's material and condition.
Additionally, each profile will have a **location** in which each museum is based. Therefore, the fundamental entities needed in MuseExchange are users, user profiles, loaners, borrowers, artefacts, loan orders, categories and locations.

## Additional attachments

Within the application, a user can upload an **image** within the artefact entity and the profile entity. In addition to an image, users can upload **documentation** within the category entity.  

![identified-entities](./docs/identified-entities.png)

## **Database relations that are implemented in MuseExchange**

### User Entity & Profile Entity

A user entity will have a one-to-one relationship with the profile entity. A museum can sign up to become a user, and a part of that process is to build a profile. Each user can only create one profile; however, if necessary, they can amend that profile by selecting the edit button on their account page. Please refer to the final ERD. 

### Location Entity & Profile Entity

A location entity will have a one-to-one relationship with a profile entity. Each profile form will have a nested location form, which allows users to easily update location information if they have a change of address etc.  

### Loaner Entity & Artefact Entity

A loaner entity will have a one-to-many relationship with the artefact entity. This association is formed because a loaner can loan out multiple artefacts. 

### Profile Entity & Loaner Entity

A Profile entity will have a one-to-one relationship with the loaner entity. This association enables profiles that ability to loan out artefacts under a loaner id. 

### Profile Entity & Borrower Entity

A Profile entity will have a one-to-one relationship with the borrower entity. This association enables users to borrow artefacts from loaners. 

### Category Entity & Artefact Entity

The category entity details an artefacts condition. This is a one-to-one relationship. An Artefact will have one condition description attached that provides museums with additional information surrounding the condition and materials of the artefact.

### Borrower Entity & Loan Order Entity

A borrower entity will have a one-to-many relationship with a loan order entity. This association is because a borrower can have many loan orders at the same time. 

### Loaner Entity & Loan Order Entity

A loaner entity will have a one-to-many relationship with a loan order entity. This association is because a loaner entity will have multiple artefacts which multiple borrowers can loan out. Therefore, multiple loan orders will be created. 

### Artefact Entity & Loan Order Entity

An artefact entity will have a one-to-one relationship with a loan order entity. This association is because an artefact can only be on one loan order at a time. 

### Attachment Associations

### Image Entity & Artefact Entity

An image entity will have a one-to-one relationship with an artefact entity. Each new artefact entry has one attachment of an image. 

### Image Entity & Profile Entity

An image entity will have a one-to-one relationship with a profile entity. Each new profile entry has one attachment of an image.

### Documentation Entity & Category Entity

The documentation entity will have a one-to-one relationship with the category entity. Each new category entry can have an attachment of one document. 

## **Projects Models Active Record Associations**

## User & Profile

In terms of active record associations, the user entity will have a **has_one** association with the profile entity. The profile entity will then have a **belongs_to** association with the user entity. Thus making the one-to-one relationship. A breakdown of the ERD for the user and profile relation can be seen below: 

![user-profile-relation](./docs/user-profile-relation.png)

## Profile & Location

The profile entity will have a **has_one** association with the location entity. The location entity will then have a **belongs_to** association with the profile entity. Furthermore, due to the nested form that combines the profile & location entity, the location entity will be **dependent** on the profile entity. Therefore, if the profile entity is updated, then the location entity is also updated. Likewise, if the profile entity is deleted, then the location entity will also be deleted. A breakdown of the ERD for the profile and location relation can be seen below: 

![profile-location-relation](./docs/profile-location-relation.png)

## Profile & Borrower

The profile entity will have a **has_one** relationship with the borrower entity. In return, the borrower entity will have a **belongs_to** association with the profile entity. This is because each profile is required to have a listed contact for borrowing artefacts from other museums. Additionally, the borrower entity will be **dependent** on the profile entity. If the profile entity is updated or deleted, the borrower entity will also be updated or deleted. A breakdown of the ERD for the profile and borrower relation can be seen below: 

![profile-borrower-relation](./docs/profile-borrower-relation.png)

## Profile & Loaner

The profile entity will have a **has_one** relationship with the loaner entity. In return, the loaner entity will have a **belongs_to** association with the profile entity. This is because each profile is required to have a listed contact for loaning artefacts from other museums. Additionally, the loaner entity will be **dependent** on the profile entity. If the profile entity is updated or deleted, the loaner entity will also be updated or deleted. A breakdown of the ERD for the profile and loaner relation can be seen below: 

![profile-loaner-relation](./docs/profile-loaner-relation.png)

## Profile & Picture

The profile entity has a **has_one_attached** association with the picture entity.

## Artefact & Category

The category entity has a **has_one** association with the artefact entity. The artefact entity has a **belongs_to** association with the category entity. This is because each artefact will have additional category information that outlines the condition and materials related to that artefact. The category entity is **dependent** on the artefact entity and is updated or deleted when the artefact entity is amended. A breakdown of the ERD for the artefact and category relation can be seen below: 

![artefact-category-relation](./docs/artefact-category-relation.png)

## Artefact & Picture

The artefact entity has a **has_one_attached** association with the picture entity.

## Artefact & Loaner

The loaner entity has a **has_many** relationship with the artefact entity. On the other hand, the artefact entity has a **belongs_to** association with the loaner entity. This is because a loaner can have many artefacts and can loan out many artefacts. A breakdown of the ERD for the artefact and loaner relation can be seen below:

![artefact-loaner-relationship](./docs/artefact-loaner-relation.png)

## Artefact & Loan Order

The artefact entity has a **has_one** association with the loan order entity. In return, the loan order entity has a **belongs_to** association with the artefact entity. This association was formed to ensure that an artefact could only be on loan once, that is, until the borrowing museum returns it to the loaning museum. A breakdown of the ERD for the artefact and loan order relation can be seen below:

![artefact-loan-order-relation](./docs/artefact-loan-order-relation.png)

## Loaner & Loan Order

The loaner entity has a **has_many** relationship with the loan order entity. In return, the loan order entity has a **belongs_to** association with the loaner entity. The reasoning behind this association is that a loaner can be responsible for many loan orders at the same time. Furthermore, a loan order is also **dependent** on the loaner entity. In a rare case, loan orders have the ability to be updated or deleted if a loaner needs to be amended or removed. A breakdown of the ERD for the loaner and loan order relation can be seen below:

![loaner-loan-order-relation](./docs/loaner-loan-order-relation.png)

## Borrower & Loan Order

The borrower entity has a **has_many** relationship with the loan order entity. In return, the loan order entity has a **belongs_to** association with the borrower entity. The reasoning behind this association is that a borrower can choose to loan many artefacts at the same time. Furthermore, a loan order is also **dependent** on the borrower entity. In a rare case, loan orders have the ability to be updated or deleted if a borrower needs to be amended or removed. A breakdown of the ERD for the borrower and loan order relation can be seen below:

![borrower-loan-order-relation](./docs/borrower-loan-order-relation.png)

## **Database Schema**

The following images provide a breakdown of the database schema in MuseExchange:

## Users

![schema-users](./docs/schema-users.png)

## Profiles

![schema-profiles](./docs/schema-profiles.png)

## Locations

![schema-locations](./docs/schema-locations.png)

## Artefacts

![schema-artefacts](./docs/schema-artefacts.png)

## Categories

![schema-categories](./docs/schema-categories.png)

## Loaners

![schema-loaners](./docs/schema-loaners.png)

## Borrowers 

![schema-borrowers](./docs/schema-borrowers.png)

## Loan Orders 

![schema-loan-orders](./docs/schema-loan-orders.png)

## Active Storage

![schema-active-storage](./docs/schema-active-storage.png)

![schema-blobs](./docs/schema-blobs.png)

## Foreign Keys

![schema-foreign-keys](./docs/schema-foreign-keys.png)

The database schema was kept as close as possible to the original plan, and referring to the images above outline the relationships between entities. Data validation was important in the overall design of MuseExchange. For this reason, a majority of entity attributes are marked as required, which can be seen as `null: false` within the schema table. The Foreign Key figure outlines the relationship between the foreign key to the primary key. For example, a profile is a foreign key on the user table. 

## **Highlevel Components (abstractions) in MuseExchange**

## **Models**

As discussed above, the models provide the framework for the PostgreSQL database. The eight models, Users, Profiles, Locations, Artefacts, Categories, Loaners, Borrowers, and Loan Orders, provide a way to store relevant information of each museum. These models are manipulated by the controller and send relevant information back to the views.

## **Controllers** 

The controllers in MuseExchange include the application controller, artefacts controller, home controller, loan orders controller, payments controller and profiles controller. 

## Artefacts Controller

The artefacts controller provides code that allows the user to create, see, edit and delete artefacts through the new, create, show, index, and destroy methods. The show method also initiates the stripe payment session through the third-party API. The artefacts controller also builds a category when each new artefact is created. When the artefact is created, it has the required params of name, artist, date, description, dimensions, price. In addition to the artefacts params, the required params also include the category attributes of material, condition, and description. Each of these methods link the user with the relevant views for:

- creating an artefact and saving it to the database
- showing all artefacts
- showing individual artefacts through params
- editing artefacts
- deleting an artefact

## Home Controller

The home controller provides code for the home method, which is a simple method that links the user to the homepage in the views.

## Loan Orders Controller

The loan order controller provides code that allows the user to see both an index of loan orders and individual loan orders through the show and index methods. These two methods link the user with the relevant views for:

- showing all loan orders
- showing an individual loan order through params

## Payments Controller

The payments controller provides code through the webhook and success methods. The webhook method creates a new loan order and saves it in the database through the stripe checkout session metadata. The success method shows the user information on the purchased artefact and the stripe payment id by connecting them to the success view. 

## Profiles Controller

The profiles controller provides code through the new, create, show, index, update and destroy methods. These methods allow the user to create, see, edit and destroy profiles. The profiles controller also builds a loaner, borrower, and location when each new profile is created. When a profile is created, it has the required params of institution name, description, and lending policy. In addition to the profile params, the required params also include the location attributes of street, state, postcode, and location; the borrower attributes of name and phone; and the loaner attributes of name and phone. Each of these methods link the user with the relevant views for:

- creating a profile and saving it to the database
- showing all profiles
- showing individual profiles through params
- editing a profile
- deleting a profile

## **Views**

The views in MuseExchange include the artefacts view, home view, loan orders view, payments view, profiles view and the partials view. 

## Artefacts View

With code from the controller, there are separate views for a new artefact, updating an existing artefact, deleting an artefact, seeing all artefacts and seeing an individual artefact. With reference to the artefacts controller, the following views are available:

- creating a new artefact renders the artefact form, which in turn collects information for the artefact model
- showing an artefact executes the artefacts show view
- showing all artefacts executes the artefacts index view
- editing an artefact renders the artefact form, which in turn collects information for the artefact model
- deleting an artefact removes the artefact from the database and diverts the user to the artefact index page. 

## Home View

With reference to the home controller, a user is able to see the homepage view.

## Loan Orders View

With reference to the loan orders controller, the following views are available:

- showing a loan order executes the loan order show view
- showing all loan orders executes the loan order index view

## Payments View

With reference to the payments controller, the following views are available:

- the success method executes the success page view

## Profiles View

With code from the profile's controller, there are separate views for a new profile, updating an existing profile, deleting a profile, seeing all profiles and seeing an individual profile. With reference to the profiles controller, the following views are available:

- creating a new profile renders the profile form, which in turn collects information for the profile model
- showing a profile executes the profile's show view
- showing all profiles executes the profile's index view
- editing a profile renders the profile form, which in turn collects information for the profile model
- deleting a profile removes the profile from the database and diverts the user to the profile index page. 

## Partials View

The partials view renders the navigation bar and footer on each of the views. This has been implemented in the applications main layout. 

## Link to the Deployed Application

https://museexchange.herokuapp.com/

## Link to GitHub Repository

https://github.com/NatalieLouise91/Market_Place_Application

## How Tasks were Planned and Tracked 

A Trello board was utilised to track all tasks within the scope of the assessment's criteria during the project. Throughout the project, it was tempting to include additional features beyond the assessment's scope. A Trello board enabled me to prioritise crucial components of the build and add labels and due dates on each card to ensure that the project was on schedule and completed by the deadline. For vital components of the project, I ensured that the Trello cards had high priority labels and due dates for when I wanted each card completed. For tasks that were complex and required hours to complete, I included a checklist on each card. 

Furthermore, this planning system provided a visual for what was remaining in the build. I implemented a section on the board dedicated to bugs for issues discovered in the build, which allowed me to reach out to my educators and provide a concise description of the error. In reflection, I found this style of tracking tasks useful in remaining focused on one task at a time rather than becoming overwhelmed by the entirety of the project. 

 A Trello board was essential in ensuring that all tasks are tracked on a daily basis. 

![trello-board](./docs/trello-board.png)

A link to the projects Trello board can be found [here](https://trello.com/b/Kjpifkku/marketplace-app)


