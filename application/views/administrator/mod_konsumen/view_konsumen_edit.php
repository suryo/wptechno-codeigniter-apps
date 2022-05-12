<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Konsumen</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/edit_konsumen',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' value='".$this->uri->segment(3)."' name='id'>
                    <tr><td width='140px'><b>Username</b></td> <td><input class='required form-control' style='width:50%; display:inline-block' name='aa' type='text' value='$row[username]'></td></tr>
                          <tr><td><b>Password</b></td>       <td><input class='form-control' style='width:50%; display:inline-block' type='password' name='a'> <small style='color:red'><i>Kosongkan Saja JIka Tidak ubah.</i></small></td></tr>
                          <tr><td><b>Nama Lengkap</b></td>   <td><input class='required form-control' type='text' name='b' value='$row[nama_lengkap]'></td></tr>
                          <tr><td><b>Email</b></td>          <td><input class='required email form-control' type='email' name='c' value='$row[email]'></td></tr>
                          <tr><td><b>Jenis Kelamin</b></td>  <td>"; if ($row['jenis_kelamin']=='Laki-laki'){ echo "<input type='radio' value='Laki-laki' name='d' checked> Laki-laki <input type='radio' value='Perempuan' name='d'> Perempuan "; }else{ echo "<input type='radio' value='Laki-laki' name='d'> Laki-laki <input type='radio' value='Perempuan' name='d' checked> Perempuan "; } echo "</td></tr>
                          <tr><td><b>Tanggal Lahir</b></td>  <td><input style='padding-left:13px' class='required datepicker form-control' type='text' name='e' value='$row[tanggal_lahir]' data-date-format='yyyy-mm-dd'></td></tr>
                          <tr><td><b>Tempat Lahir</b></td>   <td><input class='required form-control' type='text' name='f' value='$row[tempat_lahir]'></td></tr>
                          <tr><td><b>Alamat</b></td>         <td><textarea class='required form-control' name='g'>$row[alamat_lengkap]</textarea></td></tr>
                          <tr><td><b>Kota Sekarang</b></td>             <td><select class='form-control' name='j' id='city' required>
                                                                      <option value=''>- Pilih -</option>";
                                                                      foreach ($kota->result_array() as $rows){
                                                                        if ($row['kota_id']==$rows['kota_id']){
                                                                          echo "<option value='$rows[kota_id]' selected>$rows[nama_kota]</option>";
                                                                        }else{
                                                                          echo "<option value='$rows[kota_id]'>$rows[nama_kota]</option>";
                                                                        }
                                                                      }
                                                                   echo "</select>
                          </td></tr>
                          <tr><td><b>No Hp</b></td>                  <td><input style='width:40%' class='required number form-control' type='number' name='l' value='$row[no_hp]'></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url()."administrator/konsumen'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
