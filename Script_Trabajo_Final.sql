
USE Final;

CREATE TABLE Materias (
    ID_Materia INT PRIMARY KEY,
    Nombre_Materia VARCHAR(100),
    Descripcion TEXT
);

CREATE TABLE Profesores (
    ID_Profesor INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellidos VARCHAR(50),
    Id_Materia INT,
    FOREIGN KEY (Id_Materia) REFERENCES Materias(ID_Materia)
);

-- Crear la tabla Aulas
CREATE TABLE Aulas (
    ID_Aula INT PRIMARY KEY,
    Número VARCHAR(10),
    Pavellón VARCHAR(10),
    Número_Edificio INT
);

-- Crear la tabla Usuarios
CREATE TABLE Usuarios (
    ID_Usuario INT PRIMARY KEY,
    nombre VARCHAR(50),
    contraseña VARCHAR(50)
);

-- Crear la tabla Roles
CREATE TABLE Roles (
    ID_Registro INT PRIMARY KEY,
    ID_Usuario INT,
    Rol VARCHAR(50)
);

-- Crear la tabla Permisos
CREATE TABLE Permisos (
    ID_Permisos INT PRIMARY KEY,
    ID_Rol INT,
    Descripción VARCHAR(100)
);

-- Crear la tabla Tablas de archivos
CREATE TABLE Tablas_de_archivos (
    ID_Archivo INT PRIMARY KEY,
    ID_Estudiante INT,
    Tipo_documento VARCHAR(100)
);

-- Crear la tabla Matrículas
CREATE TABLE Matrículas (
    ID_Matrícula INT PRIMARY KEY IDENTITY,
    ID_Estudiante INT,
    ID_Materia INT
);

-- Crear la tabla Horarios
CREATE TABLE Horarios (
    ID_Horario INT PRIMARY KEY IDENTITY,
    ID_Profesor INT,
    ID_Materia INT,
    Día VARCHAR(20),
    Hora_inicio TIME,
    Hora_final TIME
);

-- Crear la tabla Congelamientos
CREATE TABLE Congelamientos (
    ID_Congelamiento INT PRIMARY KEY,
    ID_Estudiante INT,
    Fecha_Congelamiento DATE,
    ID_Materia INT
);

-- Crear la tabla Correo Electrónico_Estudiante
CREATE TABLE Correo_Electrónico_Estudiante (
    Id_Registro INT PRIMARY KEY IDENTITY,
    ID_Estudiante INT,
    Correo_Electrónico VARCHAR(100)
);

-- Crear la tabla Direcciones_estudiantes
CREATE TABLE Direcciones_estudiantes (
    ID_Registro INT PRIMARY KEY IDENTITY,
    ID_Estudiante INT,
    Provincia VARCHAR(50),
    Cantón VARCHAR(50),
    Distrito VARCHAR(50),
    Dirección_exacta VARCHAR(100)
);

CREATE TABLE Teléfonos_Profesores (
    ID_Profesor INT,
    Teléfono VARCHAR(12),
    FOREIGN KEY (ID_Profesor) REFERENCES Profesores(ID_Profesor)
);

-- Crear la tabla Estudiantes
CREATE TABLE Estudiantes (
    Id_Estudiante INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellidos VARCHAR(50),
    Fecha_de_nacimiento DATE
);

-- Crear la tabla Calificaciones
CREATE TABLE Calificaciones (
    ID_Nota INT PRIMARY KEY IDENTITY,
    ID_Profesor INT,
    ID_Materia INT,
    ID_Estudiante INT,
    Nota DECIMAL(5, 2)
);

-- Crear la tabla Asistencia
CREATE TABLE Asistencia (
    ID_Asistencia INT PRIMARY KEY IDENTITY,
    ID_Estudiante INT,
    ID_Materia INT,
    Fecha DATE,
    Estado VARCHAR(20)
);

-- Crear la tabla Cuatrimestre
CREATE TABLE Cuatrimestre (
    ID_Cuatrimestre INT PRIMARY KEY,
    Fecha_Inicio DATE,
    Fecha_Finalización DATE,
    Año INT
);

-- Crear la tabla Biblioteca
CREATE TABLE Biblioteca (
    ID_Libro INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor VARCHAR(100),
    Anio_publicacion INT,
    Disponibilidad VARCHAR(20)
);

INSERT INTO Profesores (ID_Profesor, Nombre, Apellidos, Id_Materia) VALUES
(1, 'Juan', 'Pérez García', 12),
(2, 'María', 'García Rodríguez', 36),
(3, 'Luis', 'Rodríguez López', 19),
(4, 'Ana', 'Martínez Martínez', 5),
(5, 'Carlos', 'López Sánchez', 41),
(6, 'Laura', 'Sánchez González', 9),
(7, 'Javier', 'González Pérez', 31),
(8, 'Patricia', 'Díaz Martínez', 43),
(9, 'Miguel', 'Fernández Ruiz', 46),
(10, 'Marta', 'Ruiz Jiménez', 40),
(11, 'David', 'Moreno Pérez', 37),
(12, 'Paula', 'Jiménez García', 14),
(13, 'Alejandro', 'Pérez Moreno', 23),
(14, 'Cristina', 'Torres Sánchez', 30),
(15, 'Daniel', 'Navarro Ruiz', 44),
(16, 'Elena', 'Romero González', 20),
(17, 'Francisco', 'Álvarez López', 8),
(18, 'Nuria', 'Gómez Fernández', 33),
(19, 'Sergio', 'Ruiz García', 38),
(20, 'Beatriz', 'Morales Pérez', 48),
(21, 'Pablo', 'Castro Martínez', 26),
(22, 'Silvia', 'Ortega Torres', 24),
(23, 'Antonio', 'Herrera Sánchez', 1),
(24, 'Rosa', 'Flores Martínez', 15),
(25, 'Sergio', 'Medina García', 10),
(26, 'Cristina', 'Herrera Moreno', 25),
(27, 'Jorge', 'Molina Pérez', 11),
(28, 'Ana', 'Sánchez Gómez', 3),
(29, 'Diego', 'García Ruiz', 21),
(30, 'Eva', 'Martínez Navarro', 17),
(31, 'José', 'Ramírez González', 34),
(32, 'Marina', 'González Torres', 28),
(33, 'Alberto', 'Torres Ruiz', 7),
(34, 'Isabel', 'Guerrero López', 22),
(35, 'Raúl', 'Muñoz Martínez', 50),
(36, 'Clara', 'López García', 13),
(37, 'Adrián', 'Pérez Sánchez', 27),
(38, 'Laura', 'Navarro Moreno', 16),
(39, 'Víctor', 'Ruiz Pérez', 35),
(40, 'Sara', 'Rodríguez García', 29),
(41, 'Javier', 'Pérez Martínez', 47),
(42, 'Cristina', 'García Fernández', 39),
(43, 'Manuel', 'Fernández Sánchez', 6),
(44, 'Marta', 'Sánchez López', 18),
(45, 'Daniel', 'García Pérez', 45),
(46, 'María', 'Pérez Martínez', 42),
(47, 'Antonio', 'Martínez Rodríguez', 4),
(48, 'Sandra', 'López García', 2),
(49, 'Diego', 'Rodríguez Martínez', 32),
(50, 'Laura', 'González López', 49);



