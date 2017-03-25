<g:if test="${locationAccessibilityHierarchy != "" && locationAccessibilityHierarchy.contains("DIVISION")}">
    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
        <div class="form-group">
            <label class="required"><g:message code="division.divisionName.label" default="Division"/></label>
            %{--<g:select name="division" id="division_0" class="form-control division select-with-search" from="${divisionList}" value="${division}" optionKey="id" noSelection="['': 'Select One']"/>--}%
            <g:select name="division" id="division_0" class="form-control division" from="${divisionList}" value="${division}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
        </div>
    </div>
</g:if>

<g:if test="${locationAccessibilityHierarchy != "" && locationAccessibilityHierarchy.contains("DISTRICT")}">
    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
        <div class="form-group">
            <label class="required"><g:message code="district.districtName.label" default="District"/></label>
            %{--<g:select name="district" id="district_0" class="form-control district select-with-search" from="${districtList}" value="${district}" optionKey="id" noSelection="['': 'Select One']"/>--}%
            <g:select name="district" id="district_0" class="form-control district" from="${districtList}" value="${district}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
        </div>
    </div>
</g:if>

<g:if test="${locationAccessibilityHierarchy != "" && locationAccessibilityHierarchy.contains("UPAZILA")}">
    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
        <div class="form-group">
            <label class="required"><g:message code="upazila.upazilaName.label" default="Upazila"/></label>
            %{--<g:select name="upazila" id="upazila_0" class="form-control upazila select-with-search" from="${upazilaList}" value="${upazila}" optionKey="id" noSelection="['': 'Select One']"/>--}%
            <g:select name="upazila" id="upazila_0" class="form-control upazila" from="${upazilaList}" value="${upazila}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
        </div>
    </div>
</g:if>

<g:if test="${locationAccessibilityHierarchy != "" && locationAccessibilityHierarchy.contains("UNION_PARISHAD")}">
    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
        <div class="form-group">
            <label class="required"><g:message code="unionParishad.unionParishadName.label" default="Union Parishad"/></label>
            %{--<g:select name="unionParishad" id="unionParishad_0" class="form-control unionParishad select-with-search" from="${unionParishadList}" value="${unionParishad}" optionKey="id" noSelection="['': 'Select One']"/>--}%
            <g:select name="unionParishad" id="unionParishad_0" class="form-control unionParishad" from="${unionParishadList}" value="${unionParishad}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
        </div>
    </div>
</g:if>