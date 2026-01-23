tag @n[tag=swap] add self
tag @e[tag=swap,tag=!self,sort=random,limit=1] add swaptarget
tp @s @n[tag=swaptarget]
tag @n[tag=swaptarget] add used
tag @n[tag=swaptarget] remove swaptarget
tag @n[tag=self] remove self