package org.reflection.auth

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import org.springframework.http.HttpMethod

@EqualsAndHashCode(includes = ['configAttribute', 'httpMethod', 'url'])
@ToString(includes = ['configAttribute', 'httpMethod', 'url'], cache = true, includeNames = true, includePackage = false)
class AuthRequestMap implements Serializable {

    //private static final long serialVersionUID = 1

    AuthUser   createdBy,
               modifiedBy
    HttpMethod httpMethod

    String     url,
               configAttribute
    Boolean    isActive     = true
    Date       createdDate  = new Date(),
               modifiedDate

    AuthRequestMap(String url, String configAttribute, HttpMethod httpMethod = null) {
        this()
        this.configAttribute = configAttribute
        this.httpMethod      = httpMethod
        this.url             = url
    }

    static mapping = {
        cache        true
        table        'AUTH_REQUEST_MAP'
        createdBy    column: 'CREATED_BY_ID'
        createdDate  column: 'CREATED_DATE'
        modifiedBy   column: 'MODIFIED_BY_ID'
        modifiedDate column: 'MODIFIED_DATE'
    }

    static constraints = {
        createdBy       nullable: false, display: false
        createdDate     nullable: false, display: false
        url             nullable: false, unique: 'httpMethod'
        configAttribute nullable: false

        isActive        nullable: true
        httpMethod      nullable: true
        modifiedBy      nullable: true, display: false
        modifiedDate    nullable: true, display: false
    }
}
