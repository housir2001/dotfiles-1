#!/bin/bash 

test='{"header":{"mediaType":"application/vnd.com.sixt.bi.Vinmap.v1+json","sourceDateTime":"2020-10-13T11:22:06.931+02:00","correlationId":"fd2f651b-a669-43b1-ac0a-39e1be481036","distributionKey":null},"body":{"country":"US","effectiveDate":"2016-09-01","modelYear":2017,"algCode":"020125115","make":"ACURA","model":"ILX","trim":"4dr Sdn 2.4L Premium","vinPattern":"19UDE2F7 H","modelNumber":"DE2F7HJNW","importDate":"2020-10-13T09:22:06.864Z"}}'

echo $1 | jq -r "."


