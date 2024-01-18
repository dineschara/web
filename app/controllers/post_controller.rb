class PostController < ApplicationController
  def index
   @data = Posting.all
  end

  def detail
   @data = Posting.find_by(id: params[:id])
  end

  def input
  end

  def create
    @data = Posting.new(nama: params[:nama], deskripsi: params[:deskripsi])
    @data.save

    flash[:pesan] = "data berhasil disimpan !"
    redirect_to("/post/index")
  end

  def edit
    @data = Posting.find_by(id: params[:id])
  end

  def update
    @data = Posting.find_by(id: params[:id])
    @data.nama = params[:nama]
    @data.deskripsi = params[:deskripsi]
    @data.save
    flash[:pesan] = "data berhasil diupdate !"
    redirect_to("/post/index")
  end

  def delete
    @data = Posting.find_by(id: params[:id])
    @data.destroy
    flash[:pesan] = "data berhasil dihapus !"
    redirect_to("/post/index")
  end

end
