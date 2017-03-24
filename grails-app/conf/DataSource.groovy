dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "oracle.jdbc.OracleDriver"
    dialect = org.hibernate.dialect.Oracle10gDialect
    username = "R_EMS"
    password = "R_EMS"
}

hibernate {
    singleSession = true
    flush.mode = 'manual'
    cache.use_query_cache = false
    cache.use_second_level_cache = true
    jdbc.use_get_generated_keys = true
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory'
}

environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate'
            url = "jdbc:oracle:thin:@localhost:1521:xe"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:oracle:thin:@localhost:1521:xe"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:oracle:thin:@localhost:1521:xe"
            properties {
                jmxEnabled = true
                initialSize = 5
                maxActive = 50
                minIdle = 5
                maxIdle = 25
                maxWait = 10000
                maxAge = 10 * 60000
                timeBetweenEvictionRunsMillis = 5000
                minEvictableIdleTimeMillis = 60000
                validationQuery = "SELECT 1"
                validationQueryTimeout = 3
                validationInterval = 15000
                testOnBorrow = true
                testWhileIdle = true
                testOnReturn = false
                jdbcInterceptors = "ConnectionState"
                defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }
        }
    }
}