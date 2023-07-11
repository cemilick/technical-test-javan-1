-- 2. Query Input Semua Data sesuai silsilah keluarga
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(0, 'Budi', 'Laki-Laki', -1);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(1, 'Dedi', 'Laki-Laki', 0);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(2, 'Dodi', 'Laki-Laki', 0);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(3, 'Dede', 'Laki-Laki', 0);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(4, 'Dewi', 'Perempuan', 0);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(5, 'Feri', 'Laki-Laki', 1);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(6, 'Farah', 'Perempuan',	1);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(7, 'Gugus', 'Laki-Laki',	2);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(8, 'Gandi', 'Laki-Laki', 2);
INSERT INTO Orang (id, nama, jeniskelamin, parent)
VALUES(9, 'Hani', 'Perempuan', 3);
INSERT INTO Orang (id, nama, jeniskelamin,parent)
VALUES(10, 'Hana', 'Perempuan', 3);
-- 3. Semua anak budi (id Budi = 0)
SELECT * FROM orang WHERE parent = 0;
-- 4. Semua cucu budi (id Budi = 0)
SELECT * FROM orang WHERE parent IN (SELECT id FROM orang WHERE parent = 0);
-- 5. Semua cucu perempuan budi (id Budi = 0)
SELECT * FROM orang WHERE parent IN (SELECT id FROM orang WHERE parent = 0) AND jeniskelamin = 'Perempuan';
-- 6. Bibi dari Farah (Parent Farah = 1 / Dedi)
SELECT * FROM orang WHERE id <> 1 AND parent IN (SELECT parent from orang WHERE id = 1) AND jeniskelamin = 'Perempuan';
-- 7. Sepupu Laki-Laki Hani (parent Hani = 3 / Dede)
SELECT * FROM orang WHERE parent <> 3 AND parent NOT IN (SELECT parent from orang WHERE id = 3) AND jeniskelamin = 'Laki-Laki'
