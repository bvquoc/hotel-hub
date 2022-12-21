﻿CREATE DATABASE QLYHOTEL

GO

USE QLYHOTEL

GO

CREATE TABLE NHANVIEN
(
	MANV INT IDENTITY (1,1),
	TAIKHOAN VARCHAR(100),
	MATKHAU VARCHAR(100),
	TENNV NVARCHAR(100),
	CCCD VARCHAR(20),
	LOAINV INT,
	SDT VARCHAR(20),
	NGSINH DATE,
	LUONG INT,
	SONGAYLV INT DEFAULT 0
)


GO

CREATE TABLE DICHVU
(
	MADV INT IDENTITY(1,1),
	TENDV NVARCHAR(100),
	DONGIA INT
)

GO

CREATE TABLE KHACH
(
	MAKH INT IDENTITY(1,1),
	CCCD VARCHAR(20),
	TENKH NVARCHAR(100),
	SDT VARCHAR(20),
	DCHI NVARCHAR (100),
	GIOITINH nvarchar(20),
)

GO

CREATE TABLE PHONG
(
	MAPHONG INT IDENTITY(1,1),
	TENPHONG VARCHAR(20),
	LOAIPHONG NVARCHAR(20),
	TRANGTHAI NVARCHAR(20),
	DONGIA INT
)
GO

CREATE TABLE CUNGCAP
(
	MACC INT IDENTITY(1,1),
	MANV INT,
	MADV INT,
	MADAT INT,
	SOLUONG INT,
	TONGTIEN INT
)

GO

CREATE TABLE DAT
(
	MADAT INT IDENTITY(1,1),
	MANV INT,
	MAKH INT,
	MAPHONG INT,
	SONG INT,
	NGAYDAT SMALLDATETIME,
	NGAYTRA SMALLDATETIME
)

GO
--ADD PRIMARY KEY
ALTER TABLE NHANVIEN ADD CONSTRAINT FK_NV PRIMARY KEY (MANV)
ALTER TABLE DICHVU ADD CONSTRAINT FK_DV PRIMARY KEY (MADV)
ALTER TABLE KHACH ADD CONSTRAINT FK_KH PRIMARY KEY (MAKH)
ALTER TABLE PHONG ADD CONSTRAINT FK_PH PRIMARY KEY (MAPHONG)
ALTER TABLE CUNGCAP ADD CONSTRAINT FK_CC PRIMARY KEY (MACC)
ALTER TABLE DAT ADD CONSTRAINT FK_DA PRIMARY KEY (MADAT)
--ADD FOREIGN KEY
ALTER TABLE CUNGCAP ADD CONSTRAINT CC_NV FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV)
ALTER TABLE CUNGCAP ADD CONSTRAINT CC_DV FOREIGN KEY(MADV) REFERENCES DICHVU(MADV)
ALTER TABLE CUNGCAP ADD CONSTRAINT CC_MD FOREIGN KEY(MADAT) REFERENCES DAT(MADAT)
ALTER TABLE DAT ADD CONSTRAINT DA_NV FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV)
ALTER TABLE DAT ADD CONSTRAINT DA_KH FOREIGN KEY(MAKH) REFERENCES KHACH(MAKH)
ALTER TABLE DAT ADD CONSTRAINT DA_PH FOREIGN KEY(MAPHONG) REFERENCES PHONG(MAPHONG)

Go

insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH, LUONG)
values ('nv1', 'a', N'Khôi ngu', '123123123', 1, '0123123321', '2003-10-21', 500000)
insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH, LUONG)
values ('nv2', 'a', N'Nguyễn Lê', '554455446', 2, '0125423321', '2004-11-21', 300000)
insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH, LUONG)
values ('nv3', 'a', N'Hò Thị Nở', '839472856', 2, '0593958341', '2002-9-30', 300000)
insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH, LUONG)
values ('nv4', 'a', N'Trương Văn Nghị', '045203331', 1, '058374851', '2003-5-1', 300000)
insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH, LUONG)
values ('nv5', 'a', N'Tống Thị Khôi', '573968374', 2, '047247584', '1999-7-13', 300000)
insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH, LUONG)
values ('nv6', 'a', N'A Di Phò Phò', '683756384', 2, '0368194728', '2002-1-2', 300000)
insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH, LUONG)
values ('nv7', 'a', N'Kiệt Di Lặc', '673849263', 2, '0374816235', '2000-10-10', 300000)
insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH, LUONG)
values ('nv8', 'a', N'Cù Lao', '582749374', 1, '0361726325', '2002-5-11', 500000)

