#!/bin/bash
DOMAIN=${1:?'DOMAIN NAME is required'}

gcloud domains registrations transfer ${DOMAIN} --contact-data-from-file=contacts.yaml --contact-privacy=private-contact-data --yearly-price="12.00 USD" --authorization-code-from-file=code.txt