INSERT INTO Teléfonos_Profesores (ID_Profesor, Teléfono) VALUES
(1, '555-123-4567'),
(2, '555-234-5678'),
(3, '555-345-6789'),
(4, '555-456-7890'),
(5, '555-567-8901'),
(6, '555-678-9012'),
(7, '555-789-0123'),
(8, '555-890-1234'),
(9, '555-901-2345'),
(10, '555-012-3456'),
(11, '555-123-4567'),
(12, '555-234-5678'),
(13, '555-345-6789'),
(14, '555-456-7890'),
(15, '555-567-8901'),
(16, '555-678-9012'),
(17, '555-789-0123'),
(18, '555-890-1234'),
(19, '555-901-2345'),
(20, '555-012-3456'),
(21, '555-123-4567'),
(22, '555-234-5678'),
(23, '555-345-6789'),
(24, '555-456-7890'),
(25, '555-567-8901'),
(26, '555-678-9012'),
(27, '555-789-0123'),
(28, '555-890-1234'),
(29, '555-901-2345'),
(30, '555-012-3456'),
(31, '555-123-4567'),
(32, '555-234-5678'),
(33, '555-345-6789'),
(34, '555-456-7890'),
(35, '555-567-8901'),
(36, '555-678-9012'),
(37, '555-789-0123'),
(38, '555-890-1234'),
(39, '555-901-2345'),
(40, '555-012-3456'),
(41, '555-123-4567'),
(42, '555-234-5678'),
(43, '555-345-6789'),
(44, '555-456-7890'),
(45, '555-567-8901'),
(46, '555-678-9012'),
(47, '555-789-0123'),
(48, '555-890-1234'),
(49, '555-901-2345'),
(50, '555-012-3456');


INSERT INTO Materias (ID_Materia, Nombre_Materia, Descripcion) VALUES
(1, 'Matemáticas', 'Curso básico de matemáticas que cubre álgebra, geometría, cálculo y estadísticas.'),
(2, 'Lengua Española', 'Estudio de la gramática, ortografía, literatura y composición en español.'),
(3, 'Ciencias Naturales', 'Exploración de la biología, química, física y geología.'),
(4, 'Historia Mundial', 'Estudio de eventos y desarrollos significativos en la historia mundial.'),
(5, 'Geografía Humana', 'Análisis de la distribución y características de la población humana en el mundo.'),
(6, 'Educación Física', 'Práctica de deportes y actividades físicas para promover la salud y el bienestar.'),
(7, 'Inglés como Segundo Idioma', 'Aprendizaje del idioma inglés para no hablantes nativos.'),
(8, 'Arte y Música', 'Exploración de diversas formas de expresión artística y musical.'),
(9, 'Tecnología de la Información', 'Introducción a conceptos básicos de informática y habilidades digitales.'),
(10, 'Economía', 'Estudio de los principios económicos, teorías y sistemas económicos.'),
(11, 'Psicología', 'Introducción a los conceptos básicos de la psicología humana y el comportamiento.'),
(12, 'Sociología', 'Estudio de la sociedad humana, sus estructuras y dinámicas.'),
(13, 'Filosofía', 'Exploración de las ideas y pensamientos filosóficos a lo largo de la historia.'),
(14, 'Biología Celular', 'Estudio de las células y sus funciones biológicas básicas.'),
(15, 'Química Orgánica', 'Exploración de compuestos orgánicos, sus estructuras y reacciones.'),
(16, 'Física Moderna', 'Estudio de fenómenos físicos avanzados como la relatividad y la mecánica cuántica.'),
(17, 'Literatura Mundial', 'Exploración de obras literarias clásicas y contemporáneas de diversas culturas.'),
(18, 'Geometría Avanzada', 'Estudio de formas geométricas más complejas y teoremas avanzados.'),
(19, 'Programación de Computadoras', 'Introducción a la lógica de programación y desarrollo de software.'),
(20, 'Estadísticas Aplicadas', 'Aplicación de métodos estadísticos para analizar datos y tomar decisiones.'),
(21, 'Derecho Internacional', 'Estudio de leyes y regulaciones que rigen las relaciones entre países.'),
(22, 'Nutrición y Salud', 'Exploración de los principios básicos de una dieta saludable y su impacto en la salud.'),
(23, 'Lingüística', 'Estudio científico del lenguaje y su estructura.'),
(24, 'Arte Dramático', 'Exploración de técnicas de actuación y producción teatral.'),
(25, 'Astronomía', 'Estudio del universo, las estrellas, los planetas y otros objetos celestes.'),
(26, 'Antropología Cultural', 'Investigación de culturas humanas y sus prácticas sociales.'),
(27, 'Ecología', 'Estudio de las interacciones entre organismos y su entorno.'),
(28, 'Marketing', 'Introducción a los principios básicos del marketing y la gestión de marcas.'),
(29, 'Microeconomía', 'Análisis de la economía a nivel individual, incluyendo la oferta y la demanda.'),
(30, 'Macroeconomía', 'Estudio de la economía a nivel agregado, incluyendo el crecimiento económico y la inflación.'),
(31, 'Anatomía y Fisiología', 'Exploración de la estructura y función del cuerpo humano.'),
(32, 'Ingeniería Civil', 'Introducción a los principios básicos de la ingeniería civil y la construcción de infraestructuras.'),
(33, 'Fotografía', 'Exploración de técnicas fotográficas y composición visual.'),
(34, 'Biología Molecular', 'Estudio de los procesos biológicos a nivel molecular.'),
(35, 'Neurociencia', 'Investigación del sistema nervioso y el cerebro humano.'),
(36, 'Arte Contemporáneo', 'Exploración de movimientos artísticos y tendencias contemporáneas.'),
(37, 'Literatura Latinoamericana', 'Estudio de obras literarias de autores latinoamericanos.'),
(38, 'Geopolítica', 'Análisis de las relaciones internacionales y la distribución del poder global.'),
(39, 'Ciencias de la Computación', 'Estudio de los fundamentos teóricos y prácticos de la informática.'),
(40, 'Biología Marina', 'Exploración de la vida marina y los ecosistemas acuáticos.'),
(41, 'Medicina Alternativa', 'Introducción a diferentes enfoques terapéuticos no convencionales.'),
(42, 'Ingeniería Eléctrica', 'Estudio de la generación, transmisión y uso de la electricidad.'),
(43, 'Teatro Musical', 'Exploración de la actuación, canto y baile en producciones teatrales musicales.'),
(44, 'Paleontología', 'Estudio de los organismos prehistóricos y los procesos de fosilización.'),
(45, 'Filosofía Política', 'Análisis de las teorías políticas y la justificación del poder.'),
(46, 'Nanotecnología', 'Introducción a la manipulación de la materia a nivel molecular y atómico.'),
(47, 'Derechos Humanos', 'Estudio de los derechos inherentes a todos los seres humanos y su protección.'),
(48, 'Psicología del Desarrollo', 'Investigación de los procesos de desarrollo humano desde la infancia hasta la vejez.'),
(49, 'Sociología Urbana', 'Análisis de la estructura social y los problemas en entornos urbanos.'),
(50, 'Fotónica', 'Estudio de la generación, detección y manipulación de la luz.');



