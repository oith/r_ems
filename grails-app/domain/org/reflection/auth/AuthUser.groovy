package org.reflection.auth

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes = 'username')
@ToString(includes = 'username', includeNames = true, includePackage = false)
class AuthUser implements Serializable {

    //private static final long serialVersionUID = 1

    transient springSecurityService;

    String  username,
            password,
            hdCode,
            fullName,
            displayName,
            phone,
            email,
            image,
            signature,
            remarks;
    Boolean enabled         = true,
            accountExpired  = false,
            accountLocked   = false,
            passwordExpired = false;
    Long    createdBy,
            modifiedBy;
    Date    createdDate     = new Date(),
            modifiedDate;

    AuthUser(String username, String password) {
        this()
        this.username = username
        this.password = password
    }

    Set<AuthRole> getAuthorities() {
        AuthLkUserRole.findAllByAuthUser(this)*.authRole
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }

    static transients = ['springSecurityService']

    static mapping = {
        table           'AUTH_USER';
        username        column: 'USER_NAME';
        password        column: '`PASSWORD`'
        enabled         column: 'IS_ENABLED';
        accountExpired  column: 'IS_ACCOUNT_EXPIRED';
        accountLocked   column: 'IS_ACCOUNT_LOCKED';
        passwordExpired column: 'IS_PASSWORD_EXPIRED';
        createdBy       column: 'CREATED_BY_ID';
        createdDate     column: 'CREATED_DATE';
        modifiedBy      column: 'MODIFIED_BY_ID';
        modifiedDate    column: 'MODIFIED_DATE';
    }

    static constraints = {
        fullName        nullable: false, size: 3..45;
        displayName     nullable: false, size: 3..9;
        password        nullable: false, size: 3..128;
        hdCode          nullable: false, size: 3..256, display: false;
        username        nullable: false, size: 3..9,   unique: true;
        enabled         nullable: false, size: 1..1;
        accountExpired  nullable: false, size: 1..1;
        accountLocked   nullable: false, size: 1..1;
        passwordExpired nullable: false, size: 1..1;
        createdDate     nullable: false, display: false;
        createdBy       nullable: false, display: false;

        phone           nullable: true, size: 4..14;
        email           nullable: true, email: true;
        image           nullable: true, size: 0..255;
        signature       nullable: true, size: 0..255;
        remarks         nullable: true, size: 0..255;
        modifiedDate    nullable: true, display: false;
        modifiedBy      nullable: true, display: false;
    }
}
