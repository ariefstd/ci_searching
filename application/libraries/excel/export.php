<?php 
//memanggil fungsi
include 'fungsi.php';

//koneksi ke database dan jalankan query
mysql_connect('localhost', 'root', '');
mysql_select_db('harviacode');

//ambil query dari sql yang dikirim oleh form
$sql = isset($_POST['sql'])?$_POST['sql']:'';

// masukkan sql ke dalam query
$result = mysql_query($sql);
!$result?die(mysql_error()):'';

//pengaturan nama file
$namaFile = "provinsi.xls";
//pengaturan judul data
$judul = "DAFTAR PROVINSI";
//baris berapa header tabel di tulis
$tablehead = 2;
//baris berapa data mulai di tulis
$tablebody = 3;
//no urut data
$nourut = 1;

//penulisan header
header("Pragma: public");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
header("Content-Type: application/force-download");
header("Content-Type: application/octet-stream");
header("Content-Type: application/download");
header("Content-Disposition: attachment;filename=".$namaFile."");
header("Content-Transfer-Encoding: binary ");


xlsBOF();
 
xlsWriteLabel(0,0,$judul);  

$kolomhead = 0;
xlsWriteLabel($tablehead,$kolomhead++,"NO URUT");              
xlsWriteLabel($tablehead,$kolomhead++,"ID_PROVINSI");             
xlsWriteLabel($tablehead,$kolomhead++,"PROVINSI");

while ($data = mysql_fetch_array($result))
{
$kolombody = 0;

//gunakan xlsWriteNumber untuk penulisan nomor dan xlsWriteLabel untuk penulisan string
xlsWriteNumber($tablebody,$kolombody++,$nourut);
xlsWriteNumber($tablebody,$kolombody++,$data['id_provinsi']);
xlsWriteLabel($tablebody,$kolombody++,$data['provinsi']);

$tablebody++;
$nourut++;
}

xlsEOF();
exit();
?>