-- Insertar datos en la tabla Estudiantes
INSERT INTO Estudiantes (Id_Estudiante, Nombre, Apellidos, Fecha_de_nacimiento)
VALUES
(1, 'Juan', 'García López', '2005-03-12'),
(2, 'María', 'Martínez Rodríguez', '2004-07-25'),
(3, 'Carlos', 'Pérez Sánchez', '2006-01-18'),
(4, 'Laura', 'González Martínez', '2005-09-03'),
(5, 'Javier', 'Rodríguez López', '2004-11-30'),
(6, 'Ana', 'Fernández García', '2005-06-14'),
(7, 'David', 'Sánchez Pérez', '2006-02-09'),
(8, 'Marta', 'López Martínez', '2004-04-22'),
(9, 'Paula', 'Torres González', '2005-08-17'),
(10, 'Sergio', 'Ruiz Rodríguez', '2004-10-05'),
(11, 'Cristina', 'Díaz Martínez', '2005-12-28'),
(12, 'Diego', 'Navarro López', '2004-02-15'),
(13, 'Elena', 'García Martínez', '2006-06-20'),
(14, 'Francisco', 'Moreno Pérez', '2005-04-07'),
(15, 'Nuria', 'Martínez González', '2004-08-23'),
(16, 'Sara', 'Sánchez Rodríguez', '2006-03-16'),
(17, 'Alejandro', 'López Pérez', '2005-05-19'),
(18, 'Patricia', 'González López', '2004-09-11'),
(19, 'Laura', 'Martínez Ruiz', '2006-01-04'),
(20, 'Antonio', 'Rodríguez Martínez', '2005-07-27'),
(21, 'Cristina', 'Pérez García', '2004-11-10'),
(22, 'Miguel', 'López Sánchez', '2006-05-03'),
(23, 'Marina', 'González Pérez', '2005-03-28'),
(24, 'Raúl', 'Martínez López', '2004-12-21'),
(25, 'Beatriz', 'Sánchez Martínez', '2006-02-14'),
(26, 'Daniel', 'Ruiz González', '2005-06-08'),
(27, 'Clara', 'Rodríguez Pérez', '2004-08-01'),
(28, 'Sandra', 'García Fernández', '2006-09-24'),
(29, 'Víctor', 'Martínez Sánchez', '2005-01-11'),
(30, 'Elena', 'López González', '2004-04-04'),
(31, 'Jorge', 'Pérez Martínez', '2006-07-29'),
(32, 'Laura', 'Rodríguez Sánchez', '2005-09-12'),
(33, 'Diego', 'García Rodríguez', '2004-11-05'),
(34, 'María', 'Martínez Pérez', '2006-03-30'),
(35, 'Javier', 'Sánchez Ruiz', '2005-05-23'),
(36, 'Clara', 'González Martínez', '2004-07-16'),
(37, 'Alberto', 'Pérez López', '2006-02-09'),
(38, 'Sara', 'Ruiz Martínez', '2005-04-02'),
(39, 'Cristina', 'Martínez Sánchez', '2004-08-27'),
(40, 'Daniel', 'López Rodríguez', '2006-01-20'),
(41, 'Laura', 'Pérez Fernández', '2005-03-13'),
(42, 'Antonio', 'Sánchez Pérez', '2004-06-06'),
(43, 'Paula', 'Martínez García', '2006-10-01'),
(44, 'Miguel', 'Rodríguez Martínez', '2005-12-25'),
(45, 'Elena', 'López Sánchez', '2004-02-18'),
(46, 'Francisco', 'García López', '2006-06-14'),
(47, 'Nuria', 'Martínez Rodríguez', '2005-01-07'),
(48, 'Javier', 'Pérez González', '2004-04-30'),
(49, 'Sara', 'Sánchez Martínez', '2006-08-24'),
(50, 'Diego', 'Ruiz López', '2005-10-17');



-- Insertar datos en la tabla Direcciones_estudiantes
INSERT INTO Direcciones_estudiantes (ID_Estudiante, Provincia, Cantón, Distrito, Dirección_exacta)
VALUES
(1, 'San José', 'San José', 'Pavas', '100 metros este del BNCR'),
(2, 'Alajuela', 'Alajuela', 'Alajuela', '200 metros norte del parque'),
(3, 'Heredia', 'Heredia', 'Heredia', '300 metros oeste de la UNA'),
(4, 'Cartago', 'Cartago', 'Cartago', '400 metros sur de la plaza'),
(5, 'Guanacaste', 'Liberia', 'Liberia', '500 metros este del hospital'),
(6, 'Puntarenas', 'Puntarenas', 'Puntarenas', '600 metros norte de la playa'),
(7, 'Limón', 'Limón', 'Limón', '700 metros oeste del mercado'),
(8, 'San José', 'Desamparados', 'Desamparados', '800 metros sur del parque'),
(9, 'Alajuela', 'San Carlos', 'Ciudad Quesada', '900 metros este del supermercado'),
(10, 'Heredia', 'Belén', 'San Antonio', '1 km al oeste del colegio'),
(11, 'Cartago', 'Paraíso', 'Paraíso', '1.1 km al norte del hospital'),
(12, 'Guanacaste', 'Santa Cruz', 'Santa Cruz', '1.2 km al sur del parque'),
(13, 'Puntarenas', 'Quepos', 'Quepos', '1.3 km al este del aeropuerto'),
(14, 'Limón', 'Limón', 'Limón', '1.4 km al norte del terminal de buses'),
(15, 'San José', 'Escazú', 'Escazú', '1.5 km al oeste del centro comercial'),
(16, 'Alajuela', 'Grecia', 'Grecia', '1.6 km al sur del parque'),
(17, 'Heredia', 'San Pablo', 'San Pablo', '1.7 km al este de la iglesia'),
(18, 'Cartago', 'La Unión', 'Tres Ríos', '1.8 km al norte del colegio'),
(19, 'Guanacaste', 'Nicoya', 'Nicoya', '1.9 km al sur del hospital'),
(20, 'Puntarenas', 'Garabito', 'Jacó', '2 km al este de la playa'),
(21, 'Limón', 'Limón', 'Limón', '2.1 km al norte del supermercado'),
(22, 'San José', 'Desamparados', 'San Rafael', '2.2 km al oeste del parque'),
(23, 'Alajuela', 'San Ramón', 'San Ramón', '2.3 km al sur del hospital'),
(24, 'Heredia', 'Heredia', 'Mercedes', '2.4 km al este del colegio'),
(25, 'Cartago', 'Cartago', 'Tejar', '2.5 km al norte de la iglesia'),
(26, 'Guanacaste', 'Liberia', 'Liberia', '2.6 km al sur del parque'),
(27, 'Puntarenas', 'Puntarenas', 'Puntarenas', '2.7 km al este del hospital'),
(28, 'Limón', 'Limón', 'Limón', '2.8 km al norte del terminal de buses'),
(29, 'San José', 'San José', 'San José', '2.9 km al oeste del mercado'),
(30, 'Alajuela', 'Alajuela', 'Alajuela', '3 km al sur del parque'),
(31, 'San José', 'San José', 'San Sebastián', '100 metros norte del supermercado Los Pinos'),
(32, 'Heredia', 'Heredia', 'Heredia', '200 metros este de la Iglesia de Heredia'),
(33, 'Alajuela', 'Alajuela', 'Alajuela', 'Frente a la estación de bomberos de Alajuela'),
(34, 'Cartago', 'Cartago', 'Cartago', '50 metros oeste de la Escuela de Cartago'),
(35, 'Puntarenas', 'Puntarenas', 'Puntarenas', '150 metros sur del parque central de Puntarenas'),
(36, 'Limón', 'Limón', 'Limón', 'Diagonal a la terminal de buses de Limón'),
(37, 'Guanacaste', 'Liberia', 'Liberia', '300 metros norte del Hospital de Liberia'),
(38, 'San José', 'Desamparados', 'San Rafael Abajo', 'Frente a la plaza de deportes de San Rafael Abajo'),
(39, 'Heredia', 'Barva', 'Barva', '200 metros oeste del parque de Barva'),
(40, 'Alajuela', 'San Ramón', 'San Ramón', '100 metros sur del colegio de San Ramón'),
(41, 'Cartago', 'La Unión', 'Tres Ríos', '50 metros este del supermercado El Rey'),
(42, 'Puntarenas', 'Esparza', 'San Rafael', 'Frente a la estación de servicio de San Rafael'),
(43, 'Limón', 'Pococí', 'Guápiles', '200 metros oeste del Banco Nacional de Guápiles'),
(44, 'Guanacaste', 'Nicoya', 'Nicoya', '100 metros norte de la municipalidad de Nicoya'),
(45, 'San José', 'Curridabat', 'Curridabat', '300 metros este del centro comercial Momentum'),
(46, 'Heredia', 'Santo Domingo', 'Santo Domingo', '150 metros sur de la Universidad Nacional'),
(47, 'Alajuela', 'Grecia', 'Grecia', '50 metros oeste del parque de Grecia'),
(48, 'Cartago', 'Turrialba', 'Turrialba', 'Frente a la estación de servicio de Turrialba'),
(49, 'Puntarenas', 'Montes de Oro', 'Miramar', '200 metros norte del centro de Miramar'),
(50, 'Limón', 'Matina', 'Matina', '100 metros oeste del centro de Matina');



