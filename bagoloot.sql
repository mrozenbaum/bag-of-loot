DELETE FROM ChildToy;
DELETE FROM Toy;
DELETE FROM Child;

DROP TABLE IF EXISTS Toy;
DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS ChildToy;

CREATE TABLE Child (
    ChildId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Happy INT NOT NULL
);

INSERT INTO Toy ('Name') VALUES ('Kite');
INSERT INTO Child VALUES (null, 'Vincent', 0);
INSERT INTO Child VALUES (null, 'Mikey', 0);
SELECT * FROM Child;


SELECT * FROM Child;

CREATE TABLE Toy (
    ToyId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL
);

CREATE TABLE ChildToy (
    ChildToyId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    ToyId INTEGER NOT NULL,
    ChildId INTEGER NOT NULL,
    FOREIGN KEY (ChildId) REFERENCES Child(ChildId),
    FOREIGN KEY (ToyId) REFERENCES Toy(ToyId)
);

INSERT INTO Toy VALUES (null, 'GI Joe');
SELECT * FROM Toy;


INSERT INTO ChildToy VALUES (null, 1, 5);
INSERT INTO ChildToy VALUES (null, 1, 6);
INSERT INTO ChildToy VALUES (null, 2, 2);
SELECT * FROM ChildToy;

SELECT c.Name, t.Name
FROM Child c, Toy t, ChildToy ct
WHERE c.ChildId = ct.ChildId
AND ct.ToyId = t.ToyId
AND c.name = 'Mikey';

SELECT * FROM ChildToy;


SELECT COUNT(c.Name) NumberOfChildren
FROM Child c, Toy t, ChildToy ct
WHERE t.Name = 'Barbie'
AND t.ToyId = ct.ToyId
AND ct.ChildId = c.ChildId


DELETE FROM Toy WHERE ToyId=2;

DELETE FROM ChildToy WHERE ChildToy.ToyId =1 AND ChildToy.ChildId=2;