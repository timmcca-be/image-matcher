# image matcher

useful if you have a large collection of high-quality photos (`to-check`), and low-quality versions of a select few photos that you want to find in the high-quality collection (`to-match`).

## usage

```
./setup.sh
./generate-phashes.sh path/to/low/quality/collection > out/to-match.csv
./generate-phashes.sh path/to/high/quality/collection > out/to-check.csv
./compare-phashes.sh out/to-match.csv out/to-check.csv
```