-- Insertar datos en la tabla Correo Electrónico_Estudiante
INSERT INTO Correo_Electrónico_Estudiante (ID_Estudiante, Correo_Electrónico)
VALUES
(1, 'juan.garcia2005@example.com'),
(2, 'maria.martinez2004@example.com'),
(3, 'carlos.perez2006@example.com'),
(4, 'laura.gonzalez2005@example.com'),
(5, 'javier.rodriguez2004@example.com'),
(6, 'ana.fernandez2005@example.com'),
(7, 'david.sanchez2006@example.com'),
(8, 'marta.lopez2004@example.com'),
(9, 'paula.torres2005@example.com'),
(10, 'sergio.ruiz2004@example.com'),
(11, 'cristina.diaz2005@example.com'),
(12, 'diego.navarro2004@example.com'),
(13, 'elena.garcia2006@example.com'),
(14, 'francisco.moreno2005@example.com'),
(15, 'nuria.martinez2004@example.com'),
(16, 'sara.sanchez2006@example.com'),
(17, 'alejandro.lopez2005@example.com'),
(18, 'patricia.gonzalez2004@example.com'),
(19, 'laura.martinez2006@example.com'),
(20, 'antonio.rodriguez2005@example.com'),
(21, 'cristina.perez2004@example.com'),
(22, 'miguel.lopez2006@example.com'),
(23, 'marina.gonzalez2005@example.com'),
(24, 'raul.martinez2004@example.com'),
(25, 'beatriz.sanchez2006@example.com'),
(26, 'daniel.ruiz2005@example.com'),
(27, 'clara.rodriguez2004@example.com'),
(28, 'sandra.garcia2006@example.com'),
(29, 'victor.martinez2005@example.com'),
(30, 'elena.lopez2004@example.com'),
(31, 'jorge.perez2006@example.com'),
(32, 'laura.rodriguez2005@example.com'),
(33, 'diego.garcia2004@example.com'),
(34, 'maria.martinez2006@example.com'),
(35, 'javier.sanchez2005@example.com'),
(36, 'clara.gonzalez2004@example.com'),
(37, 'alberto.perez2006@example.com'),
(38, 'sara.ruiz2005@example.com'),
(39, 'cristina.martinez2004@example.com'),
(40, 'daniel.lopez2006@example.com'),
(41, 'laura.perez2005@example.com'),
(42, 'antonio.sanchez2004@example.com'),
(43, 'paula.martinez2006@example.com'),
(44, 'miguel.rodriguez2005@example.com'),
(45, 'elena.lopez2004@example.com'),
(46, 'francisco.garcia2006@example.com'),
(47, 'nuria.martinez2005@example.com'),
(48, 'javier.perez2004@example.com'),
(49, 'sara.sanchez2006@example.com'),
(50, 'diego.ruiz2005@example.com');


-- Insertar datos en la tabla Horarios
INSERT INTO Horarios (ID_Profesor, ID_Materia, Día, Hora_inicio, Hora_final)
VALUES
(1, 1, 'Lunes', '08:00:00', '10:00:00'),
(2, 2, 'Martes', '09:00:00', '11:00:00'),
(3, 3, 'Miércoles', '10:00:00', '12:00:00'),
(4, 4, 'Jueves', '11:00:00', '13:00:00'),
(5, 5, 'Viernes', '12:00:00', '14:00:00'),
(6, 6, 'Lunes', '13:00:00', '15:00:00'),
(7, 7, 'Martes', '14:00:00', '16:00:00'),
(8, 8, 'Miércoles', '15:00:00', '17:00:00'),
(9, 9, 'Jueves', '16:00:00', '18:00:00'),
(10, 10, 'Viernes', '17:00:00', '19:00:00'),
(11, 11, 'Lunes', '08:30:00', '10:30:00'),
(12, 12, 'Martes', '09:30:00', '11:30:00'),
(13, 13, 'Miércoles', '10:30:00', '12:30:00'),
(14, 14, 'Jueves', '11:30:00', '13:30:00'),
(15, 15, 'Viernes', '12:30:00', '14:30:00'),
(16, 16, 'Lunes', '13:30:00', '15:30:00'),
(17, 17, 'Martes', '14:30:00', '16:30:00'),
(18, 18, 'Miércoles', '15:30:00', '17:30:00'),
(19, 19, 'Jueves', '16:30:00', '18:30:00'),
(20, 20, 'Viernes', '17:30:00', '19:30:00'),
(21, 21, 'Lunes', '08:45:00', '10:45:00'),
(22, 22, 'Martes', '09:45:00', '11:45:00'),
(23, 23, 'Miércoles', '10:45:00', '12:45:00'),
(24, 24, 'Jueves', '11:45:00', '13:45:00'),
(25, 25, 'Viernes', '12:45:00', '14:45:00'),
(26, 26, 'Lunes', '13:45:00', '15:45:00'),
(27, 27, 'Martes', '14:45:00', '16:45:00'),
(28, 28, 'Miércoles', '15:45:00', '17:45:00'),
(29, 29, 'Jueves', '16:45:00', '18:45:00'),
(30, 30, 'Viernes', '17:45:00', '19:45:00'),
(31, 31, 'Lunes', '09:00:00', '11:00:00'),
(32, 32, 'Martes', '10:00:00', '12:00:00'),
(33, 33, 'Miércoles', '11:00:00', '13:00:00'),
(34, 34, 'Jueves', '12:00:00', '14:00:00'),
(35, 35, 'Viernes', '13:00:00', '15:00:00'),
(36, 36, 'Lunes', '14:00:00', '16:00:00'),
(37, 37, 'Martes', '15:00:00', '17:00:00'),
(38, 38, 'Miércoles', '16:00:00', '18:00:00'),
(39, 39, 'Jueves', '17:00:00', '19:00:00'),
(40, 40, 'Viernes', '18:00:00', '20:00:00'),
(41, 41, 'Lunes', '09:15:00', '11:15:00'),
(42, 42, 'Martes', '10:15:00', '12:15:00'),
(43, 43, 'Miércoles', '11:15:00', '13:15:00'),
(44, 44, 'Jueves', '12:15:00', '14:15:00'),
(45, 45, 'Viernes', '13:15:00', '15:15:00'),
(46, 46, 'Lunes', '14:15:00', '16:15:00'),
(47, 47, 'Martes', '15:15:00', '17:15:00'),
(48, 48, 'Miércoles', '16:15:00', '18:15:00'),
(49, 49, 'Jueves', '17:15:00', '19:15:00'),
(50, 50, 'Viernes', '18:15:00', '20:15:00');


-- Insertar datos en la tabla Matrículas
INSERT INTO Matrículas (ID_Estudiante, ID_Materia)
VALUES
(1, 1),
(1, 5),
(2, 2),
(2, 6),
(3, 3),
(3, 7),
(4, 4),
(4, 8),
(5, 5),
(5, 9),
(6, 6),
(6, 10),
(7, 7),
(7, 11),
(8, 8),
(8, 12),
(9, 9),
(9, 13),
(10, 10),
(10, 14),
(11, 11),
(11, 15),
(12, 12),
(12, 16),
(13, 13),
(13, 17),
(14, 14),
(14, 18),
(15, 15),
(15, 19),
(16, 16),
(16, 20),
(17, 17),
(17, 21),
(18, 18),
(18, 22),
(19, 19),
(19, 23),
(20, 20),
(20, 24),
(21, 21),
(21, 25),
(22, 22),
(22, 26),
(23, 23),
(23, 27),
(24, 24),
(24, 28),
(25, 25),
(25, 29);


