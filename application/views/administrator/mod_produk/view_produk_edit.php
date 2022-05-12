<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Produk Terpilih</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/edit_produk',$attributes);
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_produk]'>
                    <tr><th scope='row'>Kategori</th>                   <td><select name='a' class='form-control' required>
                                                                            <option value='' selected>- Pilih Kategori Produk -</option>";
                                                                            foreach ($record as $row){
                                                                              if ($rows['id_kategori_produk']==$row['id_kategori_produk']){
                                                                                echo "<option value='$row[id_kategori_produk]' selected>$row[nama_kategori]</option>";
                                                                              }else{
                                                                                echo "<option value='$row[id_kategori_produk]'>$row[nama_kategori]</option>";
                                                                              }
                                                                            }
                    echo "</td></tr>
                    <tr><th width='130px' scope='row'>Nama Produk</th>  <td><input type='text' class='form-control' name='b' value='$rows[nama_produk]' required></td></tr>
                    <tr><th scope='row'>Satuan</th>                     <td><input type='text' class='form-control' name='c' value='$rows[satuan]'></td></tr>
                    <tr><th scope='row'>Berat</th>                      <td><input type='text' class='form-control' name='berat' value='$rows[berat]'></td></tr>
                    <tr><th scope='row'>Harga Beli</th>                 <td><input type='number' class='form-control' name='d' value='$rows[harga_beli]'></td></tr>
                    <tr><th scope='row'>Harga Reseller</th>             <td><input type='number' class='form-control' name='e' value='$rows[harga_reseller]'></td></tr>
                    <tr><th scope='row'>Harga Konsumen</th>             <td><input type='number' class='form-control' name='f' value='$rows[harga_konsumen]'></td></tr>
                    <tr><th scope='row'>Keterangan</th>                 <td><textarea  id='editor1' class='form-control' name='ff'>$rows[keterangan]</textarea></td></tr>
                    <tr><th scope='row'>Gambar</th>                     <td><input type='file' class='form-control' name='g'>";
                                                                               if ($rows['gambar'] != ''){ echo "<i style='color:red'>Lihat Gambar Saat ini : </i><a target='_BLANK' href='".base_url()."asset/foto_produk/$rows[gambar]'>$rows[gambar]</a>"; } echo "</td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
