package org.reflection.adm

public enum ReportFormat {

    CSV_FORMAT  ("CSV"),
    DOCX_FORMAT ("DOCX"),
    HTML_FORMAT ("HTML"),
    ODS_FORMAT  ("ODS"),
    ODT_FORMAT  ("ODT"),
    PDF_FORMAT  ("PDF"),
    PPTX_FORMAT ("PPTX"),
    RTF_FORMAT  ("RTF"),
    TEXT_FORMAT ("TEXT"),
    XLSX_FORMAT ("XLSX"),
    XLS_FORMAT  ("XLS"),
    XML_FORMAT  ("XML");

    final String value;

    ReportFormat(String value) {
        this.value = value;
    }

    String getKey() { name(); }

    String toString() { value; }
}