# Finder
Ruby script that takes a single regular expression as a command line argument and searches the current directory and all its subdirectories for   
1.) files with names that match the given regular expression and  
2.) files that have content that matches the given regular expression.  
  
For files that have content matching the regular expression, it prints the filename and then every line (with line numbers) that match the regular expression.

How to run:
1.) cd into the directory containing the file "rfind.rb"  
2.) if you are looking for files, folders, or lines matching the regex "chico", type:   
$ ruby rfind chico  
3.) if you are looking for files, folders, or lines containing the text "testing" and have the character '=' somewhere after the phrase, type:  
$ ruby rfind testing.*=  
4.) You can optionally limit the files to search by enter the valid file extensions after the search expression, with each file extension seperated by a comma. The example below searches only html, rb, and txt files.  
$ ruby rfind testing.*= html,rb,txt

_____

Copyright © Yaseen Aniss 2023

All rights reserved. No part of this code may be reproduced, distributed, or transmitted in any form or by any means, including photocopying, recording, or other electronic or mechanical methods, without the prior written permission of the copyright owner, except in the case of brief quotations embodied in critical reviews and certain other noncommercial uses permitted by copyright law.

For permission requests, please contact anissyaseen@gmail.com
