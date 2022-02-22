#!system/bin/bash

blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'

clear
sleep 2
echo $blue
figlet BlackEye
sleep 1
echo $green"Hai Mr.Slyker..."
read hai
sleep 1
echo $green"Bagaimana Kabar Anda?"
read kabar
sleep 1
echo $green"Ada Yang Bisa Saya Bantu?"
read bantu
sleep 1

if [ $bantu = tidak ];then
sleep 1
echo $green"Senang Bertemu Anda..."
sleep 1
exit
fi

echo $green"Silahkan Ketikkan Perintah Anda!!!"
read perintah

if [ $perintah = help ];then
sleep 1
echo $green"Harap Gunakan Data Seluler Untuk Menggunakan Tools"
echo $green
echo $green"cekip -- Untuk Mengecek Ip Address Perangkat"
echo $green"ping -- Untuk Melakukan Ping Pada Target Tertentu"
echo $green"localhost -- Untuk Menjalankan Localhost"
echo $green"sdcard -- Untuk Melihat Penyimpanan Ponsel"
echo $green"buatfolder -- Untuk Membuat Folder"
echo $green"buatfile -- Untuk Membuat File"
echo $green"hapusfolder -- Untuk Menghapus Folder"
echo $green"hapusfile -- Untuk Menghapus File"
echo $green"pindahfile -- Untuk Memindahkan Folder Atau File"
echo $green"salinfolder -- Untuk Menyalin Folder"
echo $green"salinfile -- Untuk Menyalin File"
echo $green"trackip -- Untuk Mengecek Ip Utama"
echo $green"createhash -- Untuk Mengubah Kata Menjadi Hash"
echo $green"iplocator -- Untuk Mendapat Infomasi Ip"
sleep 1
exit
fi

if [ $perintah = cekip ];then
sleep 1
echo $green"Perintah Dimengerti..."
sleep 1
echo $green"Mengecek Ip..."
sleep 3
ifconfig
sleep 1
exit
fi

if [ $perintah = ping ];then
sleep 1
echo $green"Masukkan Target"
read target
sleep 1
echo $green"Sedang Melakukan Ping Pada Target $target"
sleep 2
ping $target
sleep 1
exit
fi

if [ $perintah = localhost ];then
sleep 1
echo $green"Masukkan Path"
read path
sleep 1
echo $green"Masukkan Port"
read port
sleep 1
echo $green"Sedang Menjalankan Localhost Dengan Path $path Port $port"
sleep 3
echo $green"Localhost Berhasil Diaktifkan..."
sleep 1
php -S localhost:$port -t $path
sleep 1
exit
fi

if [ $perintah = sdcard ];then
sleep 1
echo "Sedang Membuka Sdcard..."
termux-setup-storage
sleep 2
cd /sdcard
ls
sleep 1
exit
fi

if [ $perintah = buatfolder ];then
sleep 1
echo $green"Masukkan Lokasi Folder Dibuat..."
read folder
sleep 1
echo $green"Masukkan Nama Folder..."
read namafolder
sleep 1.5
echo $green"Sedang Mencari $folder"
sleep 2
echo $green"Sedang Membuat Folder $namafolder"
sleep 3
cd $folder
mkdir $namafolder
sleep 1
echo $green"Folder Berhasil Dibuat..."
sleep 1
cd $folder
ls
sleep 1
exit
fi

if [ $perintah = buatfile ];then
sleep 1
echo $green"Masukkan Lokasi File Dibuat..."
read file
sleep 1
echo $green"Masukkan Nama File..."
read namafile
sleep 1
echo $green"Masukkan Ekstensi File..."
read ekstensifile
sleep 2
echo $green"Sedang Mencari $file"
sleep 2
echo $green"Sedang Membuat File $namafile.$ekstensifile"
cd $file
touch $namafile.$ekstensifile
sleep 3
echo $green"File Berhasil Dibuat..."
sleep 2
cd $file
ls
sleep 1
exit
fi

if [ $perintah = hapusfile ];then
sleep 1
echo $green"Masukkan Lokasi File..."
read hapus
sleep 1
cd $hapus
ls
echo $green"Masukkan Nama File..."
read namahapus
sleep 2
echo $green"Sedang Menghapus $namahapus..."
sleep 3
cd $hapus
rm -f $namahapus
echo $green"File Berhasil Dihapus..."
sleep 2
cd $hapus
ls
sleep 1
exit
fi

