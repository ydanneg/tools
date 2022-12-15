#!/bin/bash
DOMAIN=${1:?'DOMAIN NAME is required'}

gcloud domains registrations get-transfer-parameters ${DOMAIN}
