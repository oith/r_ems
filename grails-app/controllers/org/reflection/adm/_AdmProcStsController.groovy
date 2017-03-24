package org.reflection.adm

import org.reflection.adm.AdmProcSts

class _AdmProcStsController {

    def show(String id) {
        def admProcStsInstance = AdmProcSts.get(id)
        if (!admProcStsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'admProcSts.label', default: 'AdmProcSts'), id])
            redirect(action: "list")
            return
        }

        [admProcStsInstance: admProcStsInstance]
    }
}