if [ $perintah = hapusfolder ];then
sleep 1
echo $green"Masukkan Lokasi Folder..."
read hapusfolder
sleep 1
cd $hapusfolder
ls
echo $green"Masukkan Nama Folder..."
read namahapusfolder
sleep 2
echo $green"Sedang Menghapus Folder..."
sleep 3
rm -r $namahapusfolder
echo $green"Folder Berhasil Dihapus..."
sleep 2
cd $hapusfolder
ls
sleep 1
exit
fi

if [ $perintah = pindahfile ];then
sleep 1
echo $green"Masukkan Lokasi File Yang Ingin Dipindahkan..."
read pindahfile
sleep 1
cd $pindahfile
ls
echo $green"Masukkan Nama File Yang Ingin Dipindahkan..."
read namapindahfile
sleep 1
echo $green"Masukkan Lokasi Pemindahan..."
read lokasipindahfile
sleep 2
echo $green"Sedang Memindahkan File..."
sleep 3
mv $namapindahfile $lokasipindahfile
echo $green"File Berhasil Dipindahkan..."
sleep 1
cd $lokasipindahfile
ls
sleep 1
exit
fi

if [ $perintah = salinfile ];then
sleep 1
echo $green"Masukkan Lokasi File Yang Ingin Disalin..."
read salinfile
sleep 1
cd $salinfile
ls
echo $green"Masukkan Nama File Yang Ingin Disalin..."
read namasalinfile
sleep 1
echo $green"Masukkan Lokasi File Penyalinan..."
read lokasisalinfile
sleep 1
echo $green"Sedang Mencari $lokasisalinfile"
sleep 2
echo $green"Sedang Mencari $namasalinfile"
sleep 2
echo $green"Sedang Menyalin File..."
sleep 3
cd $salinfile
cp $namasalinfile $lokasisalinfile
cd $lokasisalinfile
ls
sleep 1
exit
fi

if [ $perintah = salinfolder ];then
sleep 1
echo $green"Masukkan Lokasi Folder Yang Ingin Disalin..."
read salinfolder
sleep 1
cd $salinfolder
ls
echo $green"Masukkan Nama Folder Yang Ingin Disalin..."
read namasalinfolder
sleep 1
echo $green"Masukkan Lokasi Penyalinan..."
read lokasisalinfolder
sleep 1
echo $green"Sedang Mencari $namasalinfolder"
sleep 2
echo $green"Sedang Mencari $lokasisalinfolder"
sleep 2
echo $green"Sedang Menyalin Folder..."
sleep 2
echo $green"Folder Berhasil Disalin..."
sleep 3
cd $salinfolder
cp -r $namasalinfolder $lokasisalinfolder
cd $lokasisalinfolder
ls
sleep 1
exit
fi

if [ $perintah = trackip ];then
sleep 1
echo $green"Sedang Mengecek Ip..."
sleep 3
curl -s https://mrslyker.000webhostapp.com/Termux/hasilTrackIp.php
sleep 1
echo ""
exit
fi


if [ $perintah = createhash ];then
sleep 1
echo $green"Masukkan Kata Yang Mau Diubah :"
read kata
sleep 2
echo $green"Sedang Mengubah Kata..."
sleep 3
echo $green"Text Berhasil Diubah..."
curl -s https://mrslyker.000webhostapp.com/Termux/hash.php?hash=$kata&hash=Kirim
sleep 2
echo $green""
sleep 1
exit
fi

if [ $perintah = viewhash ];then
sleep 1
echo "Masukkan Kode Hash..."
read viewhash
sleep 1
echo "Sedang Mengecek Kode Hash..."
sleep 3
link='https://md5decrypt.net/en/Api/api.php?hash=".$viewhash."&hash_type=".md5."&email=".rudinnation1922@gmail.com."&code=".be383248b56093e7'
curl -s $link
sleep 3
exit
fi

if [ $perintah = iplocator ];then
sleep 1
echo $green"Masukkan Ip"
read iplocator
sleep 1
echo $green"Sedang Mengecek Ip..."
sleep 3
echo $green"Mendapatkan Data..."
sleep 3
curl -s https://mrslyker.000webhostapp.com/Termux/TrackIp.php?ip=$iplocator&cek=Cek+Ip
sleep 2
echo $green""
sleep 1
else
sleep 1
echo $green"Perintah Tidak Diketahui Silahkan Ketik Help..."
sleep 2
exit
fi
