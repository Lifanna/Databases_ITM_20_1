CREATE DATABASE NURMUKHAN
ON 
(NAME=Nurik,        
FILENAME="E:\���� ������ ��� ����\mydb_root.mdf",
SIZE=5MB,
MAXSIZE=9MB,
FILEGROWTH=100KB)
LOG ON
(NAME="Logdata1",   
FILENAME="E:\���� ������ ��� ����\log_data1.ldf",
SIZE=1MB,
MAXSIZE=10MB,
FILEGROWTH=100KB)
