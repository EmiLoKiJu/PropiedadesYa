class AttachmentsController < ApplicationController
  def purge
    attachment = ActiveStorage::Attachment.find(params[:id])
    attachment.purge
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path, notice: "Picture purged successfully") }
      format.json { head :no_content }
    end
  end
end
