
<%@ page import="org.reflection.ems.EmsStudent" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsStudent.pageTitle.label', default: 'Ems Student')}"/>
        <title><g:message code="default.show.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">

            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.show.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsStudent/index">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-vimeo" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsStudent/create">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-primary" action="create">
                                <i class="fa fa-plus-circle"></i> <g:message code="default.button.new.label" default="New"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsStudent/edit/${emsStudentInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-warning" action="edit" id="${emsStudentInstance?.id}">
                                <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsStudent/delete/${emsStudentInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-danger" action="delete" id="${emsStudentInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                            </g:link>
                        </li>
                    </sec:access>
                </ul>
            </section><!-- /.content-header -->

            <section class="flash-message">
                <g:render template="../layouts/flashMessage"/>
            </section><!--Flash Message-->

            <section class="content show-page"><!-- Main content -->
                <fieldset class="emsStudent-show">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="property-show">

                                %{--<g:if test="${emsStudentInstance?.comGender}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.comGender.label" default="Com Gender"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="comGender"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.comReligion}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.comReligion.label" default="Com Religion"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="comReligion"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.comTitle}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.comTitle.label" default="Com Title"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="comTitle"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.dob}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.dob.label" default="Dob"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsStudentInstance?.dob}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.fullName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.fullName.label" default="Full Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="fullName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.comBloodGroup}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.comBloodGroup.label" default="Com Blood Group"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="comBloodGroup"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.comProfessionFather}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.comProfessionFather.label" default="Com Profession Father"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="comProfessionFather"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.comProfessionMother}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.comProfessionMother.label" default="Com Profession Mother"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="comProfessionMother"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.birthRegNo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.birthRegNo.label" default="Birth Reg No"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="birthRegNo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.email}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.email.label" default="Email"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="email"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.mobile}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.mobile.label" default="Mobile"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="mobile"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrmnHn}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrmnHn.label" default="Address Prmn Hn"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrmnHn"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrmnHnNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrmnHnNative.label" default="Address Prmn Hn Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrmnHnNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrmnPo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrmnPo.label" default="Address Prmn Po"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrmnPo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrmnPoNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrmnPoNative.label" default="Address Prmn Po Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrmnPoNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrmnVill}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrmnVill.label" default="Address Prmn Vill"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrmnVill"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrmnVillNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrmnVillNative.label" default="Address Prmn Vill Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrmnVillNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrsnHn}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrsnHn.label" default="Address Prsn Hn"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrsnHn"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrsnHnNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrsnHnNative.label" default="Address Prsn Hn Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrsnHnNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrsnPo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrsnPo.label" default="Address Prsn Po"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrsnPo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrsnPoNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrsnPoNative.label" default="Address Prsn Po Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrsnPoNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrsnVill}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrsnVill.label" default="Address Prsn Vill"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrsnVill"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.addressPrsnVillNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.addressPrsnVillNative.label" default="Address Prsn Vill Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="addressPrsnVillNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.fatherName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.fatherName.label" default="Father Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="fatherName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.fatherNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.fatherNameNative.label" default="Father Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="fatherNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.firstName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.firstName.label" default="First Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="firstName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.firstNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.firstNameNative.label" default="First Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="firstNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.fullNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.fullNameNative.label" default="Full Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="fullNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.imagePath}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.imagePath.label" default="Image Path"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="imagePath"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.lastName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.lastName.label" default="Last Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="lastName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.lastNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.lastNameNative.label" default="Last Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="lastNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.middleName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.middleName.label" default="Middle Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="middleName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.middleNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.middleNameNative.label" default="Middle Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="middleNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.motherName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.motherName.label" default="Mother Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="motherName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.motherNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.motherNameNative.label" default="Mother Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="motherNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.nickName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.nickName.label" default="Nick Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="nickName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.nickNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.nickNameNative.label" default="Nick Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="nickNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.emsClass}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.emsClass.label" default="Ems Class"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="emsClass"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.emsYear}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.emsYear.label" default="Ems Year"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="emsYear"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.code}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.code.label" default="Code"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="code"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.admissionDate}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.admissionDate.label" default="Admission Date"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsStudentInstance?.admissionDate}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsStudentInstance?.emsQuota}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsStudent.emsQuota.label" default="Ems Quota"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsStudentInstance}" field="emsQuota"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%
                            </div>
                        </div><!-- /.box-body -->
                    </div>  <!-- /.box box-primary -->
                </fieldset>

                
                <fieldset class="emsApplicantBankAccount-show">
                    <legend><g:message code="emsApplicantBankAccount.pageTitle.label" default="Ems Applicant Bank Account Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsStudentInstance?.emsApplicantBankAccount}">
                            <g:each in="${emsStudentInstance?.emsApplicantBankAccount}" var="emsApplicantBankAccountInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsApplicantBankAccountInstance?.emsApplicant}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantBankAccount.emsApplicant.label" default="Ems Applicant"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsApplicant" action="show" id="${emsApplicantBankAccountInstance?.emsApplicant?.id}">
                                                    ${emsApplicantBankAccountInstance?.emsApplicant?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantBankAccountInstance?.accountTitle}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantBankAccount.accountTitle.label" default="Account Title"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantBankAccountInstance}" field="accountTitle"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantBankAccountInstance?.comBank}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantBankAccount.comBank.label" default="Com Bank"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="comBank" action="show" id="${emsApplicantBankAccountInstance?.comBank?.id}">
                                                    ${emsApplicantBankAccountInstance?.comBank?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantBankAccountInstance?.bankAccountNo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantBankAccount.bankAccountNo.label" default="Bank Account No"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantBankAccountInstance}" field="bankAccountNo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsStudentInstance?.emsApplicantBankAccount?.size() > 0}"><hr></g:if>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <span class="property-label bold center">
                                            <g:message code="default.noRecordFound.label" default="No Record Found...!"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                    </div>
                </fieldset>
                <fieldset class="emsApplicantBranchPreferance-show">
                    <legend><g:message code="emsApplicantBranchPreferance.pageTitle.label" default="Ems Applicant Branch Preferance Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsStudentInstance?.emsApplicantBranchPreferance}">
                            <g:each in="${emsStudentInstance?.emsApplicantBranchPreferance}" var="emsApplicantBranchPreferanceInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsApplicantBranchPreferanceInstance?.emsApplicant}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantBranchPreferance.emsApplicant.label" default="Ems Applicant"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsApplicant" action="show" id="${emsApplicantBranchPreferanceInstance?.emsApplicant?.id}">
                                                    ${emsApplicantBranchPreferanceInstance?.emsApplicant?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantBranchPreferanceInstance?.comBranch}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantBranchPreferance.comBranch.label" default="Com Branch"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="comBranch" action="show" id="${emsApplicantBranchPreferanceInstance?.comBranch?.id}">
                                                    ${emsApplicantBranchPreferanceInstance?.comBranch?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantBranchPreferanceInstance?.comPriority}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantBranchPreferance.comPriority.label" default="Com Priority"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantBranchPreferanceInstance}" field="comPriority"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsStudentInstance?.emsApplicantBranchPreferance?.size() > 0}"><hr></g:if>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <span class="property-label bold center">
                                            <g:message code="default.noRecordFound.label" default="No Record Found...!"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                    </div>
                </fieldset>
                <fieldset class="emsApplicantDocument-show">
                    <legend><g:message code="emsApplicantDocument.pageTitle.label" default="Ems Applicant Document Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsStudentInstance?.emsApplicantDocument}">
                            <g:each in="${emsStudentInstance?.emsApplicantDocument}" var="emsApplicantDocumentInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsApplicantDocumentInstance?.emsApplicant}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantDocument.emsApplicant.label" default="Ems Applicant"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsApplicant" action="show" id="${emsApplicantDocumentInstance?.emsApplicant?.id}">
                                                    ${emsApplicantDocumentInstance?.emsApplicant?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantDocumentInstance?.fileTitle}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantDocument.fileTitle.label" default="File Title"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantDocumentInstance}" field="fileTitle"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantDocumentInstance?.filePath}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantDocument.filePath.label" default="File Path"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantDocumentInstance}" field="filePath"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantDocumentInstance?.docType}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantDocument.docType.label" default="Doc Type"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantDocumentInstance}" field="docType"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantDocumentInstance?.isApproved}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantDocument.isApproved.label" default="Is Approved"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatBoolean boolean="${emsApplicantDocumentInstance?.isApproved}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantDocumentInstance?.shortOrder}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantDocument.shortOrder.label" default="Short Order"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantDocumentInstance}" field="shortOrder"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsStudentInstance?.emsApplicantDocument?.size() > 0}"><hr></g:if>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <span class="property-label bold center">
                                            <g:message code="default.noRecordFound.label" default="No Record Found...!"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                    </div>
                </fieldset>
                <fieldset class="emsApplicantEducationInfo-show">
                    <legend><g:message code="emsApplicantEducationInfo.pageTitle.label" default="Ems Applicant Education Info Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsStudentInstance?.emsApplicantEducationInfo}">
                            <g:each in="${emsStudentInstance?.emsApplicantEducationInfo}" var="emsApplicantEducationInfoInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.emsApplicant}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.emsApplicant.label" default="Ems Applicant"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsApplicant" action="show" id="${emsApplicantEducationInfoInstance?.emsApplicant?.id}">
                                                    ${emsApplicantEducationInfoInstance?.emsApplicant?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.emsClass}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.emsClass.label" default="Ems Class"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="emsClass"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.titleOfInstitute}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.titleOfInstitute.label" default="Title Of Institute"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="titleOfInstitute"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.passingYear}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.passingYear.label" default="Passing Year"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="passingYear"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.result}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.result.label" default="Result"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="result"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.resultOutOf}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.resultOutOf.label" default="Result Out Of"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="resultOutOf"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.emsEducationBoard}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.emsEducationBoard.label" default="Ems Education Board"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="emsEducationBoard"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.emsGroup}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.emsGroup.label" default="Ems Group"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="emsGroup"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.sortOrder}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.sortOrder.label" default="Sort Order"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="sortOrder"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsApplicantEducationInfoInstance?.remarks}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsApplicantEducationInfo.remarks.label" default="Remarks"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsApplicantEducationInfoInstance}" field="remarks"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsStudentInstance?.emsApplicantEducationInfo?.size() > 0}"><hr></g:if>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <span class="property-label bold center">
                                            <g:message code="default.noRecordFound.label" default="No Record Found...!"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                    </div>
                </fieldset>
                <fieldset class="emsStudentFingerPrints-show">
                    <legend><g:message code="emsStudentFingerPrints.pageTitle.label" default="Ems Student Finger Prints Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsStudentInstance?.emsStudentFingerPrints}">
                            <g:each in="${emsStudentInstance?.emsStudentFingerPrints}" var="emsStudentFingerPrintsInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsStudentFingerPrintsInstance?.emsStudent}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsStudentFingerPrints.emsStudent.label" default="Ems Student"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsStudent" action="show" id="${emsStudentFingerPrintsInstance?.emsStudent?.id}">
                                                    ${emsStudentFingerPrintsInstance?.emsStudent?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsStudentFingerPrintsInstance?.comFingerPrint}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsStudentFingerPrints.comFingerPrint.label" default="Com Finger Print"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsStudentFingerPrintsInstance}" field="comFingerPrint"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsStudentFingerPrintsInstance?.fpData}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsStudentFingerPrints.fpData.label" default="Fp Data"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsStudentInstance?.emsStudentFingerPrints?.size() > 0}"><hr></g:if>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <span class="property-label bold center">
                                            <g:message code="default.noRecordFound.label" default="No Record Found...!"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                    </div>
                </fieldset>
                <fieldset class="emsStudentGuardians-show">
                    <legend><g:message code="emsStudentGuardians.pageTitle.label" default="Ems Student Guardians Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsStudentInstance?.emsStudentGuardians}">
                            <g:each in="${emsStudentInstance?.emsStudentGuardians}" var="emsStudentGuardiansInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsStudentGuardiansInstance?.emsStudent}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsStudentGuardians.emsStudent.label" default="Ems Student"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsStudent" action="show" id="${emsStudentGuardiansInstance?.emsStudent?.id}">
                                                    ${emsStudentGuardiansInstance?.emsStudent?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsStudentGuardiansInstance?.emsGuardian}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsStudentGuardians.emsGuardian.label" default="Ems Guardian"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsGuardian" action="show" id="${emsStudentGuardiansInstance?.emsGuardian?.id}">
                                                    ${emsStudentGuardiansInstance?.emsGuardian?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsStudentGuardiansInstance?.emsGuardianType}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsStudentGuardians.emsGuardianType.label" default="Ems Guardian Type"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsStudentGuardiansInstance}" field="emsGuardianType"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsStudentInstance?.emsStudentGuardians?.size() > 0}"><hr></g:if>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <span class="property-label bold center">
                                            <g:message code="default.noRecordFound.label" default="No Record Found...!"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                    </div>
                </fieldset>
            </section><!-- /.content -->
        </div>
    </body>
</html>