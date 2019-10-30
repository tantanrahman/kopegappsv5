<?php 

    error_reporting();
    $link = $_GET['id'];

    switch($link) {
        case 1:
        include "finnet.php";
        break;
        case 2:
        include "lembar_pendapatan.php";
        break;
        case 3:
        include "pen_pln.php";
        break;
        case 4:
        include "pen_pdam.php";
        break;
        case 5:
        include "finnet.php";
        break;
        case 6:
        include "pen_sopp.php";
        break;
        case 7:
        include "pen_voucher.php";
        break;
        case 8:
        include "lembar_keuangan.php";
        break;
        case 9:
        include "rincian_sopp.php";
        break;
        case 10:
        include "rekap_pendapatan.php";
        break;
        case 11:
        include "pen_arindo.php";
        break;
        case 12:
        include "lembar_hapus.php";
        break;
        case 13:
        include "query_hapus_pendapatan.php";
        break;
        case 14:
        include "lembar_pengaturan.php";
        break;
        case 15:
        include "pen_pengawasan.php";
        break;
        case 16:
        include "input_rk.php";
        break;
        case 17:
        include "query_rk.php";
        break;
        case 18:
        include "input_titipan.php";
        break;
        case 19:
        include "query_titipan.php";
        break;
        case 20:
        include "fee_pdam.php";
        break;
        case 21:
        include "edit_fee_pdam.php";
        break;
        case 22:
        include "tambah_fee_pdam.php";
        break;
        case 23:
        include "hapus_fee_pdam.php";
        break;
        case 24:
        include "fee_arindo.php";
        break;
        case 25:
        include "lembar_colfee.php";
        break;
        case 26:
        include "lembar_kinerja.php";
        break;
        case 27:
        include "kinerja_perloker.php";
        break;
        case 28:
        include "kinerja_peruser.php";
        break;
        case 29:
        include "input_kinerja_user.php";
        break;
        case 30:
        include "proses_input_kinerja_user.php";
        break;
        case 31:
        include "lembar_konpensasi.php";
        break;
        case 32:
        include "input_konpensasi.php";
        break;
        case 33:
        include "cetak_konpensasi.php";
        break;
        case 34:
        include "lihat_konpensasi.php";
        break;
        case 35:
        include "hapus_konpensasi.php";
        break;
        case 36:
        include "lembar_kode_awal.php";
        break;
        case 37:
        include "lihat_kode_awal.php";
        break;
        case 38:
        include "edit_kode_awal.php";
        break;
        case 39:
        include "tambah_kode_awal.php";
        break;
        case 40:
        include "hapus_kode_awal.php";
        break;
        case 41:
        include "lihat_harga_pulsa.php";
        break;
        case 42:
        include "lembar_harga_pulsa.php";
        break;
        case 43:
        include "edit_harga_pulsa.php";
        break;
        case 44:
        include "tambah_harga_pulsa.php";
        break;
        case 45:
        include "hapus_harga_pulsa.php";
        break;
        case 46:
        include "lembar_lokasi.php";
        break;
        case 47:
        include "lihat_lokasi.php";
        break;
        case 48:
        include "edit_lokasi.php";
        break;
        case 49:
        include "tambah_lokasi.php";
        break;
        case 50:
        include "hapus_lokasi.php";
        break;
        case 51:
        include "lembar_lokasi_arindo.php";
        break;
        case 52:
        include "lihat_lokasi_arindo.php";
        break;
        case 53:
        include "edit_lokasi_arindo.php";
        break;
        case 54:
        include "tambah_lokasi_arindo.php";
        break;
        case 55:
        include "hapus_lokasi_arindo.php";
        break;
        case 56:
        include "admin_user.php";
        break;
        case 57:
        include "edit_admin_user.php";
        break;
        case 58:
        include "ubah_admin_user.php";
        break;

        default :
        include "halamanutama.php";
        break;
    }

?>