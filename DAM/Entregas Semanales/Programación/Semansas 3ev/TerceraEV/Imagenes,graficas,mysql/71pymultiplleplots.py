import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 2 * np.pi, 400)
y = np.sin(x ** 2)

fig, axs = plt.subplots(4,3)

axs[0,0].plot(x,y)
axs[0,1].plot(x,y, 'tab:orange')
axs[0,2].plot(x,y, 'tab:orange')

axs[1,0].plot(x,y, 'tab:orange')
axs[1,1].plot(x,y, 'tab:red')
axs[1,2].plot(x,y, 'tab:orange')

axs[2,0].plot(x,y, 'tab:orange')
axs[2,1].plot(x,y, 'tab:red')
axs[2,2].plot(x,y, 'tab:orange')

axs[3,0].plot(x,y, 'tab:green')
axs[3,1].plot(x,y, 'tab:orange')
axs[3,2].plot(x,y, 'tab:blue')

for ax in axs.flat:
    ax.set(xlabel='xlabel', ylabel='y-label')

for ax in axs.flat:
    ax.label_outer()


plt.show()
