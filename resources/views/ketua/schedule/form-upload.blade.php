<div class="modal fade" id="modal-upload" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="judul-form">Upload Bukti</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="frm-upload-bukti">
                @csrf
                <div class="modal-body">
                    <input type="hidden" name="schedule_id" id="schedule_id">
                    <div class="row">
                        <div class="col-12 mb-2">
                            <label for="image" class="form-label">Bukti Kirim <span>*</span></label>
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
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    <button type="submit" id="btn-upload-bukti" class="btn btn-primary">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