-- Insertar datos en la tabla Calificaciones
INSERT INTO Calificaciones (ID_Profesor, ID_Materia, ID_Estudiante, Nota)
VALUES
(1, 1, 1, 85),
(2, 2, 2, 86),
(3, 3, 3, 87),
(4, 4, 4, 88),
(5, 5, 5, 89),
(6, 6, 6, 90),
(7, 7, 7, 91),
(8, 8, 8, 92),
(9, 9, 9, 93),
(10, 10, 10, 94),
(11, 11, 11, 95),
(12, 12, 12, 96),
(13, 13, 13, 97),
(14, 14, 14, 98),
(15, 15, 15, 99),
(16, 16, 16, 100),
(17, 17, 17, 85),
(18, 18, 18, 86),
(19, 19, 19, 87),
(20, 20, 20, 88),
(21, 21, 21, 89),
(22, 22, 22, 90),
(23, 23, 23, 91),
(24, 24, 24, 92),
(25, 25, 25, 93),
(26, 26, 26, 94),
(27, 27, 27, 95),
(28, 28, 28, 96),
(29, 29, 29, 97),
(30, 30, 30, 98),
(31, 31, 31, 99),
(32, 32, 32, 100),
(33, 33, 33, 85),
(34, 34, 34, 86),
(35, 35, 35, 87),
(36, 36, 36, 88),
(37, 37, 37, 89),
(38, 38, 38, 90),
(39, 39, 39, 91),
(40, 40, 40, 92),
(41, 41, 41, 93),
(42, 42, 42, 94),
(43, 43, 43, 95),
(44, 44, 44, 96),
(45, 45, 45, 97),
(46, 46, 46, 98),
(47, 47, 47, 99),
(48, 48, 48, 100),
(49, 49, 49, 85),
(50, 50, 50, 86),
(51, 1, 1, 87),
(52, 2, 2, 88),
(53, 3, 3, 89),
(54, 4, 4, 90),
(55, 5, 5, 91),
(56, 6, 6, 92),
(57, 7, 7, 93),
(58, 8, 8, 94),
(59, 9, 9, 95),
(60, 10, 10, 96),
(61, 11, 11, 97),
(62, 12, 12, 98),
(63, 13, 13, 99),
(64, 14, 14, 100),
(65, 15, 15, 85),
(66, 16, 16, 86),
(67, 17, 17, 87),
(68, 18, 18, 88),
(69, 19, 19, 89),
(70, 20, 20, 90),
(71, 21, 21, 91),
(72, 22, 22, 92),
(73, 23, 23, 93),
(74, 24, 24, 94),
(75, 25, 25, 95),
(76, 26, 26, 96),
(77, 27, 27, 97),
(78, 28, 28, 98),
(79, 29, 29, 99),
(80, 30, 30, 100),
(81, 31, 31, 85),
(82, 32, 32, 86),
(83, 33, 33, 87),
(84, 34, 34, 88),
(85, 35, 35, 89),
(86, 36, 36, 90),
(87, 37, 37, 91),
(88, 38, 38, 92),
(89, 39, 39, 93),
(90, 40, 40, 94),
(91, 41, 41, 95),
(92, 42, 42, 96),
(93, 43, 43, 97),
(94, 44, 44, 98),
(95, 45, 45, 99),
(96, 46, 46, 100),
(97, 47, 47, 85),
(98, 48, 48, 86),
(99, 49, 49, 87),
(100, 50, 50, 88),
(101, 1, 1, 89),
(102, 2, 2, 90),
(103, 3, 3, 91),
(104, 4, 4, 92),
(105, 5, 5, 93),
(106, 6, 6, 94),
(107, 7, 7, 95),
(108, 8, 8, 96),
(109, 9, 9, 97),
(110, 10, 10, 98),
(111, 11, 11, 99),
(112, 12, 12, 100),
(113, 13, 13, 85),
(114, 14, 14, 86),
(115, 15, 15, 87),
(116, 16, 16, 88),
(117, 17, 17, 89),
(118, 18, 18, 90),
(119, 19, 19, 91),
(120, 20, 20, 92),
(121, 21, 21, 93),
(122, 22, 22, 94),
(123, 23, 23, 95),
(124, 24, 24, 96),
(125, 25, 25, 97),
(126, 26, 26, 98),
(127, 27, 27, 99);


-- Insertar datos en la tabla Asistencia
INSERT INTO Asistencia (ID_Estudiante, ID_Materia, Fecha, Estado)
VALUES
(1, 1, '2024-03-01', 'Presente'),
(2, 1, '2024-03-01', 'Ausente'),
(3, 1, '2024-03-01', 'Presente'),
(4, 1, '2024-03-01', 'Presente'),
(5, 1, '2024-03-01', 'Ausente'),
(6, 1, '2024-03-01', 'Presente'),
(7, 1, '2024-03-01', 'Ausente'),
(8, 1, '2024-03-01', 'Presente'),
(9, 1, '2024-03-01', 'Ausente'),
(10, 1, '2024-03-01', 'Presente'),
(11, 1, '2024-03-01', 'Ausente'),
(12, 1, '2024-03-01', 'Presente'),
(13, 1, '2024-03-01', 'Ausente'),
(14, 1, '2024-03-01', 'Presente'),
(15, 1, '2024-03-01', 'Ausente'),
(16, 1, '2024-03-01', 'Presente'),
(17, 1, '2024-03-01', 'Ausente'),
(18, 1, '2024-03-01', 'Presente'),
(19, 1, '2024-03-01', 'Ausente'),
(20, 1, '2024-03-01', 'Presente');

-- Insertar más datos en la tabla Asistencia
INSERT INTO Asistencia (ID_Estudiante, ID_Materia, Fecha, Estado)
VALUES
(21, 1, '2024-03-01', 'Ausente'),
(22, 1, '2024-03-01', 'Presente'),
(23, 1, '2024-03-01', 'Ausente'),
(24, 1, '2024-03-01', 'Presente'),
(25, 1, '2024-03-01', 'Presente'),
(26, 1, '2024-03-01', 'Ausente'),
(27, 1, '2024-03-01', 'Presente'),
(28, 1, '2024-03-01', 'Ausente'),
(29, 1, '2024-03-01', 'Presente'),
(30, 1, '2024-03-01', 'Ausente'),
(31, 1, '2024-03-01', 'Presente'),
(32, 1, '2024-03-01', 'Ausente'),
(33, 1, '2024-03-01', 'Presente'),
(34, 1, '2024-03-01', 'Ausente'),
(35, 1, '2024-03-01', 'Presente'),
(36, 1, '2024-03-01', 'Ausente'),
(37, 1, '2024-03-01', 'Presente'),
(38, 1, '2024-03-01', 'Presente'),
(39, 1, '2024-03-01', 'Ausente'),
(40, 1, '2024-03-01', 'Presente'),
(41, 1, '2024-03-01', 'Presente'),
(42, 1, '2024-03-01', 'Ausente'),
(43, 1, '2024-03-01', 'Presente'),
(44, 1, '2024-03-01', 'Ausente'),
(45, 1, '2024-03-01', 'Presente'),
(46, 1, '2024-03-01', 'Ausente'),
(47, 1, '2024-03-01', 'Presente'),
(48, 1, '2024-03-01', 'Presente'),
(49, 1, '2024-03-01', 'Ausente'),
(50, 1, '2024-03-01', 'Presente');


-- Insertar datos en la tabla Tablas de archivos
INSERT INTO Tablas_de_archivos (ID_Archivo, ID_Estudiante, Tipo_documento)
VALUES
(1, 1, 'Boletín'),
(2, 2, 'Certificado'),
(3, 3, 'Transcripción'),
(4, 4, 'Foto'),
(5, 5, 'Currículum'),
(6, 6, 'Ensayo'),
(7, 7, 'Carta de presentación'),
(8, 8, 'Resumen'),
(9, 9, 'Certificado'),
(10, 10, 'Boletín'),
(11, 11, 'Foto'),
(12, 12, 'Currículum'),
(13, 13, 'Ensayo'),
(14, 14, 'Transcripción'),
(15, 15, 'Carta de presentación'),
(16, 16, 'Boletín'),
(17, 17, 'Certificado'),
(18, 18, 'Foto'),
(19, 19, 'Currículum'),
(20, 20, 'Ensayo'),
(21, 21, 'Boletín'),
(22, 22, 'Certificado'),
(23, 23, 'Transcripción'),
(24, 24, 'Foto'),
(25, 25, 'Currículum'),
(26, 26, 'Ensayo'),
(27, 27, 'Carta de presentación'),
(28, 28, 'Resumen'),
(29, 29, 'Certificado'),
(30, 30, 'Boletín'),
(31, 31, 'Foto'),
(32, 32, 'Currículum'),
(33, 33, 'Ensayo'),
(34, 34, 'Transcripción'),
(35, 35, 'Carta de presentación'),
(36, 36, 'Boletín'),
(37, 37, 'Certificado'),
(38, 38, 'Foto'),
(39, 39, 'Currículum'),
(40, 40, 'Ensayo'),
(41, 41, 'Boletín'),
(42, 42, 'Certificado'),
(43, 43, 'Transcripción'),
(44, 44, 'Foto'),
(45, 45, 'Currículum'),
(46, 46, 'Ensayo'),
(47, 47, 'Carta de presentación'),
(48, 48, 'Resumen'),
(49, 49, 'Certificado'),
(50, 50, 'Boletín');


