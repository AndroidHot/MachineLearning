# [Fetch]

import tensorflow as tf

# 需要获取的多个 tensor 值，在 op 的一次运行中一起获得(而不是逐个去获取 tensor)。
input1 = tf.constant(3.0)
input2 = tf.constant(4.0)
input3 = tf.constant(5.0)
temp = tf.add(input2, input3)
mul = tf.multiply(input1, temp)

with tf.Session() as sess:
    result = sess.run([mul, temp])
    print(result)