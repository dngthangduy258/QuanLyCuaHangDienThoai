CREATE TABLE HoaDon (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IDUSER NVARCHAR(255) NOT NULL,
    SoDienThoai NVARCHAR(10) NOT NULL,
    NgayMua DATETIME NOT NULL,
    TongTien Decimal(10,2) NOT NULL
);

-- Tạo bảng 'Chi tiết hóa đơn'
CREATE TABLE ChiTietHoaDon (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdHoaDon INT FOREIGN KEY REFERENCES HoaDon(Id),
    IdDienThoai INT FOREIGN KEY REFERENCES DienThoai(Id),
    SoLuong INT NOT NULL,
    DonGia Decimal(10,2) NOT NULL
);