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
                    <input type="hidden" name="tenant_id" id="tenant_id" value="{{ $user->id }}">
                    <div class="row">
                        <div class="col-12 col-lg-6 mb-2">
                            <label for="date_start_show" class="form-label">Tgl. Mulai <span>*</span></label>
                            <input type="text" class="form-control inputReset" id="date_start_show"
                                name="date_start_show" required>
                            <input type="hidden" class="inputReset" id="date_start" name="date_start" required>
                        </div>
                        <div class="col-12 col-lg-6 mb-2">
                            <label for="date_end_show" class="form-label">Tgl. Selesai <span>*</span></label>
                            <input type="text" class="form-control inputReset" id="date_end_show"
                                name="date_end_show" required>
                            <input type="hidden" class="inputReset" id="date_end" name="date_end" required>
                        </div>
                        {{-- <div class="col-12 mb-2">
                            <label for="price" class="form-label">Price<span>*</span></label>
                            <input type="text" class="form-control inputReset" id="price" name="price"
                                required>
                        </div> --}}
                        <div class="col-12 mb-2">
                            <label for="purpose" class="form-label">Tujuan Sewa<span>*</span></label>
                            <input type="text" class="form-control inputReset" id="purpose" name="purpose"
                                required>
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
