{- PP

Copyright (C) 2015, 2016, 2017 Christophe Delord

http://www.cdsoft.fr/pp

This file is part of PP.

PP is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

PP is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with PP.  If not, see <http://www.gnu.org/licenses/>.
-}

module Localization where

import Data.Time

-- "myLocale lang" returns the date format description for a given language.
myLocale :: String -> TimeLocale

-- french locale date format
myLocale "fr" = TimeLocale {
                    wDays = [("Dimanche","Dim")
                            ,("Lundi","Lun")
                            ,("Mardi","Mar")
                            ,("Mercredi","mer")
                            ,("Jeudi","Jeu")
                            ,("Vendredi","Ven")
                            ,("Samedi","Sam")],
                    months = [("Janvier","Jan")
                             ,("Février","Fev")
                             ,("Mars","Mar")
                             ,("Avril","Avr")
                             ,("Mai","Mai")
                             ,("Juin","Jui")
                             ,("Juillet","Jul")
                             ,("Août","Aou")
                             ,("Septembre","Sep")
                             ,("Octobre","Oct")
                             ,("Novembre","Nov")
                             ,("Décembre","Déc")],
                    amPm = ("AM","PM"),
                    knownTimeZones = [],
                    dateTimeFmt = "%a %b %e %H:%M:%S %Z %Y",
                    dateFmt = "%d/%m/%y",
                    timeFmt = "%H:%M:%S",
                    time12Fmt = "%I:%M:%S %p"
                }

-- italian locale date format
-- contributed by tajmone (https://github.com/tajmone)
myLocale "it" = TimeLocale {
                    wDays = [("domenica","dom")
                            ,("lunedì","lun")
                            ,("martedì","mar")
                            ,("mercoledì","mer")
                            ,("giovedì","gio")
                            ,("venerdì","ven")
                            ,("sabato","sab")],
                    months = [("gennaio","gen")
                             ,("febbraio","feb")
                             ,("marzo","mar")
                             ,("aprile","apr")
                             ,("maggio","mag")
                             ,("giugno","giu")
                             ,("luglio","lug")
                             ,("agosto","ago")
                             ,("settembre","set")
                             ,("ottobre","ott")
                             ,("novembre","nov")
                             ,("dicembre","dic")],
                    amPm = ("AM","PM"),
                    knownTimeZones = [],
                    dateTimeFmt = "%a %e %b %Y, %H:%M:%S %Z",
                    dateFmt = "%d/%m/%y",
                    timeFmt = "%H:%M:%S",
                    time12Fmt = "%I:%M:%S %p"
                }

-- English is the default locale
myLocale _ = defaultTimeLocale

