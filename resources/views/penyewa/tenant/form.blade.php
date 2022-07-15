<div class="modal fade" id="modal-crud">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="judul-form"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="formKu">
                @csrf
                <div class="modal-body">
                    <input type="hidden" name="id" class="inputReset" id="id-form">
                    <input type="hidden" name="user_id" id="user-id" value="{{ auth()->user()->id }}">
                    <div class="row">
                        <div class="col-12 mb-2">
                            <label for="nik" class="form-label">NIK <span class="text-danger">*</span></label>
                            <input type="text" class="form-control inputReset" id="nik" name="nik"
                                required>
                        </div>
                        <div class="col-12 col-lg-6 mb-2">
                            <label for="first_name" class="form-label">Nama Depan <span
                                    class="text-danger">*</span></label>
                            <input type="text" class="form-control inputReset" id="first_name" name="first_name">
                        </div>
                        <div class="col-12 col-lg-6 mb-2">
                            <label for="last_name" class="form-label">Nama Belakang</label>
                            <input type="text" class="form-control inputReset" id="last_name" name="last_name">
                        </div>
                        <div class="col-12 mb-2">
                            <label for="gender" class="form-label">Jenis Kelamin <span
                                    class="text-danger">*</span></label>
                            {{-- radio --}}
                            <div class="form-group m-checkbox-inline mb-0 custom-radio-ml">
                                <div class="radio radio-primary">
                                    <input id="Laki-laki" type="radio" name="gender" value="Laki-laki">
                                    <label class="mb-0" for="Laki-laki">Laki-laki</label>
                                </div>
                                <div class="radio radio-primary">
                                    <input id="Perempuan" type="radio" name="gender" value="Perempuan">
                                    <label class="mb-0" for="Perempuan">Perempuan</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 mb-2">
                            <label for="district-id" class="form-label">Kota/Kabupaten</label>
                            <select name="district_id" id="district-id" class="select-basic">

                            </select>
                        </div>
                        <div class="col-12 col-lg-6 mb-2">
                            <label for="sub-district-id" class="form-label">Kecamatan<span
                                    class="text-danger">*</span></label>
                            <select name="sub_district_id" id="sub-district-id" class="select-basic">

                            </select>
                        </div>
                        <div class="col-12 mb-2">
                            <label for="address" class="form-label">Alamat <span class="text-danger">*</span></label>
                            <input type="text" class="form-control inputReset" id="address" name="address"
                                required>
                        </div>
                        <div class="col-12 mb-2">
                            <label for="foto" class="form-label">Foto KTP <span class="text-danger">*</span></label>
                            <input type="file" accept="image/*" id="foto" name="ktp_picture">
                            <div class="row">
                                <div class="col-6">
                                    <div class="image-preview"></div>
                                </div>
                                <div class="col-4 ml-4" id="container_foto_lama">
                                    <div class="foto_lama"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    <button type="submit" id="tombol-form" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>
