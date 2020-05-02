> *У вас есть проблема. Вы решили использовать регулярные выражения чтобы её решить. Теперь у вас две проблемы.* Чёрная магия в деле.

## Pi-test

<img src="https://render.githubusercontent.com/render/math?math=\frac{\pi}{4}=\sum \frac{( - 1)^n}{2 \cdot n %2B 1}">


Python3:


n = 1000000

3.1415916535897743

Time 1.1266319751739502 s


n = 10000000

3.1415925535897915

Time 11.719210386276245 s


n = 100000000

3.141592643589326

Time 122.31052374839783 s



Perl 5


n = 1_000_000

3.14159165358977

Time of count: 1.0 s


n = 10_000_000

3.14159255358979

Time of count: 6.0 s


n = 100_000_000

3.14159264358933

Time of count: -6.0 s

Time of count: 1.0 min



Haskell


pi =1000000

3.1415973

Count time : 40.854997158s


---
### Источники вдохновения
* [Perl. 27 лет спустя](https://habr.com/ru/post/245659/)
* [Визуальный генератор регулярных выражений](https://habr.com/ru/post/315442/)
* [Регулярные выражения в Python](https://habr.com/ru/post/349860/)
* [Основы Linux от основателя Gentoo](https://habr.com/ru/post/99041/)
* [Книга с ламой](https://yadi.sk/i/fFFpD1iIjx4JnQ)
* [Книга с совами](https://yadi.sk/i/U8dhhWBfmoVEsw)
* [Книга с травой](https://gutl.jovenclub.cu/wp-content/uploads/2013/10/Linux.Shell_.Scripting.Cookbook.pdf)
* [How To Write Bash Scripts To Automate Linux](https://www.addictivetips.com/ubuntu-linux-tips/bash-scripts-to-automate-linux/)
* [Bash scripting cheatsheet](https://devhints.io/bash)