-- Insertar datos en la tabla Congelamientos
INSERT INTO Congelamientos (ID_Congelamiento, ID_Estudiante, Fecha_Congelamiento, ID_Materia)
VALUES
(1, 1, '2024-03-01', 1),
(2, 2, '2024-03-05', 2),
(3, 3, '2024-03-10', 3),
(4, 4, '2024-03-15', 4),
(5, 5, '2024-03-20', 5),
(6, 6, '2024-03-25', 6),
(7, 7, '2024-03-30', 7),
(8, 8, '2024-04-01', 8),
(9, 9, '2024-04-05', 9),
(10, 10, '2024-04-10', 10),
(11, 11, '2024-04-15', 11),
(12, 12, '2024-04-20', 12),
(13, 13, '2024-04-25', 13),
(14, 14, '2024-05-01', 14),
(15, 15, '2024-05-05', 15),
(16, 16, '2024-05-10', 16),
(17, 17, '2024-05-15', 17),
(18, 18, '2024-05-20', 18),
(19, 19, '2024-05-25', 19),
(20, 20, '2024-06-01', 20),
(21, 21, '2024-06-05', 1),
(22, 22, '2024-06-10', 2),
(23, 23, '2024-06-15', 3),
(24, 24, '2024-06-20', 4),
(25, 25, '2024-06-25', 5),
(26, 26, '2024-07-01', 6),
(27, 27, '2024-07-05', 7),
(28, 28, '2024-07-10', 8),
(29, 29, '2024-07-15', 9),
(30, 30, '2024-07-20', 10),
(31, 31, '2024-07-25', 11),
(32, 32, '2024-08-01', 12),
(33, 33, '2024-08-05', 13),
(34, 34, '2024-08-10', 14),
(35, 35, '2024-08-15', 15),
(36, 36, '2024-08-20', 16),
(37, 37, '2024-08-25', 17),
(38, 38, '2024-09-01', 18),
(39, 39, '2024-09-05', 19),
(40, 40, '2024-09-10', 20),
(41, 41, '2024-09-15', 1),
(42, 42, '2024-09-20', 2),
(43, 43, '2024-09-25', 3),
(44, 44, '2024-10-01', 4),
(45, 45, '2024-10-05', 5),
(46, 46, '2024-10-10', 6),
(47, 47, '2024-10-15', 7),
(48, 48, '2024-10-20', 8),
(49, 49, '2024-10-25', 9),
(50, 50, '2024-11-01', 10);

-- Insertar datos en la tabla Biblioteca
INSERT INTO Biblioteca (ID_Libro, Titulo, Autor, Anio_publicacion, Disponibilidad)
VALUES
(1, 'La sombra del viento', 'Carlos Ruiz Zafón', 2001, 'Disponible'),
(2, 'Cien años de soledad', 'Gabriel García Márquez', 1967, 'Disponible'),
(3, 'Harry Potter y la piedra filosofal', 'J.K. Rowling', 1997, 'Prestado'),
(4, 'El código Da Vinci', 'Dan Brown', 2003, 'Disponible'),
(5, 'El señor de los anillos: La comunidad del anillo', 'J.R.R. Tolkien', 1954, 'Disponible'),
(6, 'Orgullo y prejuicio', 'Jane Austen', 1813, 'Prestado'),
(7, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 1605, 'Disponible'),
(8, 'Crimen y castigo', 'Fyodor Dostoevsky', 1866, 'Disponible'),
(9, 'Fahrenheit 451', 'Ray Bradbury', 1953, 'Prestado'),
(10, 'El alquimista', 'Paulo Coelho', 1988, 'Disponible'),
(11, '1984', 'George Orwell', 1949, 'Disponible'),
(12, 'Matar a un ruiseñor', 'Harper Lee', 1960, 'Prestado'),
(13, 'El gran Gatsby', 'F. Scott Fitzgerald', 1925, 'Disponible'),
(14, 'Ulises', 'James Joyce', 1922, 'Disponible'),
(15, 'El señor de los anillos: Las dos torres', 'J.R.R. Tolkien', 1954, 'Disponible'),
(16, 'En busca del tiempo perdido', 'Marcel Proust', 1913, 'Disponible'),
(17, 'Guerra y paz', 'Leo Tolstoy', 1869, 'Prestado'),
(18, 'Moby Dick', 'Herman Melville', 1851, 'Disponible'),
(19, 'Anna Karenina', 'Leo Tolstoy', 1877, 'Disponible'),
(20, 'Crónica de una muerte anunciada', 'Gabriel García Márquez', 1981, 'Prestado'),
(21, 'La metamorfosis', 'Franz Kafka', 1915, 'Disponible'),
(22, 'El retrato de Dorian Gray', 'Oscar Wilde', 1890, 'Prestado'),
(23, 'Los miserables', 'Victor Hugo', 1862, 'Disponible'),
(24, 'Drácula', 'Bram Stoker', 1897, 'Disponible'),
(25, 'El principito', 'Antoine de Saint-Exupéry', 1943, 'Disponible'),
(26, 'El nombre de la rosa', 'Umberto Eco', 1980, 'Prestado'),
(27, 'La iliada', 'Homero', -800, 'Disponible'),
(28, 'La odisea', 'Homero', -800, 'Prestado'),
(29, 'Mujercitas', 'Louisa May Alcott', 1868, 'Disponible'),
(30, 'El viejo y el mar', 'Ernest Hemingway', 1952, 'Prestado'),
(31, 'Orgullo y prejuicio', 'Jane Austen', 1813, 'Disponible'),
(32, 'Romeo y Julieta', 'William Shakespeare', 1597, 'Disponible'),
(33, 'Los juegos del hambre', 'Suzanne Collins', 2008, 'Prestado'),
(34, 'El guardián entre el centeno', 'J.D. Salinger', 1951, 'Disponible'),
(35, 'Las uvas de la ira', 'John Steinbeck', 1939, 'Prestado'),
(36, 'La naranja mecánica', 'Anthony Burgess', 1962, 'Disponible'),
(37, 'La insoportable levedad del ser', 'Milan Kundera', 1984, 'Prestado'),
(38, 'La casa de los espíritus', 'Isabel Allende', 1982, 'Disponible'),
(39, 'El cazador de autógrafos', 'Carlos María Domínguez', 1994, 'Disponible'),
(40, 'Los hombres que no amaban a las mujeres', 'Stieg Larsson', 2005, 'Prestado'),
(41, 'La ladrona de libros', 'Markus Zusak', 2005, 'Disponible'),
(42, 'La catedral del mar', 'Ildefonso Falcones', 2006, 'Prestado'),
(43, 'El juego de Ender', 'Orson Scott Card', 1985, 'Disponible'),
(44, 'El amor en los tiempos del cólera', 'Gabriel García Márquez', 1985, 'Prestado'),
(45, 'El médico', 'Noah Gordon', 1986, 'Disponible'),
(46, 'La hoguera de las vanidades', 'Tom Wolfe', 1987, 'Prestado'),
(47, 'Un mundo feliz', 'Aldous Huxley', 1932, 'Disponible'),
(48, 'Cumbres borrascosas', 'Emily Brontë', 1847, 'Disponible'),
(49, 'Los pilares de la tierra', 'Ken Follett', 1989, 'Prestado'),
(50, 'El príncipe', 'Niccolò Machiavelli', 1532, 'Disponible');


