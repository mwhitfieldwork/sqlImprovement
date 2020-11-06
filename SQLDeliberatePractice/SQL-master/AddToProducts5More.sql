USE CityTour
go

INSERT INTO Product
            (ImageUrl,
             Summary,
             Latitude,
             Longitude,
             CategoryId,
             Price,
             Marker,
             NAME)
values 		 ('Images/home1.jpg',
             'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
             48.85999,
             2.3777,
             4,
             9.99,
             'scripts/markers/building.png',
             'Film Museum')


--select * from Category
--order by Name

--insert into Category
--			(Name)
--values ('Home')
