﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Hotel.View
{
    /// <summary>
    /// Interaction logic for RoomView.xaml
    /// </summary>
    public partial class RoomView : UserControl
    {
        public RoomView()
        {
            InitializeComponent();
            List<Phong> phongList = new List<Phong>();
            phongList.Add(new Phong() { Name = "B101", Description = "Thường", Status = "Trống" });
            phongList.Add(new Phong() { Name = "B102", Description = "Vip", Status = "Đã đặt" });
            phongList.Add(new Phong() { Name = "B103", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B104", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B105", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B106", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B107", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B108", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B109", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B201", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B202", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B203", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B204", Description = "Thường", Status = "Tu Sửa" });
            phongList.Add(new Phong() { Name = "B205", Description = "Thường", Status = "Tu Sửa" });
            lvPhong.ItemsSource = phongList;
        }
        public class Phong
        {
            public string Name { get; set; }
            public string Description { get; set; }
            public string Status { get; set; }
        }
    }
}
