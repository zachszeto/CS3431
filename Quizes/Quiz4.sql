--Schema
CREATE TABLE Supliers (
    sid INTEGER,
    sname VARCHAR2(20),
    state CHAR(2),
    PRIMARY KEY(sid)
);
CREATE TABLE Parts (
    pid INTEGER,
    pname VARCHAR2(20),
    color VARCHAR(15),
    PRIMARY KEY(pid)
);
CREATE TABLE Supply (
    sid INTEGER,
    pid INTEGER,
    cost REAL,
    PRIMARY KEY(sid,pid),
    FOREIGN KEY (sid) REFERENCES Supliers(sid),
    FOREIGN KEY (pid) REFERENCES Parts(pid)
);

--Q1: Find the suppliers that supply at least 3 'green' parts where each of those parts costs less than $50. Return sid and sname of the supplier and the number of such parts they supply.
SELECT Suppliers.sid, Suppliers.sname, COUNT(Supply.pid)
FROM Suppliers
JOIN Supply ON Suppliers.pid = Supply.pid
JOIN Parts ON Parts.pid = Supply.pid

WHERE Parts.color = 'green' AND Supply.cost < 50
GROUP BY Suppliers.sid, Suppliers.sname
HAVING COUNT(Supply.pid) > 2;

--Q2: Find the suppliers who charge more for some part than the average cost of that part (averaged over all the suppliers who supply that part). Return the sid of the supplier and pid of the part supplied.
SELECT DISTINCT S1.pid, S1.sid
FROM Supply S1
WHERE  S1.cost > (
    SELECT AVG(S2.cost)
    FROM Supply S2
    WHERE S1.pid = S2.pid
);

--Q3: Find the most expensive part(s) supplied. Give the pid, pname , and color of that part(s).
SELECT P1.pid, P1.pname, P1.color
FROM Parts P1
JOIN Supply S1 ON Supply.pid = P1.pid
WHERE S1.cost = (
    SELECT MAX(S1.cost)
    FROM Supply S2
)


SELECT S.sid, S.sname, S.GPA
FROM Student
WHERE S.sid NOT IN (
    SELECT A.sid
    FROM Apply A
    WHERE S.sid = A.sid
)