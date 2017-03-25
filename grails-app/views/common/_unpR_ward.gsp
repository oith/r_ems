<g:if test="${locationHierarchy.contains("UNION_PARISHAD")}">
    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
        <div class="form-group">
            <label class="required"><g:message code="unionParishad.unionParishadName.label" default="Union Parishad"/></label>
            %{--<g:select name="unionParishad" id="unionParishad_0" class="form-control unionParishad select-with-search" from="${unionParishadList}" value="${unionParishad}" optionKey="id" noSelection="['': 'Select One']"/>--}%
            <g:select name="unionParishad" id="unionParishad_0" class="form-control unionParishad" from="${unionParishadList}" value="${unionParishad}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
        </div>
    </div>
</g:if>

<g:if test="${locationHierarchy.contains("WARD")}">
    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
        <div class="form-group">
            <label><g:message code="ward.wardNo.label" default="Ward"/></label>
            %{--<g:select name="ward" id="ward_0" class="form-control ward select-with-search" from="${wardList}" value="${ward}" noSelection="['': 'Select One']"/>--}%
            <g:select name="ward" id="ward_0" class="form-control ward" from="${wardList}" value="${ward}" noSelection="['': 'Select One']"/>
        </div>
    </div>
</g:if>