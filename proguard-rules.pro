# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/Chimit/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can editGlobal the include path and order by changing the proguardFiles
# directive in buildTab.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-dontwarn java.lang.invoke.*
-keep class android.support.** { *; }
-keep interface android.support.** { *; }
-keep public class **.BuildConfig { *; }
-keep class **$$Parcelable { *; }

-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
    public static int e(...);
}

-assumenosideeffects class com.rusve.aio.core.helpers.TimeProfiler {
    public static void start(...);
    public static void end(...);
}