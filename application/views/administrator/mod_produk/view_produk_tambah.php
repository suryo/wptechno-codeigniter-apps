<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Produk Baru</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/tambah_produk',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th scope='row'>Kategori</th>                   <td><select name='a' class='form-control' required>
                                                                            <option value='' selected>- Pilih Kategori Produk -</option>";
                                                                            foreach ($record as $row){
                                                                                echo "<option value='$row[id_kategori_produk]'>$row[nama_kategori]</option>";
                                                                            }
                    echo "</td></tr>
                    <tr><th width='130px' scope='row'>Nama Produk</th>  <td><input type='text' class='form-control' name='b' required></td></tr>
                    <tr><th scope='row'>Satuan</th>                     <td><input type='text' class='form-control' name='c'></td></tr>
                    <tr><th scope='row'>Berat</th>                      <td><input type='text' class='form-control' name='berat'></td></tr>
                    <tr><th scope='row'>Harga Beli</th>                 <td><input type='number' class='form-control' name='d'></td></tr>
                    <tr><th scope='row'>Harga Reseller</th>             <td><input type='number' class='form-control' name='e'></td></tr>
                    <tr><th scope='row'>Harga Konsumen</th>             <td><input type='number' class='form-control' name='f'></td></tr>
                    <tr><th scope='row'>Keterangan</th>                 <td><textarea id='editor1' class='form-control' name='ff'></textarea></td></tr>
                    <tr><th scope='row'>Gambar</th>                     <td><input type='file' class='form-control' name='g'></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
