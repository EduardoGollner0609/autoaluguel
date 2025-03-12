INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1992-04-05', 'Rua do Bosque, 35 - Campinas, SP', '22233344455', 'eduardo.moraes@email.com', 'Eduardo Moraes', '(19) 98765-4321');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1980-10-10', 'Rua dos Trabalhadores, 212 - Fortaleza, CE', '11223344556', 'camila.souza@email.com', 'Camila Souza', '(85) 98877-6655');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1991-07-17', 'Av. das Nações Unidas, 202 - São Paulo, SP', '33445566778', 'gabriel.oliveira@email.com', 'Gabriel Oliveira', '(11) 99655-8844');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1995-03-21', 'Rua dos Eucaliptos, 100 - Belo Horizonte, MG', '44556677889', 'luiza.silva@email.com', 'Luiza Silva', '(31) 99234-1234');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1988-11-11', 'Rua São Paulo, 540 - Curitiba, PR', '55667788990', 'roberto.lima@email.com', 'Roberto Lima', '(41) 99876-5432');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1994-05-30', 'Rua das Flores, 123 - Rio de Janeiro, RJ', '66778899001', 'fernanda.santos@email.com', 'Fernanda Santos', '(21) 98432-7878');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('2000-12-01', 'Av. Paulista, 3200 - São Paulo, SP', '77889900112', 'carlos.silveira@email.com', 'Carlos Silveira', '(11) 99543-1203');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1992-06-19', 'Rua do Sol, 150 - Salvador, BA', '88990011223', 'aline.souza@email.com', 'Aline Souza', '(71) 99321-6547');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1987-01-15', 'Rua da Liberdade, 21 - Recife, PE', '99001122334', 'joana.pereira@email.com', 'Joana Pereira', '(81) 99678-1123');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1999-08-25', 'Rua das Acácias, 215 - Porto Alegre, RS', '10111223345', 'ricardo.ferreira@email.com', 'Ricardo Ferreira', '(51) 98765-4321');
INSERT INTO tb_client (birthdate, address, cpf, email, name, phone) VALUES ('1993-04-30', 'Av. do Contorno, 2500 - Belo Horizonte, MG', '11223344557', 'juliana.morais@email.com', 'Juliana Morais', '(31) 99567-1234');

INSERT INTO tb_brand(name) VALUES ('Chevrolet');
INSERT INTO tb_brand(name) VALUES ('Ford');
INSERT INTO tb_brand(name) VALUES ('Fiat');
INSERT INTO tb_brand(name) VALUES ('Volkswagen');
INSERT INTO tb_brand(name) VALUES ('BYD');
INSERT INTO tb_brand(name) VALUES ('Audi');
INSERT INTO tb_brand(name) VALUES ('BMW');
INSERT INTO tb_brand(name) VALUES ('Honda');
INSERT INTO tb_brand(name) VALUES ('Hyundai');
INSERT INTO tb_brand(name) VALUES ('Jeep');
INSERT INTO tb_brand(name) VALUES ('Nissan');
INSERT INTO tb_brand(name) VALUES ('Peugeot');
INSERT INTO tb_brand(name) VALUES ('Renault');
INSERT INTO tb_brand(name) VALUES ('Toyota');
INSERT INTO tb_brand(name) VALUES ('Mercedes-Benz');
INSERT INTO tb_brand(name) VALUES ('Land Rover');
INSERT INTO tb_brand(name) VALUES ('Mitsubishi');
INSERT INTO tb_brand(name) VALUES ('Chery');
INSERT INTO tb_brand(name) VALUES ('Citroën');
INSERT INTO tb_brand(name) VALUES ('Ram');
INSERT INTO tb_brand(name) VALUES ('Volvo');
INSERT INTO tb_brand(name) VALUES ('Kia');
INSERT INTO tb_brand(name) VALUES ('Porsche');
INSERT INTO tb_brand(name) VALUES ('Ferrari');

INSERT INTO tb_model(name, brand_id) VALUES('Spin', 1);
INSERT INTO tb_model(name, brand_id) VALUES('Dolphin Mini', 5); 
INSERT INTO tb_model(name, brand_id) VALUES('Prisma', 1);
INSERT INTO tb_model(name, brand_id) VALUES('Seal', 5);
INSERT INTO tb_model(name, brand_id) VALUES('Zafira', 1); 
INSERT INTO tb_model(name, brand_id) VALUES('Mustang', 2);
INSERT INTO tb_model(name, brand_id) VALUES('Palio', 3);
INSERT INTO tb_model(name, brand_id) VALUES('Jetta', 4); 
INSERT INTO tb_model(name, brand_id) VALUES('Saveiro Cross', 4); 
INSERT INTO tb_model(name, brand_id) VALUES('Ranger', 2); 
INSERT INTO tb_model(name, brand_id) VALUES('A4', 6); 
INSERT INTO tb_model(name, brand_id) VALUES('X5', 7);
INSERT INTO tb_model(name, brand_id) VALUES('Palisade', 8); 
INSERT INTO tb_model(name, brand_id) VALUES('Renegade', 9); 
INSERT INTO tb_model(name, brand_id) VALUES('Fortuner', 10); 
INSERT INTO tb_model(name, brand_id) VALUES('E-Class', 11); 

INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2023, true, 350.00, 5000, 1, 'Preto', 'https://quatrorodas.abril.com.br/wp-content/uploads/2022/04/2023-Chevrolet-Spin-LTZ-01-e1650325327149.jpg?quality=70&strip=all&resize=420', 'SP1N7X22'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2022, true, 450.00, 12000, 2, 'Branco', 'https://canalve.com.br/wp-content/uploads/2024/05/BYD_Dolphin_Mini_review01_000-jpg.webp', 'D0LPHN8M0'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2023, true, 400.00, 8000, 3, 'Prata', 'https://image.interiorcarro.com.br/veiculos/32233-chevrolet-prisma-prata-monte-azul-paulista-sp-5e4aa1d0cd0a3.jpg', 'PR1SM4A1'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2022, true, 500.00, 6000, 4, 'Azul', 'https://images.autodaily.com.au/2022/12/BYD-Seal-2023-blue-10.jpg', 'S34L9E2L'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2021, true, 350.00, 15000, 5, 'Cinza', 'https://img-ik.cars.co.za/news-site-za/images/2022/03/Zafira-Life-L-47_880x500.jpg?tr=w-1200,h-800', 'Z4F1R4A1'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2023, true, 600.00, 2000, 6, 'Vermelho', 'https://tse1.mm.bing.net/th?id=OIP.s4MQOIr72KSDWIozUlLYmQHaE7&pid=Api&P=0&h=180', 'MUST9G00'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2020, true, 350.00, 18000, 7, 'Branco', 'https://tse3.mm.bing.net/th?id=OIP.9VdXkrtakms5_bNhsKXyZAHaHa&pid=Api&P=0&h=180', 'P4L10I4O'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2022, true, 400.00, 12000, 8, 'Azul', 'https://i.ytimg.com/vi/lcpe5E68nyw/maxresdefault.jpg', 'J3TTA9A5'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2023, true, 350.00, 5000, 9, 'Preto', 'https://img.clasf.com.br/2021/06/17/Volkswagen-Saveiro-CD-1-6-Cross-Preto-20182019-Curitiba-20210617042858.6131210015.jpg', 'SVX5C9X3');
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2021, true, 400.00, 15000, 10, 'Prata', 'https://img.clasf.com.br/2022/12/24/Ford-Ranger-Cab-Dupla-2-2-XLS-1819-Prata-20221224170542.9030490015.jpg', 'R4NG3R5F');
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2022, true, 500.00, 3000, 11, 'Preto', 'https://tse3.mm.bing.net/th?id=OIP.KFjstgiZ13-irDV6E_ifaQHaEK&pid=Api&P=0&h=180', 'A4A4B1S3'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2020, true, 550.00, 9000, 12, 'Branco', 'https://images.alphacoders.com/962/962171.jpg', 'X5B4M2W'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2021, true, 600.00, 8000, 13, 'Prata', 'https://autoimage.capitalone.com/cms/Auto/assets/images/1981-hero-2023-Hyundai-Palisade-Calligraphy-Silver-Front-Quarter.jpg', 'HYP4L8S1D'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2023, true, 550.00, 1500, 14, 'Vermelho', 'https://nowcarstorage.blob.core.windows.net/media/5493/2022-renegade-nowcar.jpg', 'R3N3G4D3'); 
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2021, true, 650.00, 4000, 15, 'Preto', 'https://usaditoscars.com/wp-content/uploads/2024/03/WhatsApp-Image-2024-03-07-at-12.20.37-PM.jpeg', 'T0Y0T4F5');
INSERT INTO tb_automobile (model_year, returned, value_per_day, km, model_id, color, img_url, plate) VALUES (2023, true, 700.00, 1000, 16, 'Branco', 'https://www.autotrader.com/wp-content/uploads/2022/12/2023-mercedes-amg-s63-e-performance-front.jpg', 'MBE4L5S3');


INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (350.00, 1, 1, '2024-01-15T10:00:00Z', '2024-01-20T16:00:00Z'); 
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (450.00, 2, 2, '2024-02-10T09:30:00Z', '2024-02-15T17:00:00Z'); 
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (400.00, 3, 3, '2024-03-12T12:00:00Z', '2024-03-18T18:30:00Z');
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (500.00, 4, 4, '2024-04-02T13:15:00Z', '2024-04-07T14:00:00Z'); 
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (350.00, 5, 5, '2024-05-05T11:00:00Z', '2024-05-10T17:45:00Z'); 
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (600.00, 6, 6, '2024-06-01T09:00:00Z', '2024-06-05T13:30:00Z');
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (350.00, 7, 7, '2024-07-10T10:00:00Z', '2024-07-15T15:00:00Z'); 
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (400.00, 8, 8, '2024-08-12T08:00:00Z', '2024-08-18T16:30:00Z'); 
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (350.00, 9, 9, '2024-09-15T14:00:00Z', '2024-09-20T17:00:00Z'); 
INSERT INTO tb_location (location_value, automobile_id, client_id, rental_date, return_date) VALUES (400.00, 10, 10, '2024-10-05T11:30:00Z', '2024-10-12T13:45:00Z'); 
