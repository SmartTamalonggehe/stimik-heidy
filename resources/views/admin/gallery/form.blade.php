<div class="modal fade" id="modal-crud" tabindex="-1">
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
                        <div class="col-12 mb-2">
                            <label for="image" class="form-label">Gambar <span>*</span></label>
                            <input type="file" accept="image/*" id="foto" name="image">
                            <div class="row">
                                <div class="col-6">
                                    <div class="image-preview"></div>
                                </div>
                                <div class="col-4 ml-4" id="container_foto_lama">
                                    <div class="foto_lama"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 mb-2">
                            <label for="description" class="form-label">Keterangan</label>
                            <input type="text" class="form-control" id="description" name="description"
                                placeholder="Masukkan Keterangan">
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
