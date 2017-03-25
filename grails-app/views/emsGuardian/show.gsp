
<%@ page import="org.reflection.ems.EmsGuardian" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsGuardian.pageTitle.label', default: 'Ems Guardian')}"/>
        <title><g:message code="default.show.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">

            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.show.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsGuardian/index">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-vimeo" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsGuardian/create">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-primary" action="create">
                                <i class="fa fa-plus-circle"></i> <g:message code="default.button.new.label" default="New"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsGuardian/edit/${emsGuardianInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-warning" action="edit" id="${emsGuardianInstance?.id}">
                                <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsGuardian/delete/${emsGuardianInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-danger" action="delete" id="${emsGuardianInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                <fieldset class="emsGuardian-show">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="property-show">

                                %{--<g:if test="${emsGuardianInstance?.comGender}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comGender.label" default="Com Gender"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comGender"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.comReligion}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comReligion.label" default="Com Religion"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comReligion"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.comTitle}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comTitle.label" default="Com Title"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comTitle"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.dob}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.dob.label" default="Dob"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsGuardianInstance?.dob}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.fullName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.fullName.label" default="Full Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="fullName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.comBloodGroup}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comBloodGroup.label" default="Com Blood Group"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comBloodGroup"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.comProfessionFather}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comProfessionFather.label" default="Com Profession Father"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comProfessionFather"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.comProfessionMother}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comProfessionMother.label" default="Com Profession Mother"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comProfessionMother"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.birthRegNo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.birthRegNo.label" default="Birth Reg No"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="birthRegNo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.email}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.email.label" default="Email"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="email"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.mobile}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.mobile.label" default="Mobile"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="mobile"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrmnHn}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrmnHn.label" default="Address Prmn Hn"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrmnHn"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrmnHnNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrmnHnNative.label" default="Address Prmn Hn Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrmnHnNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrmnPo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrmnPo.label" default="Address Prmn Po"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrmnPo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrmnPoNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrmnPoNative.label" default="Address Prmn Po Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrmnPoNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrmnVill}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrmnVill.label" default="Address Prmn Vill"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrmnVill"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrmnVillNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrmnVillNative.label" default="Address Prmn Vill Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrmnVillNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrsnHn}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrsnHn.label" default="Address Prsn Hn"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrsnHn"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrsnHnNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrsnHnNative.label" default="Address Prsn Hn Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrsnHnNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrsnPo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrsnPo.label" default="Address Prsn Po"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrsnPo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrsnPoNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrsnPoNative.label" default="Address Prsn Po Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrsnPoNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrsnVill}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrsnVill.label" default="Address Prsn Vill"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrsnVill"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.addressPrsnVillNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.addressPrsnVillNative.label" default="Address Prsn Vill Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="addressPrsnVillNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.fatherName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.fatherName.label" default="Father Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="fatherName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.fatherNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.fatherNameNative.label" default="Father Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="fatherNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.firstName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.firstName.label" default="First Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="firstName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.firstNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.firstNameNative.label" default="First Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="firstNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.fullNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.fullNameNative.label" default="Full Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="fullNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.imagePath}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.imagePath.label" default="Image Path"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="imagePath"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.lastName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.lastName.label" default="Last Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="lastName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.lastNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.lastNameNative.label" default="Last Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="lastNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.middleName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.middleName.label" default="Middle Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="middleName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.middleNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.middleNameNative.label" default="Middle Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="middleNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.motherName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.motherName.label" default="Mother Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="motherName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.motherNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.motherNameNative.label" default="Mother Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="motherNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.nickName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.nickName.label" default="Nick Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="nickName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.nickNameNative}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.nickNameNative.label" default="Nick Name Native"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="nickNameNative"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.comEducationLevel}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comEducationLevel.label" default="Com Education Level"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comEducationLevel"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childOneGender}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childOneGender.label" default="Child One Gender"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="childOneGender"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childThreeGender}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childThreeGender.label" default="Child Three Gender"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="childThreeGender"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childTwoGender}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childTwoGender.label" default="Child Two Gender"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="childTwoGender"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.comProfession}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comProfession.label" default="Com Profession"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comProfession"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.comProfessionSpouse}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.comProfessionSpouse.label" default="Com Profession Spouse"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="comProfessionSpouse"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childOneName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childOneName.label" default="Child One Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="childOneName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childThreeName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childThreeName.label" default="Child Three Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="childThreeName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childTwoName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childTwoName.label" default="Child Two Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="childTwoName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.nid}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.nid.label" default="Nid"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="nid"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.spouseName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.spouseName.label" default="Spouse Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="spouseName"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.spouseNameBng}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.spouseNameBng.label" default="Spouse Name Bng"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="spouseNameBng"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.tinNumber}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.tinNumber.label" default="Tin Number"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="tinNumber"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.voterIdentityNumber}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.voterIdentityNumber.label" default="Voter Identity Number"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="voterIdentityNumber"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.noOfChildren}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.noOfChildren.label" default="No Of Children"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianInstance}" field="noOfChildren"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childOneDob}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childOneDob.label" default="Child One Dob"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsGuardianInstance?.childOneDob}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childThreeDob}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childThreeDob.label" default="Child Three Dob"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsGuardianInstance?.childThreeDob}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.childTwoDob}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.childTwoDob.label" default="Child Two Dob"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsGuardianInstance?.childTwoDob}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.isFreedomFighter}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.isFreedomFighter.label" default="Is Freedom Fighter"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatBoolean boolean="${emsGuardianInstance?.isFreedomFighter}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.isEmailNotification}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.isEmailNotification.label" default="Is Email Notification"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatBoolean boolean="${emsGuardianInstance?.isEmailNotification}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianInstance?.isMobileNotification}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardian.isMobileNotification.label" default="Is Mobile Notification"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatBoolean boolean="${emsGuardianInstance?.isMobileNotification}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%
                            </div>
                        </div><!-- /.box-body -->
                    </div>  <!-- /.box box-primary -->
                </fieldset>

                
                <fieldset class="emsGuardianContactInfos-show">
                    <legend><g:message code="emsGuardianContactInfos.pageTitle.label" default="Ems Guardian Contact Infos Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsGuardianInstance?.emsGuardianContactInfos}">
                            <g:each in="${emsGuardianInstance?.emsGuardianContactInfos}" var="emsGuardianContactInfosInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsGuardianContactInfosInstance?.comContactType}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianContactInfos.comContactType.label" default="Com Contact Type"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianContactInfosInstance}" field="comContactType"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianContactInfosInstance?.contactValue}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianContactInfos.contactValue.label" default="Contact Value"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianContactInfosInstance}" field="contactValue"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianContactInfosInstance?.slNo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianContactInfos.slNo.label" default="Sl No"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianContactInfosInstance}" field="slNo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianContactInfosInstance?.imeiNo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianContactInfos.imeiNo.label" default="Imei No"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianContactInfosInstance}" field="imeiNo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianContactInfosInstance?.emsGuardian}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianContactInfos.emsGuardian.label" default="Ems Guardian"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsGuardian" action="show" id="${emsGuardianContactInfosInstance?.emsGuardian?.id}">
                                                    ${emsGuardianContactInfosInstance?.emsGuardian?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsGuardianInstance?.emsGuardianContactInfos?.size() > 0}"><hr></g:if>
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
                <fieldset class="emsGuardianEducationInfos-show">
                    <legend><g:message code="emsGuardianEducationInfos.pageTitle.label" default="Ems Guardian Education Infos Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsGuardianInstance?.emsGuardianEducationInfos}">
                            <g:each in="${emsGuardianInstance?.emsGuardianEducationInfos}" var="emsGuardianEducationInfosInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.comLookupEduSubGroup}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.comLookupEduSubGroup.label" default="Com Lookup Edu Sub Group"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="comLookup" action="show" id="${emsGuardianEducationInfosInstance?.comLookupEduSubGroup?.id}">
                                                    ${emsGuardianEducationInfosInstance?.comLookupEduSubGroup?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.comLookupEducation}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.comLookupEducation.label" default="Com Lookup Education"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="comLookup" action="show" id="${emsGuardianEducationInfosInstance?.comLookupEducation?.id}">
                                                    ${emsGuardianEducationInfosInstance?.comLookupEducation?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.organization}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.organization.label" default="Organization"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianEducationInfosInstance}" field="organization"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.result}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.result.label" default="Result"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianEducationInfosInstance}" field="result"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.resultOutOf}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.resultOutOf.label" default="Result Out Of"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianEducationInfosInstance}" field="resultOutOf"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.passingYear}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.passingYear.label" default="Passing Year"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianEducationInfosInstance}" field="passingYear"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.remarks}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.remarks.label" default="Remarks"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianEducationInfosInstance}" field="remarks"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.slNo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.slNo.label" default="Sl No"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianEducationInfosInstance}" field="slNo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.yearFrom}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.yearFrom.label" default="Year From"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianEducationInfosInstance}" field="yearFrom"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.yearTo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.yearTo.label" default="Year To"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianEducationInfosInstance}" field="yearTo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianEducationInfosInstance?.emsGuardian}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianEducationInfos.emsGuardian.label" default="Ems Guardian"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsGuardian" action="show" id="${emsGuardianEducationInfosInstance?.emsGuardian?.id}">
                                                    ${emsGuardianEducationInfosInstance?.emsGuardian?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsGuardianInstance?.emsGuardianEducationInfos?.size() > 0}"><hr></g:if>
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
                <fieldset class="emsGuardianJobHistory-show">
                    <legend><g:message code="emsGuardianJobHistory.pageTitle.label" default="Ems Guardian Job History Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${emsGuardianInstance?.emsGuardianJobHistory}">
                            <g:each in="${emsGuardianInstance?.emsGuardianJobHistory}" var="emsGuardianJobHistoryInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.department}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.department.label" default="Department"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianJobHistoryInstance}" field="department"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.job}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.job.label" default="Job"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianJobHistoryInstance}" field="job"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.jobDuration}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.jobDuration.label" default="Job Duration"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianJobHistoryInstance}" field="jobDuration"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.organization}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.organization.label" default="Organization"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianJobHistoryInstance}" field="organization"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.reasonForLeave}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.reasonForLeave.label" default="Reason For Leave"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianJobHistoryInstance}" field="reasonForLeave"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.responsibility}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.responsibility.label" default="Responsibility"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianJobHistoryInstance}" field="responsibility"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.sortOrder}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.sortOrder.label" default="Sort Order"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${emsGuardianJobHistoryInstance}" field="sortOrder"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.endDate}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.endDate.label" default="End Date"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsGuardianJobHistoryInstance?.endDate}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.startDate}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.startDate.label" default="Start Date"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsGuardianJobHistoryInstance?.startDate}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${emsGuardianJobHistoryInstance?.emsGuardian}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="emsGuardianJobHistory.emsGuardian.label" default="Ems Guardian"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="emsGuardian" action="show" id="${emsGuardianJobHistoryInstance?.emsGuardian?.id}">
                                                    ${emsGuardianJobHistoryInstance?.emsGuardian?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${emsGuardianInstance?.emsGuardianJobHistory?.size() > 0}"><hr></g:if>
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