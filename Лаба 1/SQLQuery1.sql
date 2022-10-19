CREATE DATABASE NURMUKHAN
ON 
(NAME=Nurik,        
FILENAME="E:\База данных для лабы\mydb_root.mdf",
SIZE=5MB,
MAXSIZE=9MB,
FILEGROWTH=100KB)
LOG ON
(NAME="Logdata1",   
FILENAME="E:\База данных для лабы\log_data1.ldf",
SIZE=1MB,
MAXSIZE=10MB,
FILEGROWTH=100KB)
