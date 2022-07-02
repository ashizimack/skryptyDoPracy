import pandas as pd

data=pd.read_csv('/home/kb/poprawiony',sep='|', header=None, parse_dates=True)
Frame=pd.DataFrame(data.values, columns = ["dzień", "ping"])
print(Frame)
Frame.plot(kind='line',x='dzień',y='ping')
