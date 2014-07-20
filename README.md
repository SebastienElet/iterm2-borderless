iterm2-borderless
================

Iterm2 binary borderless build on master#6b8cb23

The patch applied to the original iterm2 is : 
`````diff
--- a/PseudoTerminal.m
+++ b/PseudoTerminal.m
@@ -303,8 +303,7 @@ NSString *kSessionsKVCKey = @"sessions";
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
