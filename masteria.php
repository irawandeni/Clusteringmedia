<!DOCTYPE html>
<html>
<head>
   <script src="js/Chart.js"></script>
</head>
<body>
    <br>
    <h4>Grafik Siswa SD Negeri Jatimulyo</h4>
    <canvas id="myChart"></canvas>
    <?php
    // Koneksikan ke database
    $kon = mysqli_connect("localhost","root","","clustering");
    //Inisialisasi nilai variabel awal
    $nama_jurusan= "";
    $jumlah=null;
    //Query SQL
    $sql="select alamat,COUNT(*) as 'total' from siswa GROUP by alamat";
    $hasil=mysqli_query($kon,$sql);

    while ($data = mysqli_fetch_array($hasil)) {
        //Mengambil nilai jurusan dari database
        $alamat=$data['alamat'];
        $nama_jurusan .= "'$alamat'". ", ";
        //Mengambil nilai total dari database
        $jum=$data['total'];
        $jumlah .= "$jum". ", ";

    }
    ?>
<script>
    var ctx = document.getElementById('myChart').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'bar',
        // The data for our dataset
        data: {
            labels: [<?php echo $nama_jurusan; ?>],
            datasets: [{
                label:'Data Kelas Siswa SD Jatimulyo ',
                backgroundColor: ['rgb(255, 99, 132)', 'rgba(56, 86, 255, 0.87)', 'rgb(60, 179, 113)','rgb(175, 238, 239)'],
                borderColor: ['rgb(255, 99, 132)'],
                data: [<?php echo $jumlah; ?>]
            }]
        },

        // Configuration options go here
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    });
</script>
</body>
</html>