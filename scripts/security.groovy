#!groovy

import jenkins.model.*
import hudson.security.*
import hudson.model.User
import jenkins.security.ApiTokenProperty
import org.apache.commons.lang.RandomStringUtils

def instance = Jenkins.getInstance()

def hudsonRealm = new HudsonPrivateSecurityRealm(false)
String charset = (('a'..'z') + ('A'..'Z') + ('0'..'9')).join()
def password = RandomStringUtils.random(12, charset.toCharArray())
def user = hudsonRealm.createAccount('admin', password)
instance.setSecurityRealm(hudsonRealm)
def token = user.getProperty(ApiTokenProperty.class).getApiTokenInsecure()
new File('/usr/share/jenkins/ref/admintoken') << token
new File('/usr/share/jenkins/ref/password') << password
println 'Admin password is: ' + password
def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
instance.setAuthorizationStrategy(strategy)
instance.save()
