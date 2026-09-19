# Easy Effects Presets

Predefinições personalizadas para fones de ouvido configuradas para PipeWire/Easy Effects no Fedora Linux.

## Presets Inclusos
* `Musica_HiFi.json`: Equilíbrio estéreo plano com clareza para pop, eletrônica e acústico.
* `Filmes_Cinema.json`: Compressor vocal dinâmico para realçar falas e atenuar picos.
* `Metal_Moderno.json`: EQ cirúrgica contra frequências emboladas (320 Hz) e sibilância (3,8 kHz) para Metalcore/Djent.
* `Musica_Classica.json`: Amplo palco sonoro e brilho harmônico em instrumentos acústicos/orquestrais.

## Instalação
```bash
mkdir -p ~/.local/share/easyeffects/output
cp *.json ~/.local/share/easyeffects/output/
easyeffects -q && easyeffects --gapplication-service &!