insert into DICHVU(TENDV, DONGIA)
values (N'Mì tôm', 12000)
insert into DICHVU(TENDV, DONGIA)
values (N'Heo cháy tỏi', 50000)
insert into DICHVU(TENDV, DONGIA)
values (N'Thịt ba chỉ nướng', 90000)
insert into DICHVU(TENDV, DONGIA)
values (N'Tôm hùm', 2000000)
insert into DICHVU(TENDV, DONGIA)
values (N'Cua hoàng đế', 3400000)
insert into DICHVU(TENDV, DONGIA)
values (N'Gà hấp dừa', 300000)
insert into DICHVU(TENDV, DONGIA)
values (N'Tôm nhảy', 450000)
insert into DICHVU(TENDV, DONGIA)
values (N'Sasimi hoàng gia', 1500000)
insert into DICHVU(TENDV, DONGIA)
values (N'Gà địa ngục', 300000)
insert into DICHVU(TENDV, DONGIA)
values (N'Karaoke', 200000)
insert into DICHVU(TENDV, DONGIA)
values (N'Buffet', 349000)
insert into DICHVU(TENDV, DONGIA)
values (N'Massage', 519000)
insert into DICHVU(TENDV, DONGIA)
values (N'Thuê xe máy', 99000)
insert into DICHVU(TENDV, DONGIA)
values (N'Cà phê chồn', 550000)

insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P101', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P102', N'Thường', N'Tu sửa', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P103', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P104', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P105', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P106', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P107', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V101', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V102', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V103', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V104', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V105', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V106', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P201', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P202', N'Thường', N'Tu sửa', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P203', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P204', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P205', N'Thường', N'Tu sửa', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P206', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'P207', N'Thường', N'Trống', 300000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V201', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V202', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V203', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V204', N'Vip', N'Tu sửa', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V205', N'Vip', N'Trống', 750000)
insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI, DONGIA)
values (N'V206', N'Vip', N'Trống', 750000)

insert into KHACH(CCCD, TENKH, SDT, DCHI, GIOITINH)
values ('045203543', N'Ông Vương', 0538184294, N'12 Lê Văn Tám, Q9, HCM', N'Nam')
insert into KHACH(CCCD, TENKH, SDT, DCHI, GIOITINH)
values ('043758173', N'Trần Dữ', 0374916234, N'Lý Tự Trọng, Hà Nội', N'Nam')
insert into KHACH(CCCD, TENKH, SDT, DCHI, GIOITINH)
values ('492859384', N'Lê Thị Phương', 0538184294, N'Tokyo', N'Nữ')
insert into KHACH(CCCD, TENKH, SDT, DCHI, GIOITINH)
values ('482759273', N'Tạ Văn Vân', 0572846231, N'Hồng Kông', N'Nam')
insert into KHACH(CCCD, TENKH, SDT, DCHI, GIOITINH)
values ('582739475', N'Điêu Thuyền', 0394889751, N'Tam Quốc Chí', N'Nữ')


----ADD PROCEDURE
--Go
----Get all
--CREATE PROC GetNhanVien
--as
--select * from NHANVIEN

--Go

--create proc GetDichVu
--as
--select * from DICHVU

--Go

--create proc GetPhong
--as
--select * from PHONG

--Go

--create proc GetKhach
--as
--select * from KHACH

--Go

--create proc GetCungCap
--as
--select * from CUNGCAP

--Go

--create proc GetDat
--as
--select * from DAT

--Go
----Update
--create proc UpdateNhanVien
--@MaNv int,
--@TaiKhoan varchar(100),
--@MatKhau varchar(100),
--@TenNv nvarchar(100),
--@CCCD varchar(100),
--@LoaiNv int,
--@SDT varchar(20),
--@Ngsinh date
--as
--Update NHANVIEN
--Set TAIKHOAN = @TaiKhoan, MATKHAU = @MatKhau, TENNV = @TenNv, CCCD = @CCCD, LOAINV = @LoaiNv, SDT = @SDT, NGSINH = @Ngsinh
--where MANV = @MaNv

--Go

--create proc UpdateDV
--@MaDv int,
--@TenDv nvarchar(100),
--@DonGia int
--as
--Update DICHVU
--Set TENDV = @TenDv,
--	DONGIA = @DonGia
--where MADV = @MaDv

--Go

