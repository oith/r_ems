package org.reflection.adm

class _AdmRptUploadController {

    def index() {
        render(view: "create")
    }

    def upload() {

        def uploadedFile = params['file_']
        def fileName, ext

        try {
            fileName = uploadedFile.getOriginalFilename()
        } catch (Exception e) {
            fileName = null
        }

        if (fileName != null) {

            ext = fileName.toString().substring(fileName.toString().lastIndexOf(".") + 1)


            if ((ext != "jasper") || (ext != "jrxml") || (ext != "png") || (ext != "jpeg") || (ext != "jpg")) {

                File file1 = new File(new File(grailsApplication.mainContext.servletContext.getRealPath('//')).parent + File.separator + "knit_hcm_repo" + File.separator + "reports")

                try {
                    uploadedFile.transferTo(new File(file1, fileName))
                    flash.message = "Successfully Uploaded!"
                }
                catch (Exception e) {
                    flash.message = "The file could not able to Uploaded!"
                }
            } else {
                flash.message = "File extension not matched. It should be 'jasper' || 'jrxml' || 'png' || 'jpeg' || 'jpg"
            }
        } else {
            flash.message = "You not select any files yet"
        }
        redirect(action: "index")
    }
}
