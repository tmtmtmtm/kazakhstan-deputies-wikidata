#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

kk_cat = WikiData::Category.new('Санат:Қазақстан Парламенті Мәжiлiсінің депутаттары', 'kk').member_titles |
         WikiData::Category.new('Санат:Қазақстан Парламенті Мәжiлiсінің V шақырылымының депутаттары', 'kk').member_titles
ru_cat = WikiData::Category.new('Категория:Депутаты Мажилиса Парламента Казахстана', 'ru').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { kk: kk_cat, ru: ru_cat })
