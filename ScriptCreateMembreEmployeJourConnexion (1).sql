CREATE TABLE Membre (
   IdMembre int,
   Nom varchar(255),
   Prenom varchar(255),
   DateDeNaissance varchar(255),
   Email  varchar(255),
   Telephone varchar(255),
   NumRue varchar(255),
   NumPorte varchar(255),
   Ville varchar(255),
   CodePostal varchar(255),
   Province varchar(255),
   Pays varchar(255),
   PassPort varchar(255),
   ImageMembre  Varchar (255),
   PRIMARY KEY (IdMembre)
);
CREATE TABLE Employe (
   IdEmploye int,
    Nom varchar(255),
    Prenom varchar(255),
	DateNaissance varchar(255),
	Email varchar(255),
    Telephone varchar(255),
   NumRue varchar(255),
   NumPorte varchar(255),
   Ville varchar(255),
   CodePostal varchar(255),
   Province varchar(255),
    Pays  varchar(255),
   role varchar(255),
   PRIMARY KEY (IdEmploye)
	
      
);
CREATE TABLE Jour(  
IdJour varchar(255) NOT NULL,    
	FOREIGN KEY (IdEtape) REFERENCES Etape(IdEtape)  
    ON UPDATE CASCADE
    ON DELETE CASCADE,
	FOREIGN KEY (IdActivite) REFERENCES Activite(IdActivite)  
    ON UPDATE CASCADE
    ON DELETE CASCADE,
	FOREIGN KEY (IdTransport) REFERENCES Transport(IdTransport)  
    ON UPDATE CASCADE
    ON DELETE CASCADE,
	FOREIGN KEY (IdRepas) REFERENCES Repas(IdRepas)  
    ON UPDATE CASCADE
    ON DELETE CASCADE,
	FOREIGN KEY (IdHebergement) REFERENCES Hebergement(IdHebergement)  
    ON UPDATE CASCADE
    ON DELETE CASCADE,
	DateJour varchar(255), 
	PRIMARY KEY (IdJour)
      
);

 
CREATE TABLE Connexion(  
    
	FOREIGN KEY (IdMembre) REFERENCES Membre(IdMembre)  
    ON UPDATE CASCADE
    ON DELETE CASCADE,
	Email varchar(255),
	 MotDePasse varchar(255),
	 Status varchar(255)
      
);
CREATE TABLE Transport(  
    
	IdTransport varchar(255),
    TypeTransport varchar(255)
	PRIMARY KEY (IdTransport)	
      
);