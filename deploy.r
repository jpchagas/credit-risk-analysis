install.packages('rsconnect')

library(rsconnect)

rsconnect::setAccountInfo(name='jpchagas',
                          token='9F56F9615E66D6C5A6BD527056E71DBF',
                          secret='LuZYmfSocyh1fnHQ1vQOLj6JwlTNtUMjsnl8awuG')

rsconnect::deployApp('/home/jpchagas/Projects/credit-risk-analysis')