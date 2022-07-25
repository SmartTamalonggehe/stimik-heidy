<div class="modal fade tampilModal" id="modal-crud">
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
                    <div class="row">
                        <div class="col-12">
                            <div class="mb-3">
                                <label for="district-id">Kabupaten/Kota</label>
                                <select name="district_id" id="district-id" class="select-basic">

                                </select>
                            </div>
                        </div>
                        <div class="col-12 mb-2">
                            <label for="name" class="form-label">Nama Kecamatan <span>*</span></label>
                            <input type="text" class="form-control inputReset" id="name" name="name"
                                placeholder="Masukkan Judul" required>
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
