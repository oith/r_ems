package org.reflection.adm

import org.apache.commons.io.input.ReversedLinesFileReader

class _CatalinaFileReaderController {
    def index() {

        File file = new File(new File(grailsApplication.mainContext.servletContext.getRealPath('//')).getParentFile().getParentFile(), "logs" + File.separator + "catalina.out")

        int n_lines = 300
        int counter = 0
        ReversedLinesFileReader object = new ReversedLinesFileReader(file)

        String[] datum = new String[n_lines]

        String line
        while ((line = object.readLine()) != null) {

            if (counter == n_lines)
                break

            datum[counter] = line
            counter++
        }
        String lins = ""
        int j = 1
        for (int i = datum.length - 1; i >= 0; i--) {
            lins += (j++) + " : " + datum[i] + "\n"

        }

        [datam: lins]
    }
}


