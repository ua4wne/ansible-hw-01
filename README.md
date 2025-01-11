## Задача 1

1. Попробуйте запустить playbook на окружении из test.yml, зафиксируйте значение, которое имеет факт some_fact для указанного хоста при выполнении playbook.

>Ответ: some_fact = 12

![play1](task1/play1.png)

2. Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на all default fact.

![all_fact](task1/all_fact.png)
![play2](task1/play2.png)

3. Воспользуйтесь подготовленным (используется docker) или создайте собственное окружение для проведения дальнейших испытаний.

![containers](task1/containers.png)

4. Проведите запуск playbook на окружении из prod.yml. Зафиксируйте полученные значения some_fact для каждого из managed host.

> Ответ: для для centos7 some_fact = "el", а для ubuntu some_fact = "deb"

![play3](task1/play3.png)

5. Добавьте факты в group_vars каждой из групп хостов так, чтобы для some_fact получились значения: для deb — deb default fact, для el — el default fact.

![deb](task1/deb_fact.png)
![el](task1/el_fact.png)

6. Повторите запуск playbook на окружении prod.yml. Убедитесь, что выдаются корректные значения для всех хостов.

![play4](task1/play4.png)

7. При помощи ansible-vault зашифруйте факты в group_vars/deb и group_vars/el с паролем netology.

![encrypt](task1/encrypt.png)

8. Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь в работоспособности.

![play5](task1/play5.png)

9. Посмотрите при помощи ansible-doc список плагинов для подключения. Выберите подходящий для работы на control node.

![doc](task1/doc.png)

10. В prod.yml добавьте новую группу хостов с именем local, в ней разместите localhost с необходимым типом подключения.

![local](task1/local.png)

11. Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь, что факты some_fact для каждого из хостов определены из верных group_vars.

>Ответ: факты some_fact для каждого из хостов определены из верных group_vars

![play6](task1/play6.png)

## Необязательная часть

1. При помощи ansible-vault расшифруйте все зашифрованные файлы с переменными.