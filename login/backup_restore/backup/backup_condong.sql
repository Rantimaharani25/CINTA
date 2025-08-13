
/*---------------------------------------------------------------
  SQL DB BACKUP 06.08.2025 05:18 
  HOST: localhost
  DATABASE: condong
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `bayar`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `bayar`;
CREATE TABLE `bayar` (
  `id_bayar` varchar(20) NOT NULL,
  `id_user` int NOT NULL,
  `id_daftar` int NOT NULL,
  `id_biaya` varchar(50) DEFAULT NULL,
  `jumlah` int NOT NULL,
  `tgl_bayar` date NOT NULL,
  `keterangan` int DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL,
  `verifikasi` int NOT NULL DEFAULT '0',
  `hapus` int DEFAULT NULL,
  `jenis_bayar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_bayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `biaya`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `biaya`;
CREATE TABLE `biaya` (
  `id_biaya` varchar(50) NOT NULL,
  `nama_biaya` varchar(200) NOT NULL,
  `jumlah` int NOT NULL,
  `status` varchar(200) NOT NULL,
  `id_jurusan` int DEFAULT NULL,
  `jenis_biaya` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_biaya`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `biaya` VALUES   ('8888','Seragam','5000000','1','1','ppdb');
INSERT INTO `biaya` VALUES ('ATK','ATK','200000','1','0','ppdb');
INSERT INTO `biaya` VALUES ('B002','Uang Bangunan','1000000','1','1','ppdb');
INSERT INTO `biaya` VALUES ('BP','Buku Paket','1203000','1','0','ppdb');
INSERT INTO `biaya` VALUES ('FD2025','Biaya full day','500000','1','1','ppdb');
INSERT INTO `biaya` VALUES ('FDS','Uang gedung','1200000','1','0','ppdb');
INSERT INTO `biaya` VALUES ('PS','Pembangunan sarana','2100000','1','0','ppdb');
INSERT INTO `biaya` VALUES ('RE2025','Biaya Reguler','200000','1','2','ppdb');
INSERT INTO `biaya` VALUES ('SR','Sampul Rapot','100000','1','0','ppdb');
INSERT INTO `biaya` VALUES ('SRG','Seragam (Batik Biri, Baju Hijau)','600000','1','0','ppdb');

/*---------------------------------------------------------------
  TABLE: `daftar`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `daftar`;
CREATE TABLE `daftar` (
  `id_daftar` int NOT NULL AUTO_INCREMENT,
  `no_daftar` varchar(20) DEFAULT NULL,
  `nisn` varchar(30) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `tempat_lahir` varchar(128) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT '',
  `no_hp` varchar(16) DEFAULT NULL,
  `kk` text,
  `akta` varchar(256) DEFAULT NULL,
  `aktif` int DEFAULT '0',
  `status` int DEFAULT '0',
  `tgl_konfirmasi` date DEFAULT NULL,
  `konfirmasi` int DEFAULT NULL,
  `online` int DEFAULT '0',
  `password` text,
  `ktp_ortu` varchar(256) DEFAULT NULL,
  `kps_pkh` varchar(256) DEFAULT NULL,
  `ijazah` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_daftar`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=latin1;
INSERT INTO `daftar` VALUES   ('328','PPDB2025001','tesa','TESA DOANG','default.png','Tasikmalaya','2025-07-08','KLS6881ac915fc3f','1','8293329829','assets/upload/kk/kk328.jpg','assets/upload/akta/akta328.jpg','0','1','2025-07-25','0','1','tesa','assets/upload/ktp_ortu/ktp_ortu328.jpg','assets/upload/kps_pkh/kps_pkh328.jpg',NULL);
INSERT INTO `daftar` VALUES ('329','PPDB2025002','ranti','RANTI DOANG','default.png','Tasikmalaya','2025-07-16','KLS6881ac915fc3f','2','83923992','assets/upload/kk/kk329.jpg','assets/upload/akta/akta329.jpg','0','1','2025-08-06','1','1','ranti','assets/upload/ktp_ortu/ktp_ortu329.jpg','assets/upload/kps_pkh/kps_pkh329.jpg',NULL);
INSERT INTO `daftar` VALUES ('330','PPDB2025003','Ranti123','RANTI MAHARANI','default.png','Tasikmalaya','2025-07-15','','2','892392833','assets/upload/kk/kk330.png','assets/upload/akta/akta330.png','0','2','2025-07-24',NULL,'1','ferla','assets/upload/ktp_ortu/ktp_ortu330.png','assets/upload/kps_pkh/kps_pkh330.png','assets/upload/ijazah/ijazah330.png');
INSERT INTO `daftar` VALUES ('332','PPDB2025005','12345','DIANG','default.png','Tasikmalaya','2025-07-16','','1','8273293923','assets/upload/kk/kk332.jpg','assets/upload/akta/akta332.jpg','0','1','2025-07-26','1','1','12345','assets/upload/ktp_ortu/ktp_ortu332.jpg','assets/upload/kps_pkh/kps_pkh332.jpg','assets/upload/ijazah/ijazah332.png');
INSERT INTO `daftar` VALUES ('333','PPDB2025006','anu','ANU DOANG','default.png','Tasikmalaya','2025-07-18','','2','89238923','assets/upload/kk/kk333.jpg','assets/upload/akta/akta333.jpg','0','0','2025-07-25','0','1','anu','assets/upload/ktp_ortu/ktp_ortu333.jpg',NULL,NULL);
INSERT INTO `daftar` VALUES ('335','PPDB2025007','anuuuuuuuu','Anuuuuuuuu','default.png',NULL,NULL,NULL,'2','829293923',NULL,NULL,'0','0',NULL,NULL,'1','anuuuuuuuu',NULL,NULL,NULL);
INSERT INTO `daftar` VALUES ('336','PPDB2025008','dadang','Dadang Surandang','default.png',NULL,NULL,NULL,'1','98292929','assets/upload/kk/kk336.jpg','assets/upload/akta/akta336.jpg','0','0',NULL,NULL,'1','dadang','assets/upload/ktp_ortu/ktp_ortu336.jpg','assets/upload/kps_pkh/kps_pkh336.jpg','assets/upload/ijazah/ijazah336.jpg');
INSERT INTO `daftar` VALUES ('337','PPDB2025009','tiuw123','RANTI MAHARANI','default.png','Tasikmalaya','2025-07-27','KLS6881ac915fc3f','2','67667676767','assets/upload/kk/kk337.png','assets/upload/akta/akta337.png','0','1','2025-07-27','1','1','tiuw123','assets/upload/ktp_ortu/ktp_ortu337.png',NULL,'assets/upload/ijazah/ijazah337.png');
INSERT INTO `daftar` VALUES ('338','PPDB2025010','marsha','MARSHA','default.png','Bogor','2025-07-27','KLS6881ac915fc3f','2','67656578','assets/upload/kk/kk338.png','assets/upload/akta/akta338.png','0','1','2025-07-27','1','1','marsha','assets/upload/ktp_ortu/ktp_ortu338.png','assets/upload/kps_pkh/kps_pkh338.png',NULL);
INSERT INTO `daftar` VALUES ('339','PPDB2025011','atiw123','RANTI MAHARANI','default.png','Tasikmalaya','2025-07-27','KLS6881aca69690d','2','767676767','assets/upload/kk/kk339.png','assets/upload/akta/akta339.png','0','1','2025-07-27','1','1','atiw123','assets/upload/ktp_ortu/ktp_ortu339.png',NULL,NULL);
INSERT INTO `daftar` VALUES ('340','PPDB2025012','mita','MITHA AYU','default.png','jkjk','2025-07-27',NULL,'2','76767557','assets/upload/kk/kk340.jpg','assets/upload/akta/akta340.png','0','2',NULL,NULL,'1','mita','assets/upload/ktp_ortu/ktp_ortu340.png',NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `formulir`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `formulir`;
CREATE TABLE `formulir` (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_pendaftaran` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_daftar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomor_induk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_kelamin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `anak_ke` int DEFAULT NULL,
  `jumlah_saudara` int DEFAULT NULL,
  `status_keluarga` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_rumah` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `alamat_sekarang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `kelas_diterima` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_diterima` date DEFAULT NULL,
  `sekolah_asal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_sekolah_asal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `sttb_tahun` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sttb_nomor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_ayah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_ibu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama_ortu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_ortu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `pekerjaan_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pekerjaan_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pendidikan_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pendidikan_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penghasilan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_wali` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_wali` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `pendidikan_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pekerjaan_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun_ajaran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
INSERT INTO `formulir` VALUES   ('38','PSB-1','332','2','Diang doang','128372838232','Laki-laki','Tasikmalaya','2025-07-16','3','1','Anak','Cineam','Cineam',NULL,NULL,'TK PGRI','Cineam','2006','92392323','Dedi kusnandar','Mizuhara','Islam','Cineam','Wiraswasta/Pedagang','Wiraswasta/Pedagang','S1 (Sarjana)','S1 (Sarjana)','Lebih dari Rp.5.000.001','Mizuhara','Islam','Cineam','S1 (Sarjana)','Wiraswasta/Pedagang','2025/2026');
INSERT INTO `formulir` VALUES ('39','PSB-2','328','1','Tesa Doang','12823823383','Perempuan','Tasikmalaya','2025-07-08','3','1','Anak','Condong','Condong',NULL,NULL,'TK PGRI','Condong','2006','92392323','anu kusnandar','anu ibu','Islam','Condong','TNI/POLRI','Lainnya','SMA/MA/SMK/Paket C','SMA/MA/SMK/Paket C','Lebih dari Rp.5.000.001','anu ibu','Islam','Condong','SMA/MA/SMK/Paket C','Lainnya','2025/2026');
INSERT INTO `formulir` VALUES ('40','PSB-3','329','2','Ranti Maharani','28328382738728','Perempuan','Tasikmalaya','2025-07-16','1','2','Anak','Gn tanjung','Gn tanjung',NULL,NULL,'TK PGRI','Manonjaya','2006','92392323','Dedi kusnandar','anu doang','Islam','Gn tanjung','Pegawai Swasta','Lainnya','SMA/MA/SMK/Paket C','SMA/MA/SMK/Paket C','Lebih dari Rp.5.000.001','Dedi kusnandar','Islam','Gn tanjung','SMA/MA/SMK/Paket C','Pegawai Swasta','2025/2026');
INSERT INTO `formulir` VALUES ('41','PSB-4','330','2','Ferla Doang','72737238283','Perempuan','Tasikmalaya','2025-07-15','2','2','Anak','Cineam','Cineam',NULL,NULL,'TK PGRI','Manonjaya','2024','5688765567','Jojon susanto','Ratni Sudarmini','Islam','Cineam','Petani/Peternak','Petani/Peternak','SMA/MA/SMK/Paket C','SMA/MA/SMK/Paket C','Lebih dari Rp.5.000.001','Ratni Sudarmini','Islam','Cineam','SMA/MA/SMK/Paket C','Petani/Peternak','2025/2026');
INSERT INTO `formulir` VALUES ('42','PSB-5','333','2','anu doang','1289182982','Laki-laki','Tasikmalaya','2025-07-18','2','1','Anak','Gn tanjung','Gn tanjung',NULL,NULL,'TK PGRI','Manonjaya','','','Dedi kusnandar','Ratni Sudarmini','Islam','Gn tanjung','Wiraswasta/Pedagang','Pegawai Swasta','S2 (Magister)','S1 (Sarjana)','Lebih dari Rp.5.000.001','Ratni Sudarmini','Islam','Gn tanjung','S1 (Sarjana)','Pegawai Swasta','2025/2026');
INSERT INTO `formulir` VALUES ('43','PSB-6','336','1','Dadang Surandang','2982912989129','Laki-laki','Tasikmalaya','2025-02-05','3','2','Anak','Cineam','Cineam',NULL,NULL,'Fuji Yochien','Jepang','2033','8373828832','Jojon susanto','Mizuhara','Islam','Cineam','Politikus','Lainnya','S2 (Magister)','S1 (Sarjana)','Lebih dari Rp.5.000.001','Mizuhara','Islam','Cineam','S1 (Sarjana)','Lainnya','2025/2026');
INSERT INTO `formulir` VALUES ('44','PSB-7','337','2','Ranti Maharani','656565678','Perempuan','Tasikmalaya','2025-07-27','2','3','Kandung','Gunta','Gunta',NULL,NULL,'TK Islamiyyah','Gunta','','','Asep','Lilis','Kandung','Gunta','Guru/Dosen','Politikus','S2 (Magister)','S1 (Sarjana)','Lebih dari Rp.5.000.001','Asep','Kandung','Gunta','S2 (Magister)','Guru/Dosen','2025/2026');
INSERT INTO `formulir` VALUES ('45','PSB-8','338','2','Marsha','6363546474','Perempuan','Bogor','2025-07-27','1','2','Kandung','gunta','gunta',NULL,NULL,'TK Alam','Gunta','','','kk','kk','islam','gunta','Dokter','Pegawai Swasta','SMP/MTs/Paket B','SMA/MA/SMK/Paket C','Lebih dari Rp.5.000.001','kk','islam','gunta','SMP/MTs/Paket B','Dokter','2025/2026');
INSERT INTO `formulir` VALUES ('46','PSB-9','339','2','Ranti Maharani','5656564657','Perempuan','Tasikmalaya','2025-07-27','1','3','Kandung','Gunta','Gunta',NULL,NULL,'TK RA','Gunta','','','Agus','Imas','Islam','Gunta','Guru/Dosen','Dokter','Diploma III/IV','Diploma I/II','Lebih dari Rp.5.000.001','Agus','Islam','Gunta','Diploma III/IV','Guru/Dosen','2025/2026');
INSERT INTO `formulir` VALUES ('47','PSB-10','340','2','...','676767','Perempuan','jkjk','2025-07-27','2','4','kkk','nnn','nnn',NULL,NULL,'mmm','kkk',',,,,','....','jj','kk','kk','kk','TNI/POLRI','Guru/Dosen','SMA/MA/SMK/Paket C','Diploma I/II','Rp.3.000.001 s/d Rp.5.000.000','jj','kk','kk','SMA/MA/SMK/Paket C','TNI/POLRI','2025/2026');

/*---------------------------------------------------------------
  TABLE: `guru`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_guru` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pendidikan_terakhir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
INSERT INTO `guru` VALUES   ('1','Bu Siti mutia','S1 PGSDd','siti.png','1');
INSERT INTO `guru` VALUES ('10','Risa','D3','foto_68327bdc035f6.jpg','1');
INSERT INTO `guru` VALUES ('11','Bu Tesa','D3','foto_68327cae30fcf.jpg','1');
INSERT INTO `guru` VALUES ('12','Bu aneng','S1 PGSD','foto_6832da9280d3d.png','1');
INSERT INTO `guru` VALUES ('15','Pak Joni','S! PGSD','foto_6882dd92ebcc6.jpg','1');
INSERT INTO `guru` VALUES ('16','Amelia Azzahraaa','S1 - Pendidikan Guru Sekolah Dasar','foto_6885cdad9c552.jpg','1');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `id_jurusan` int NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `kuota` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `jumlah_pendaftar` int DEFAULT '0',
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
INSERT INTO `jurusan` VALUES   ('1','FULL DAY SCHOOL','25','1','0');
INSERT INTO `jurusan` VALUES ('2','REGULER','25','1','0');

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(50) NOT NULL,
  `nama_kelas` varchar(100) DEFAULT NULL,
  `kuota` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `jurusan_id` int DEFAULT NULL,
  `walikelas_id` int DEFAULT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('KLS6881823758d70','Kelas 1A','25','1','2','11','2024/2025');
INSERT INTO `kelas` VALUES ('KLS6881824a77c23','Kelas 1B','25','1','1','12','2024/2025');
INSERT INTO `kelas` VALUES ('KLS6881ac915fc3f','Kelas 1A','25','1','2','12','2025/2026');
INSERT INTO `kelas` VALUES ('KLS6881aca69690d','Kelas 1B','25','1','1','1','2025/2026');

/*---------------------------------------------------------------
  TABLE: `kontak`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kontak`;
CREATE TABLE `kontak` (
  `id_kontak` int NOT NULL AUTO_INCREMENT,
  `nama_kontak` varchar(50) DEFAULT NULL,
  `no_kontak` varchar(50) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
INSERT INTO `kontak` VALUES   ('1','CS 1','089999999999','1');
INSERT INTO `kontak` VALUES ('2','CS 2','082222222','1');
INSERT INTO `kontak` VALUES ('5','CS 3','66767675757','1');

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `pengumuman` text,
  `tgl` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jenis` int DEFAULT '0',
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('2','5','Info Aplikasi','<p style=\"color: rgb(108, 117, 125);\"><span style=\"font-weight: bolder;\">Gelombang Pertama</span>&nbsp;Tanggal 1 Desember 2023 Sampai 30 Mei 2023&nbsp;<span style=\"font-weight: bolder;\">Gelombang Kedua&nbsp;</span>Tanggal 1 Juni Sampai Tanggal 30 Juni 2023</p><p style=\"color: rgb(108, 117, 125);\">Note: Pendaftaran Gelombang Pertama Gratis Biaya Pendaftaran dan Biaya Daftar Ulang</p><p style=\"color: rgb(108, 117, 125);\"><br></p>','2023-05-24 05:58:08','1');
INSERT INTO `pengumuman` VALUES ('3','5','Info PPDB Online 2023','<p><b>Gelombang Pertama</b>Ã‚Â Tanggal 1 Desember 2023 Sampai 30 Mei 2023Ã‚Â <b>Gelombang Kedua </b>Tanggal 1 Juni Sampai Tanggal 30 Juni 2023</p><p>Note: Pendaftaran Gelombang Pertama Gratis Biaya Pendaftaran dan Biaya Daftar Ulang</p>','2023-05-21 06:30:10','2');
INSERT INTO `pengumuman` VALUES ('6','5','Lorem','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate officiis autem facere fugiat pariatur magnam facilis quidem accusamus, enim rem sit, ducimus dolorum adipisci eius fuga impedit ex voluptatum hic iusto temporibus praesentium quo! Necessitatibus mollitia, tenetur nemo modi, incidunt nisi accusamus neque quasi officiis reprehenderit quos, consectetur sint dicta.','2025-05-25 06:18:27','0');
INSERT INTO `pengumuman` VALUES ('7','5','Info segera bayar','<p>sdksdkskds kdks</p>','2025-05-25 15:52:48','1');
INSERT INTO `pengumuman` VALUES ('8','5','INFO SEGERA BAYAR','<p>jhjhjhjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>','2025-07-27 21:06:25','0');

/*---------------------------------------------------------------
  TABLE: `sekolah`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sekolah`;
CREATE TABLE `sekolah` (
  `npsn` varchar(16) NOT NULL,
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`npsn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sekolah` VALUES   ('20402445','Mi Condong','Komplek Pst.Condong, Setianagara, Cibeureum, Kota ','1');

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `jenjang` int NOT NULL,
  `nsm` varchar(30) NOT NULL,
  `npsn` varchar(30) DEFAULT NULL,
  `status` text NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `klikchat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `livechat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `nolivechat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `infobayar` text,
  `syarat` text,
  `kab` text NOT NULL,
  `kec` text NOT NULL,
  `web` text NOT NULL,
  `kepala` text NOT NULL,
  `nip` text NOT NULL,
  `ppdb` text,
  `kop` varchar(50) NOT NULL,
  `logo_ppdb` varchar(100) NOT NULL,
  `tgl_pengumuman` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','MI CONDONG','0','-','20402448','Swasta','Komplek Pst. Condong, Setianagara, Cibeureum','Tasikmalaya','Jawa Barat','assets/img/logo/logo518.png',NULL,'micondong@gmail.com','-','Assalamu’alaikum, saya ingin menanyakan informasi seputar pendaftaran PPDB di MI CONDONG. Mohon informasinya, terima kasih. ','Assalamu’alaikum, saya ingin menanyakan informasi seputar pendaftaran PPDB di MI CONDONG. Mohon informasinya, terima kasih.','087828116091','<h5><b>Pembayaran bisa di transfer melalui :</b></h5><ul><li>BRI - 12353435 - MI Condong</li><li>BCA - 123513 - MI Condong</li></ul>','<p><br></p><ol><li>Surat Keterangan Lulus</li><li>Akta Kelahiran</li><li>Kartu Keluarga</li></ol>','','','-','Cece Insan Kamil S.Ag','-','1','assets/img/kop/kop458.png','assets/img/logo/logo_ppdb430.png','2025-07-14','2021-05-20');

/*---------------------------------------------------------------
  TABLE: `tahun_ajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `tahun_ajaran`;
CREATE TABLE `tahun_ajaran` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tahun` varchar(20) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `tahun_ajaran` VALUES   ('1','2024/2025','N');
INSERT INTO `tahun_ajaran` VALUES ('2','2025/2026','Y');
INSERT INTO `tahun_ajaran` VALUES ('3','2026/2027','N');
INSERT INTO `tahun_ajaran` VALUES ('4','2027/2028','N');

/*---------------------------------------------------------------
  TABLE: `user`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(128) NOT NULL,
  `level` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` text NOT NULL,
  `status` int NOT NULL,
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
INSERT INTO `user` VALUES   ('5','ADMIN','admin','admin','$2y$10$kqHkA.usgKh4TNcJJH1h..Pvn.puyeNgYZWncJo3pfXm.nlAkiP6C','1');
INSERT INTO `user` VALUES ('67','admin2','admin','admin2','$2y$10$uTC7scd45iE7vArwluYecODdyvsy56voXWm/jQ7BCbeFPoop5V4V6','1');
INSERT INTO `user` VALUES ('68','Ranti Maharani','admin','ranti123','$2y$10$zc.DQqpIq4U2xlbZr18tjuPhYsED6tNYArlYLl85AkSCMvF1KIfEO','1');
INSERT INTO `user` VALUES ('66','Bu tesa','admin','tesa','$2y$10$KeDQOuLq1rhKtI0Q2kUk4OHNck9TaN2xBGmebf/ZdFiAWEcOzjWkC','1');
