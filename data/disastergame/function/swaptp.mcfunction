tag @n[tag=swap] add self
tag @e[tag=swap,tag=!self,sort=random,limit=1] add swaptarget
tp @s @n[tag=swaptarget]
kill @n[tag=swaptarget]
tag @n[tag=self] remove self