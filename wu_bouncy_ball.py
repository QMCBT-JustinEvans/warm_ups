#!/usr/bin/env python
# coding: utf-8

# # Bouncy Ball Warmup:
# A ball is dropped and bounces.   
# At each rebound, the ball reaches half the height of the previous rebound.  
# How high must the ball be dropped so it reaches exactly the height h after the sixth rebound?  
# Write a .py script that accepts an integer from the user that represents the height of the ball after the sixth rebound.  
# 
# Your .py script should print out the height that the ball must be drop at to reach the given height at the sixth rebound.

# In[1]:


height = int(input('What height is the ball at: '))

starting_height = height * (2 ** 6)

print(f'The ball started at height {starting_height}')


# In[ ]:




