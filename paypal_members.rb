#!/usr/bin/env ruby

c = {
  date: 0,
  time: 1,
  time_zone: 2,
  name: 3,
  type: 4,
  status: 5,
  currency: 6,
  gross: 7,
  fee: 8,
  net: 9,
  from_email_address: 10,
  to_email_address: 11,
  transaction_id: 12,
  counteryparty_status: 13,
  address_status: 14,
  item_title: 15,
  item_id: 16,
  shipping: 17,
  insurance: 18,
  tax: 19,
  option1_name: 20,
  option1_value: 21,
  option2_name: 22,
  option2_value: 23,
  auction_site: 24,
  buyer_id: 25,
  item_url: 26,
  closing_date: 27,
  escrow: 28,
  invoice_id: 29,
  reference_txn_id: 30,
  invoice_number: 31,
  custom_number: 32,
  receipt_id: 33,
  balance: 34,
  address_line_1: 35,
  address_line_2: 36,
  city: 37,
  state: 38,
  zip: 39,
  country: 40,
  phone:41
}

cleaned_customers = Array.new
require 'csv'
require 'pry'

CSV.foreach('Download.csv', encoding: 'windows-1251:utf-8') do |row|
  if row[c[:type]] =~ /Received/
    cleaned_customers << [
      row[c[:date]],
      row[c[:name]],
      row[c[:type]],
      row[c[:gross]],
      row[c[:from_email_address]],
      row[c[:item_title]],
      row[c[:address_line_1]],
      row[c[:address_line_2]],
      row[c[:city]],
      row[c[:state]],
      row[c[:zip]],
      row[c[:country]],
      row[c[:phone]],
    ]
  end
end


csv_string = CSV.generate(force_quotes: true) do |csv|
  csv << %w[date name type gross email item_title address1 address2 city state zip country phone]
  cleaned_customers.each do |o|
    csv << o
  end
end

File.open("cleaned_customers.csv", 'w') { |file| file.write(csv_string) }


