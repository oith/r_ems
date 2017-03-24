package org.reflection.com

import grails.transaction.Transactional

import javax.servlet.http.HttpServletRequest

@Transactional
class TrackerService {

    public String getIpAddress(HttpServletRequest request) {
        //is client behind something?
        String ipAddress = request.getHeader("X-FORWARDED-FOR");
        if (ipAddress == null) {
            ipAddress = request.getRemoteAddr();
        }
        return ipAddress
    }

//    private Response getIP(javax.servlet.http.HttpServletRequest request) throws UnknownHostException {
    public String getIP(javax.servlet.http.HttpServletRequest request) throws UnknownHostException {
        String remoteHost = request.getRemoteHost();
        String remoteAddr = request.getRemoteAddr();
        if (remoteAddr.equals("0:0:0:0:0:0:0:1")) {
            InetAddress localip = java.net.InetAddress.getLocalHost();
            remoteAddr = localip.getHostAddress();
            remoteHost = localip.getHostName();
        }
//        int remotePort = request.getRemotePort();
//        return remoteHost + " (" + remoteAddr + " : " + remotePort.toString() + ")";
        int remotePort = request.getRemotePort();
        return "remoteHost : " + remoteHost + ";\n" +
               "                       : remoteAddr : " + remoteAddr + ";\n" +
               "                       : remotePort : " + remotePort + ".";
    }

}