--create proc UpdateKhach
--@MaKh int,
--@CCCD varchar(20),
--@TenKH nvarchar(100),
--@SDT varchar(20),
--@DChi nvarchar(100),
--@GioiTinh nvarchar(20)
--as
--Update KHACH
--Set CCCD = @CCCD,
--	TENKH = @TenKH,
--	SDT = @SDT,
--	DCHI = @DChi,
--	GIOITINH = @GioiTinh
--where MAKH = @MaKh

--Go

--create proc UpdatePhong
--@MaPhong int,
--@TenPhong varchar(20),
--@LoaiPhong nvarchar(20),
--@TrangThai nvarchar(20)
--as
--Update PHONG
--Set TENPHONG = @TenPhong,
--	LOAIPHONG = @LoaiPhong,
--	TRANGTHAI = @TrangThai
--where MAPHONG = @MaPhong

--Go

----Delete
--create proc DeleteNv
--@MaNv int
--as
--Delete from NHANVIEN
--Where MANV = @MaNv

--Go

--create proc DeleteDv
--@MaDv int
--as
--Delete from DICHVU
--where MADV = @MaDv

--Go

--create proc DeleteKh
--@MaKH int
--as
--Delete from KHACH
--where MAKH = @MaKH

--Go

--create proc DeletePh
--@MaPhong int
--as
--Delete from PHONG
--where MAPHONG = @MaPhong

--Go

--create proc DeleteCC
--@Macc int
--as
--Delete from CUNGCAP
--where MACC = @Macc

--Go

--create proc DeleteDat
--@MaDat int
--as
--Delete from DAT
--where MADAT = @MaDat

--Go
----Insert
--create proc AddNv
--@TaiKhoan varchar(100),
--@MatKhau varchar(100),
--@TenNv nvarchar(100),
--@CCCD varchar(100),
--@LoaiNv int,
--@SDT varchar(20),
--@Ngsinh date
--as
--insert into NHANVIEN(TAIKHOAN, MATKHAU, TENNV, CCCD, LOAINV, SDT, NGSINH)
--values(@TaiKhoan, @MatKhau, @TenNv, @CCCD, @LoaiNv, @SDT, @Ngsinh)

--go

--create proc AddDv
--@TenDv nvarchar(100),
--@DonGia int
--as
--insert into DICHVU(TENDV, DONGIA)
--values (@TenDv, @DonGia)

--Go

--create proc AddKhach
--@CCCD varchar(20),
--@TenKH nvarchar(100),
--@SDT varchar(20),
--@DChi nvarchar(100),
--@GioiTinh nvarchar(20)
--as
--insert into KHACH(TENKH, SDT, DCHI, GIOITINH)
--values (@TenKH, @SDT, @DChi, @GioiTinh)

--Go

--create proc AddPhong
--@TenPhong varchar(20),
--@LoaiPhong nvarchar(20),
--@TrangThai nvarchar(20)
--as
--insert into PHONG(TENPHONG, LOAIPHONG, TRANGTHAI)
--values (@TenPhong, @LoaiPhong, @TrangThai)

--Go

--create proc AddCC
--@MaNv int,
--@MaDv int,
--@MaDat int,
--@SoLuong int,
--@TongTien int
--as
--insert into CUNGCAP(MANV, MADV, MADAT, SOLUONG, TONGTIEN)
--values (@MaNv, @MaDv, @MaDat, @SoLuong, @TongTien)

--Go

--create proc AddDat
--@MaNv int,
--@MaKH int,
--@MaPhong int,
--@Song int,
--@NgayDat smalldatetime,
--@NgayTra smalldatetime
--as
--insert into DAT(MANV, MAKH, MAPHONG, SONG, NGAYDAT, NGAYTRA)
--values (@MaNv, @MaKH, @MaPhong, @Song, @NgayDat, @NgayTra)

--Go
----Get Code
--Create proc GetNvCode
--@MaNv int
--as
--select * from NHANVIEN
--where MANV = @MaNv

--Go	

--Create Proc GetDvCode
--@MaDv int
--as
--select * from DICHVU
--where MADV = @MaDv

--Go

--Create Proc GetKhCode
--@MaKH int
--as
--select * from KHACH
--where MAKH = @MaKH

--Go

--create proc GetPhCode
--@MaPhong int
--as
--select * from PHONG
--where MAPHONG = @MaPhong

--Go

--create proc GetCCCode
--@MaCC int
--as
--select * from CUNGCAP
--where MACC = @MaCC

--Go

--Create proc GetDatCode
--@MaDat int
--as
--select * from DAT
--where MADAT = @MaDat
