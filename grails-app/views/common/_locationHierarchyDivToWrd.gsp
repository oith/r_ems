<g:render template="../common/locationHierarchyDivToUnp" model="${[
        locationAccessibilityHierarchy: locationAccessibilityHierarchy,
        divisionList                  : divisionList,
        districtList                  : districtList,
        upazilaList                   : upazilaList,
        unionParishadList             : unionParishadList,
        division                      : division,
        district                      : district,
        upazila                       : upazila,
        unionParishad                 : unionParishad,
]}"/>

<g:if test="${locationAccessibilityHierarchy != "" && locationAccessibilityHierarchy.contains("WARD")}">
    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
        <div class="form-group">
            <label><g:message code="ward.wardNo.label" default="Ward"/></label>
            %{--<g:select name="ward" id="ward_0" class="form-control ward select-with-search" from="${wardList}" value="${ward}" noSelection="['': 'Select One']"/>--}%
            <g:select name="ward" id="ward_0" class="form-control ward" from="${wardList}" value="${ward}" optionKey="id" optionValue="name" noSelection="['': 'Select One']"/>
        </div>
    </div>
</g:if>