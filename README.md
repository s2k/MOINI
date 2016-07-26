# MOINI - Mobile Online Ice Man Network Interface

## BDD Live-Coding — Example

### Files & Folders

* `Gemfile`: Beschreibung welche Bibiliotheken benutzt werden
* `examples`: Beispiel für das 1. Szenario. 
* `bdd-01`: Verzeichnis in den Live-Codeing lief
  * Die Dateien/Verzeichnisse darin: Das Ergebnis des Live-Codings
    bis zu dem Punkt wo es sinnvoll erscheint von BDD zu TDD zu wechseln.
* `bin/initial_bdd_scripts.sh`: Script mit den ersten Schritten


### Sofern noch kein aktuelles Ruby auf dem Rechner ist…

1. Ruby installieren — da gibt es verschiedene Möglichkeiten
   * RVM: https://rvm.io/ — Funktioniert bei mir prima
   * chruby: https://github.com/postmodern/chruby — Benutzt OPS u.a. auf den Jenkinsen
   * rbenv: http://rbenv.org/
2. Ruby's Bibliotheken heißen `gems` und werden mit `gem install <gem_name>` installiert.
3. Mit `bundler` (http://bundler.io/) — und einem `Gemfile` werden in der Rubywelt Abhängigkeiten zu verwendeten Gems verwaltet. Installiert wird das mit `gem install bundler`

### Die Gems installieren 

Im `bdd_live_coding`-Verzeichnis `bundle install` ausführen -> die im `Gemfile` beschriebenen Gems werden installiert. Das Ganze sollte dann etwas so aussehen:

```
~/dev/bdd_live_coding/bdd-02 (master) >gem install bundler
Fetching: bundler-1.12.5.gem (100%)
Successfully installed bundler-1.12.5
1 gem installed
~/dev/bdd_live_coding/bdd-02 (master) >bundle install
Fetching gem metadata from https://rubygems.org/
Fetching version metadata from https://rubygems.org/
Installing awesome_print 1.7.0
Installing builder 3.2.2
.
.
.
Using bundler 1.12.5
.
.
.
Bundle complete! 6 Gemfile dependencies, 21 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
Post-install message from yard:
.
.
.
~/dev/bdd_live_coding/bdd-02 (master) >
```
