iterm2-borderless
================

Iterm2 binary borderless build on master#0232ba4

The patch applied to the original iterm2 is : 
`````diff
--- PseudoTerminal.m
+++ PseudoTerminal.m
@@ -323,8 +323,7 @@
             return NSBorderlessWindowMask;
 
         default:
-            return (NSTitledWindowMask |
-                    NSClosableWindowMask |
+            return (NSClosableWindowMask |
                     NSMiniaturizableWindowMask |
                     NSResizableWindowMask |
                     NSTexturedBackgroundWindowMask);
`````

Then a `xcodebuild`
