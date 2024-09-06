<?php
include "proses/connect.php";
date_default_timezone_set('Asia/Jakarta');

$query = mysqli_query($conn, "SELECT tb_order.*, tb_bayar.*, nama, SUM(tb_daftar_menu.harga * tb_list_order.jumlah) AS harganya FROM tb_order
    LEFT JOIN tb_user ON tb_user.id = tb_order.pelayan
    LEFT JOIN tb_list_order ON tb_list_order.kode_order = tb_order.id_order
    LEFT JOIN tb_daftar_menu ON tb_daftar_menu.id = tb_list_order.menu
    JOIN tb_bayar ON tb_bayar.id_bayar = tb_order.id_order
    GROUP BY id_order ORDER BY waktu_order ASC");

while ($record = mysqli_fetch_array($query)) {
    $result[] = $record;
}

//$select_kat_menu = mysqli_query($conn, "SELECT id_kat_menu,kategori_menu FROM tb_kategori_menu");
?>
<div class="col-lg-9 mt-2">
    <div class="card">
        <div class="card-header">
            Halaman Report
        </div>
        <div class="card-body">
            <!-- Tombol Cetak Laporan -->
            <button id="printReport" class="btn custom-tambah-button">Cetak Laporan</button>

            <?php
            if (empty($result)) {
                echo "Data menu makanan atau minuman tidak ada";
            } else {
                ?>
            <div class="table-responsive">
                <table id="reportTable" class="table table-hover">
                    <thead>
                        <tr class="text-nowrap">
                            <th scope="col">No</th>
                            <th scope="col">Kode Order</th>
                            <th scope="col">Waktu Order</th>
                            <th scope="col">Waktu Bayar</th>
                            <th scope="col">Pelanggan</th>
                            <th scope="col">Meja</th>
                            <th scope="col">Total Harga</th>
                            <th scope="col">Pelayan</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $no = 1;
                            foreach ($result as $row) {
                                ?>
                        <tr>
                            <th scope="row"><?php echo $no++ ?></th>
                            <td><?php echo $row['id_order'] ?></td>
                            <td><?php echo $row['waktu_order'] ?></td>
                            <td><?php echo $row['waktu_bayar'] ?></td>
                            <td><?php echo $row['pelanggan'] ?></td>
                            <td><?php echo $row['meja'] ?></td>
                            <td><?php echo number_format((int) $row['harganya'], 0, ',', '.') ?></td>
                            <td><?php echo $row['nama'] ?></td>
                            <td>
                                <div class="d-flex">
                                    <a class="btn btn-info btn-sm me-1"
                                        href="./?x=viewitem&order=<?php echo $row['id_order'] . "&meja=" . $row['meja'] . "&pelanggan=" . $row['pelanggan'] ?>">
                                        <i class="bi bi-eye"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <?php
                            }
                            ?>
                    </tbody>
                </table>
            </div>
            <?php
            }
            ?>
        </div>
    </div>
</div>


<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
    'use strict'

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    const forms = document.querySelectorAll('.needs-validation')

    // Loop over them and prevent submission
    Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
            if (!form.checkValidity()) {
                event.preventDefault()
                event.stopPropagation()
            }

            form.classList.add('was-validated')
        }, false)
    })
})()
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.13/jspdf.plugin.autotable.min.js"></script>

<script>
document.getElementById('printReport').addEventListener('click', function() {
    const {
        jsPDF
    } = window.jspdf;
    const doc = new jsPDF();

    // Ambil elemen tabel
    const table = document.getElementById('reportTable');

    // Ambil data dari tabel
    const rows = [];
    const headers = [];
    table.querySelectorAll('thead tr th').forEach(th => {
        headers.push(th.innerText);
    });
    table.querySelectorAll('tbody tr').forEach(tr => {
        const row = [];
        tr.querySelectorAll('td, th').forEach(td => {
            row.push(td.innerText);
        });
        rows.push(row);
    });

    // Buat tabel PDF dengan jsPDF AutoTable plugin
    doc.autoTable({
        head: [headers],
        body: rows,
    });

    // Simpan dokumen sebagai PDF
    doc.save('Laporan.pdf');
});
</script>