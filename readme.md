# Akradia IFTTT Notifier

Plugin do [Arkadia skryptów](https://github.com/tjurczyk/arkadia)
Minimalna wymagana wersja skryptów to 4.7

## Instalacja

```
/zainstaluj_plugin https://codeload.github.com/Delwing/arkadia-ifttt-notifier/zip/master
```

## Użytkowanie

Do użycia wymagane jest posiadanie konta na [IFTTT](https://ifttt.com/).

### Konfiguracja

Przechodzimy na stronę:
https://ifttt.com/maker_webhooks

Klikamy w `Documentation`. Naszym oczom ukaże się strona z naszym kluczem:

`Your key is: xxx`

Ustawiamy nasz token przez komendę:

```
/cset ifttt.token="xxx"
```

Następnie możemy stworzyć trigger, który będzie wysyłał nasz event. Np. trigger 
```
^Masz nowa poczte od (.*)\.&
```
Kod:
```
ifttt:sendEvent("arkadia_poczta", matches[2])
```

--- placeholder na screenshot ---

Do wywołania możemy przekzać dodatkowo do trzech zmiennych.

```
ifttt:sendEvent(name, value1, value2, value3)
```

### Przykład apletu

https://ifttt.com/applets/stSwB5FN
Aplet nasłuchuje eventu `arkadia` pod `value1` ma wiadomość, która zostanie wyświetlona w postaci powiadomienia aplikacji IFTTT na telefonie.
Aplet można dodać do swoich apletów.


### Definicja apletu w IFTTT

Klikany `Create`

-- placeholder na screenshot --

Następnie wybieramy `If this (add)`

-- placeholder na screenshot --

Wyszukujemy `Webhooks`

-- placeholder na screenshot --

Wybieramy `Receive a web request`

-- placeholder na screenshot --

Wpisujemy dowolny `Event Name` - później tą nazwę będziemy wykorzystywać w wywołaniu powiadomienia. Możemy utworzyć wiele takich eventów i wysyłać w zależności od potrzeb. Z powyższego przykładu możemy użyć `arkadia_poczta`

-- placeholder na screenshot --

Wybieramy `Then that`

-- placeholder na screenshot --

Wyszukujemy serwis, który ma zareagować na event np. 
* `Notification` (wymaga zainstalowania aplikacji IFTTT na telefon)
* `Android Device`

Założmy, że wybraliśmy powiadomienie na telefon.
Wybieramy `Send a notification from the IFTTT app`

-- placeholder na screenshot --

W polu message możemy wykorzystać zmienne `Value1`, `Value2`, `Value3`, przekazane podczas wywołania funkcji. Wystarczy kliknąć `Add ingredient`

Kontynuując wątek powiadomienia o poczcie powiniśmy wpisać coś w stylu:

```
Masz nową wiadomość od {{Value1}}
```

-- placeholder na screenshot --