-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (ID_Usuario, nombre, contraseña)
VALUES
(1, 'user1', 'password1'),
(2, 'user2', 'password2'),
(3, 'user3', 'password3'),
(4, 'user4', 'password4'),
(5, 'user5', 'password5'),
(6, 'user6', 'password6'),
(7, 'user7', 'password7'),
(8, 'user8', 'password8'),
(9, 'user9', 'password9'),
(10, 'user10', 'password10'),
(11, 'user11', 'password11'),
(12, 'user12', 'password12'),
(13, 'user13', 'password13'),
(14, 'user14', 'password14'),
(15, 'user15', 'password15'),
(16, 'user16', 'password16'),
(17, 'user17', 'password17'),
(18, 'user18', 'password18'),
(19, 'user19', 'password19'),
(20, 'user20', 'password20'),
(21, 'user21', 'password21'),
(22, 'user22', 'password22'),
(23, 'user23', 'password23'),
(24, 'user24', 'password24'),
(25, 'user25', 'password25'),
(26, 'user26', 'password26'),
(27, 'user27', 'password27'),
(28, 'user28', 'password28'),
(29, 'user29', 'password29'),
(30, 'user30', 'password30'),
(31, 'user31', 'password31'),
(32, 'user32', 'password32'),
(33, 'user33', 'password33'),
(34, 'user34', 'password34'),
(35, 'user35', 'password35'),
(36, 'user36', 'password36'),
(37, 'user37', 'password37'),
(38, 'user38', 'password38'),
(39, 'user39', 'password39'),
(40, 'user40', 'password40'),
(41, 'user41', 'password41'),
(42, 'user42', 'password42'),
(43, 'user43', 'password43'),
(44, 'user44', 'password44'),
(45, 'user45', 'password45'),
(46, 'user46', 'password46'),
(47, 'user47', 'password47'),
(48, 'user48', 'password48'),
(49, 'user49', 'password49'),
(50, 'user50', 'password50');


-- Insertar datos en la tabla Roles
INSERT INTO Roles (ID_Registro, ID_Usuario, Rol)
VALUES
(1, 1, 'Administrador'),
(2, 2, 'Estudiante'),
(3, 3, 'Bibliotecario'),
(4, 4, 'Profesor'),
(5, 5, 'Administrador'),
(6, 6, 'Estudiante'),
(7, 7, 'Bibliotecario'),
(8, 8, 'Profesor'),
(9, 9, 'Administrador'),
(10, 10, 'Estudiante'),
(11, 11, 'Administrador'),
(12, 12, 'Estudiante'),
(13, 13, 'Bibliotecario'),
(14, 14, 'Profesor'),
(15, 15, 'Administrador'),
(16, 16, 'Estudiante'),
(17, 17, 'Bibliotecario'),
(18, 18, 'Profesor'),
(19, 19, 'Administrador'),
(20, 20, 'Estudiante'),
(21, 21, 'Administrador'),
(22, 22, 'Estudiante'),
(23, 23, 'Bibliotecario'),
(24, 24, 'Profesor'),
(25, 25, 'Administrador'),
(26, 26, 'Estudiante'),
(27, 27, 'Bibliotecario'),
(28, 28, 'Profesor'),
(29, 29, 'Administrador'),
(30, 30, 'Estudiante'),
(31, 31, 'Administrador'),
(32, 32, 'Estudiante'),
(33, 33, 'Bibliotecario'),
(34, 34, 'Profesor'),
(35, 35, 'Administrador'),
(36, 36, 'Estudiante'),
(37, 37, 'Bibliotecario'),
(38, 38, 'Profesor'),
(39, 39, 'Administrador'),
(40, 40, 'Estudiante'),
(41, 41, 'Administrador'),
(42, 42, 'Estudiante'),
(43, 43, 'Bibliotecario'),
(44, 44, 'Profesor'),
(45, 45, 'Administrador'),
(46, 46, 'Estudiante'),
(47, 47, 'Bibliotecario'),
(48, 48, 'Profesor'),
(49, 49, 'Administrador'),
(50, 50, 'Estudiante');


-- Insertar datos en la tabla Permisos
INSERT INTO Permisos (ID_Permisos, ID_Rol, Descripción)
VALUES
(1, 1, 'Acceso completo'),
(2, 2, 'Acceso limitado'),
(3, 3, 'Acceso a la biblioteca'),
(4, 4, 'Acceso a calificaciones'),
(5, 5, 'Acceso completo'),
(6, 6, 'Acceso limitado'),
(7, 7, 'Acceso a la biblioteca'),
(8, 8, 'Acceso a calificaciones'),
(9, 9, 'Acceso completo'),
(10, 10, 'Acceso limitado'),
(11, 11, 'Acceso completo'),
(12, 12, 'Acceso limitado'),
(13, 13, 'Acceso a la biblioteca'),
(14, 14, 'Acceso a calificaciones'),
(15, 15, 'Acceso completo'),
(16, 16, 'Acceso limitado'),
(17, 17, 'Acceso a la biblioteca'),
(18, 18, 'Acceso a calificaciones'),
(19, 19, 'Acceso completo'),
(20, 20, 'Acceso limitado'),
(21, 21, 'Acceso completo'),
(22, 22, 'Acceso limitado'),
(23, 23, 'Acceso a la biblioteca'),
(24, 24, 'Acceso a calificaciones'),
(25, 25, 'Acceso completo'),
(26, 26, 'Acceso limitado'),
(27, 27, 'Acceso a la biblioteca'),
(28, 28, 'Acceso a calificaciones'),
(29, 29, 'Acceso completo'),
(30, 30, 'Acceso limitado'),
(31, 31, 'Acceso completo'),
(32, 32, 'Acceso limitado'),
(33, 33, 'Acceso a la biblioteca'),
(34, 34, 'Acceso a calificaciones'),
(35, 35, 'Acceso completo'),
(36, 36, 'Acceso limitado'),
(37, 37, 'Acceso a la biblioteca'),
(38, 38, 'Acceso a calificaciones'),
(39, 39, 'Acceso completo'),
(40, 40, 'Acceso limitado'),
(41, 41, 'Acceso completo'),
(42, 42, 'Acceso limitado'),
(43, 43, 'Acceso a la biblioteca'),
(44, 44, 'Acceso a calificaciones'),
(45, 45, 'Acceso completo'),
(46, 46, 'Acceso limitado'),
(47, 47, 'Acceso a la biblioteca'),
(48, 48, 'Acceso a calificaciones'),
(49, 49, 'Acceso completo'),
(50, 50, 'Acceso limitado');


-- Insertar datos en la tabla Aulas
INSERT INTO Aulas (ID_Aula, Número, Pavellón, Número_Edificio)
VALUES
(1, 'A101', '1', 1),
(2, 'B205', '2', 2),
(3, 'C309', '3', 3),
(4, 'A102', '1', 1),
(5, 'B206', '2', 2),
(6, 'C310', '3', 3),
(7, 'A103', '1', 1),
(8, 'B207', '2', 2),
(9, 'C311', '3', 3),
(10, 'A104', '1', 1),
(11, 'A105', '1', 1),
(12, 'B208', '2', 2),
(13, 'C312', '3', 3),
(14, 'A106', '1', 1),
(15, 'B209', '2', 2),
(16, 'C313', '3', 3),
(17, 'A107', '1', 1),
(18, 'B210', '2', 2),
(19, 'C314', '3', 3),
(20, 'A108', '1', 1),
(21, 'A109', '1', 1),
(22, 'B211', '2', 2),
(23, 'C315', '3', 3),
(24, 'A110', '1', 1),
(25, 'B212', '2', 2),
(26, 'C316', '3', 3),
(27, 'A111', '1', 1),
(28, 'B213', '2', 2),
(29, 'C317', '3', 3),
(30, 'A112', '1', 1),
(31, 'B214', '2', 2),
(32, 'C318', '3', 3),
(33, 'A113', '1', 1),
(34, 'B215', '2', 2),
(35, 'C319', '3', 3),
(36, 'A114', '1', 1),
(37, 'B216', '2', 2),
(38, 'C320', '3', 3),
(39, 'A115', '1', 1),
(40, 'B217', '2', 2),
(41, 'A116', '1', 1),
(42, 'B218', '2', 2),
(43, 'C321', '3', 3),
(44, 'A117', '1', 1),
(45, 'B219', '2', 2),
(46, 'C322', '3', 3),
(47, 'A118', '1', 1),
(48, 'B220', '2', 2),
(49, 'C323', '3', 3),
(50, 'A119', '1', 1);

