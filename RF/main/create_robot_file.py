#!/usr/bin/python
import json
import os
import argparse

msg     = "This code is used to create platform regression wrapper file in robote framework"

#initialise parser
argparse= argparse.ArgumentParser(description=msg)

#addting optional argument
argparse.add_argument('--type',help='Choose the type of regression to be execute\n1.HA\n2.Standalone')

#reading arguments from command line
args    = argparse.parse_args()

#assaigning to new varaible
type    = "Standalone" if args.type==None else args.type

testSuitPath	= os.path.dirname(os.getcwd())

with open(testSuitPath+"\\Resources\\robo_setting.json",'r') as f:content=json.load(f)
with open(testSuitPath+"\\Resources\\"+type+"_tc_info.json","r") as f1:content1=json.load(f1)

file1	= open(testSuitPath+"\\TestSuits\\Standaloneregression\\run_platform_regression.robot","w")

for key in content.keys():
	file1.write("*"*3+" "+key+" "+"*"*3+"\n")
	for k,v in content[key].items():
		file1.write(k+"\t"+v+"\n")
file1.write("\n")

for key in content1.keys():
	file1.write("*"*3+" "+key+" "+"*"*3+"\n")
	for TC_ID in content1[key].keys():
		file1.write("Execute "+TC_ID+"\t\t"+TC_ID+"\t\t"+ content1[key][TC_ID]["Result"]+"\t\t"+content1[key][TC_ID]["multiTest"]+"\n")
		file1.write("\t\t [tags]\t\t"+content1[key][TC_ID]["Module/Action"]+"\n\n")
file1.close()