-- Insertar datos en la tabla Cuatrimestre
INSERT INTO Cuatrimestre (ID_Cuatrimestre, Fecha_Inicio, Fecha_Finalización, Año)
VALUES
(1, '2024-10-01', '2024-05-20', 2024),
(2, '2024-06-01', '2024-10-10', 2024),
(3, '2025-01-15', '2025-05-25', 2025),
(4, '2025-06-05', '2025-10-15', 2025),
(5, '2026-01-20', '2026-06-01', 2026),
(6, '2026-06-15', '2026-10-25', 2026),
(7, '2024-11-01', '2025-04-20', 2024),
(8, '2024-07-01', '2024-11-10', 2024),
(9, '2025-02-15', '2025-06-25', 2025),
(10, '2025-07-05', '2025-11-15', 2025);

-- Insertar más datos en la tabla Cuatrimestre para un total de 50 registros
INSERT INTO Cuatrimestre (ID_Cuatrimestre, Fecha_Inicio, Fecha_Finalización, Año)
VALUES
(11, '2026-02-20', '2026-07-01', 2026),
(12, '2026-07-15', '2026-11-25', 2026),
(13, '2027-01-01', '2027-05-20', 2027),
(14, '2027-06-01', '2027-10-10', 2027),
(15, '2027-01-15', '2028-05-25', 2028),
(16, '2028-06-05', '2028-10-15', 2028),
(17, '2028-01-20', '2028-06-01', 2029),
(18, '2029-06-15', '2029-10-25', 2029),
(19, '2029-11-01', '2030-04-20', 2029),
(20, '2030-07-01', '2030-11-10', 2030),
(21, '2030-02-15', '2030-06-25', 2030),
(22, '2030-07-05', '2030-11-15', 2030),
(23, '2031-01-01', '2031-05-20', 2031),
(24, '2031-06-01', '2031-10-10', 2031),
(25, '2031-01-15', '2031-05-25', 2031),
(26, '2031-06-05', '2031-10-15', 2031),
(27, '2032-01-20', '2032-06-01', 2032),
(28, '2032-06-15', '2032-10-25', 2032),
(29, '2032-11-01', '2033-04-20', 2032),
(30, '2033-07-01', '2033-11-10', 2033),
(31, '2033-02-15', '2033-06-25', 2033),
(32, '2033-07-05', '2033-11-15', 2033),
(33, '2034-01-01', '2034-05-20', 2034),
(34, '2034-06-01', '2034-10-10', 2034),
(35, '2034-01-15', '2034-05-25', 2034),
(36, '2034-06-05', '2034-10-15', 2034),
(37, '2035-01-20', '2035-06-01', 2035),
(38, '2035-06-15', '2035-10-25', 2035),
(39, '2035-11-01', '2036-04-20', 2035),
(40, '2036-07-01', '2036-11-10', 2036),
(41, '2036-02-15', '2036-06-25', 2036),
(42, '2036-07-05', '2036-11-15', 2036),
(43, '2037-01-01', '2037-05-20', 2037),
(44, '2037-06-01', '2037-10-10', 2037),
(45, '2037-01-15', '2037-05-25', 2037),
(46, '2037-06-05', '2037-10-15', 2037),
(47, '2038-01-20', '2038-06-01', 2038),
(48, '2038-06-15', '2038-10-25', 2038),
(49, '2038-11-01', '2039-04-20', 2038),
(50, '2039-07-01', '2039-11-10', 2039);


--Procedimientos

--1. Procedimiento para Insertar una Nueva Materia

CREATE PROCEDURE sp_InsertarMateria
    @ID_Materia INT,
    @Nombre_Materia VARCHAR(100),
    @Descripcion TEXT
AS
BEGIN
    INSERT INTO Materias (ID_Materia, Nombre_Materia, Descripcion)
    VALUES (@ID_Materia, @Nombre_Materia, @Descripcion);
END;

--2. Procedimiento para Actualizar Datos de un Profesor

CREATE PROCEDURE sp_ActualizarProfesor
    @ID_Profesor INT,
    @Nombre VARCHAR(50),
    @Apellidos VARCHAR(50)
AS
BEGIN
    UPDATE Profesores
    SET Nombre = @Nombre, Apellidos = @Apellidos
    WHERE ID_Profesor = @ID_Profesor;
END;

--3. Procedimiento para Obtener la Lista de Aulas en un Edificio

CREATE PROCEDURE sp_ListarAulasPorEdificio
    @Número_Edificio INT
AS
BEGIN
    SELECT ID_Aula, Número, Pavellón
    FROM Aulas
    WHERE Número_Edificio = @Número_Edificio;
END;


--4. Procedimiento para Cambiar la Contraseña de un Usuario
CREATE PROCEDURE sp_CambiarContraseña
    @ID_Usuario INT,
    @NuevaContraseña VARCHAR(50)
AS
BEGIN
    UPDATE Usuarios
    SET contraseña = @NuevaContraseña
    WHERE ID_Usuario = @ID_Usuario;
END;

--5. Procedimiento para Asignar un Rol a un nuevo Usuario
CREATE PROCEDURE sp_AsignarRol
    @ID_Registro INT,
    @ID_Usuario INT,
    @Rol VARCHAR(50)
AS
BEGIN
    INSERT INTO Roles (ID_Registro, ID_Usuario, Rol)
    VALUES (@ID_Registro, @ID_Usuario, @Rol);
END;

--6. Procedimiento para Registrar un Nuevo Archivo
CREATE PROCEDURE sp_InsertarArchivo
    @ID_Archivo INT,
	@ID_Estudiante INT,
    @Tipo_documento VARCHAR(100)
AS
BEGIN
    INSERT INTO Tablas_de_archivos (ID_Archivo, ID_Estudiante, Tipo_documento)
    VALUES (@ID_Archivo, @ID_Estudiante, @Tipo_documento);
END;

--7. Procedimiento para Matricular a un Estudiante en una Materia
CREATE PROCEDURE sp_MatricularEstudiante
    @ID_Estudiante INT,
    @ID_Materia INT
AS
BEGIN
    INSERT INTO Matrículas (ID_Estudiante, ID_Materia)
    VALUES (@ID_Estudiante, @ID_Materia);
END;

--8. Procedimiento para Agregar un Horario para un Profesor
CREATE PROCEDURE sp_AgregarHorario
    @ID_Profesor INT,
    @ID_Materia INT,
    @Día VARCHAR(20),
    @Hora_inicio TIME,
    @Hora_final TIME
AS
BEGIN
    INSERT INTO Horarios (ID_Profesor, ID_Materia, Día, Hora_inicio, Hora_final)
    VALUES (@ID_Profesor, @ID_Materia, @Día, @Hora_inicio, @Hora_final);
END;

--9. Procedimiento para Registrar un Congelamiento de Materia
CREATE PROCEDURE sp_RegistrarCongelamiento
    @ID_Congelamiento INT,
	@ID_Estudiante INT,
    @Fecha_Congelamiento DATE,
    @ID_Materia INT
AS
BEGIN
    INSERT INTO Congelamientos (ID_Congelamiento, ID_Estudiante, Fecha_Congelamiento, ID_Materia)
    VALUES (@ID_Congelamiento, @ID_Estudiante, @Fecha_Congelamiento, @ID_Materia);
END;

--10. Procedimiento para Agregar una Dirección a un Estudiante
CREATE PROCEDURE sp_AgregarDirección
    @ID_Estudiante INT,
    @Provincia VARCHAR(50)
AS
BEGIN
    INSERT INTO Direcciones_estudiantes (ID_Estudiante, Provincia)
    VALUES (@ID_Estudiante, @Provincia);
END;
