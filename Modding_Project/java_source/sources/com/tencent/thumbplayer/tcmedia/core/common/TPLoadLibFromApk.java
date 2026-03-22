package com.tencent.thumbplayer.tcmedia.core.common;

import android.content.Context;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes6.dex */
public final class TPLoadLibFromApk {
    private static final HashMap<String, WeakReference<ClassLoader>> mLoadedLibs = new HashMap<>();
    private static Context mContext = null;

    /* loaded from: classes6.dex */
    public static class LibraryBrokenHandler implements Thread.UncaughtExceptionHandler {
        private Thread.UncaughtExceptionHandler mParent;

        public LibraryBrokenHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.mParent = uncaughtExceptionHandler;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if ((th instanceof UnsatisfiedLinkError) || ((th instanceof NoSuchMethodError) && th.getMessage().matches(".*sig(nature)?[=:].*"))) {
                try {
                    TPLoadLibFromApk.extractAllLibraries(TPLoadLibFromApk.mContext);
                    th = new UnsatisfiedLinkError("Invalid so detected and recovered.").initCause(th);
                } catch (Exception unused) {
                }
            }
            this.mParent.uncaughtException(thread, th);
        }
    }

    private TPLoadLibFromApk() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void extractAllLibraries(Context context) {
        if (context == null) {
            return;
        }
        List<String> generateAbiList = generateAbiList();
        File dir = context.getDir("recover_lib", 0);
        ZipFile zipFile = new ZipFile(context.getApplicationInfo().sourceDir);
        try {
            HashSet hashSet = new HashSet();
            Pattern compile = Pattern.compile("lib/[A-Za-z0-9-_=]+/lib([A-Za-z0-9-_=]+)\\.so");
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                String name = nextElement.getName();
                if (!TextUtils.isEmpty(name) && name.contains("../")) {
                    throw new Exception("contain ../, throw err");
                }
                Matcher matcher = compile.matcher(nextElement.getName());
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    if (!hashSet.contains(group)) {
                        extractLibrary(zipFile, group, generateAbiList, new File(dir, SAPropertyFilter.LIB + group + ".so"));
                        hashSet.add(group);
                    }
                }
            }
            zipFile.close();
        } catch (Throwable th) {
            zipFile.close();
            throw th;
        }
    }

    private static boolean extractLibrary(ZipFile zipFile, String str, List<String> list, File file) {
        if (file.isFile()) {
            return true;
        }
        Iterator<String> it = list.iterator();
        if (!it.hasNext()) {
            return false;
        }
        ZipEntry entry = zipFile.getEntry("lib/" + it.next() + "/lib" + str + ".so");
        if (entry == null) {
            return false;
        }
        String name = entry.getName();
        if (!TextUtils.isEmpty(name) && name.contains("../")) {
            return false;
        }
        InputStream inputStream = zipFile.getInputStream(entry);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[2048];
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, 2048);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        file.setReadOnly();
                        return true;
                    } catch (Throwable unused) {
                        return false;
                    }
                }
            } finally {
                inputStream.close();
                fileOutputStream.close();
            }
        }
    }

    public static String find(String str, Context context) {
        String str2 = null;
        if (context == null) {
            return null;
        }
        try {
            ClassLoader classLoader = TPLoadLibFromApk.class.getClassLoader();
            Method declaredMethod = ClassLoader.class.getDeclaredMethod("findLibrary", String.class);
            declaredMethod.setAccessible(true);
            str2 = (String) declaredMethod.invoke(classLoader, str);
        } catch (Exception unused) {
        }
        if (str2 == null) {
            File dir = context.getDir("recover_lib", 0);
            File file = new File(dir, SAPropertyFilter.LIB + str + ".so");
            if (file.canRead()) {
                return file.getAbsolutePath();
            }
            return str2;
        }
        return str2;
    }

    private static List<String> generateAbiList() {
        ArrayList arrayList = new ArrayList(3);
        Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
        String str = (String) method.invoke(null, "ro.product.cpu.abi");
        if (str != null && str.length() > 0) {
            arrayList.add(str);
        }
        String str2 = (String) method.invoke(null, "ro.product.cpu.abi2");
        if (str2 != null && str2.length() > 0) {
            arrayList.add(str2);
        }
        arrayList.add("armeabi");
        return arrayList;
    }

    public static boolean load(String str, ClassLoader classLoader, Context context) {
        ClassLoader classLoader2;
        if (str == null || str.length() == 0 || classLoader == null) {
            return false;
        }
        mContext = context;
        HashMap<String, WeakReference<ClassLoader>> hashMap = mLoadedLibs;
        synchronized (hashMap) {
            try {
                WeakReference<ClassLoader> weakReference = hashMap.get(str);
                if (weakReference != null) {
                    classLoader2 = weakReference.get();
                } else {
                    classLoader2 = null;
                }
                if (classLoader2 != null) {
                    if (classLoader2 == classLoader) {
                        TPNativeLog.printLog(2, "callerClassLoader has already load ! name=".concat(str));
                        return true;
                    }
                    throw new UnsatisfiedLinkError("Library '" + str + "' was loaded by a different ClassLoader.");
                } else if (context == null) {
                    try {
                        TPNativeLog.printLog(2, "context is null,load by System.loadLibrary,name= ".concat(str));
                        reflectSystemLoadLibrary(str, classLoader);
                        synchronized (hashMap) {
                            hashMap.put(str, new WeakReference<>(classLoader));
                        }
                        return true;
                    } catch (InvocationTargetException e) {
                        throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed loading library: ".concat(str)).initCause(e.getCause()));
                    } catch (Exception e2) {
                        throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed loading library: ".concat(str)).initCause(e2));
                    }
                } else {
                    File dir = context.getDir("recover_lib", 0);
                    File file = new File(dir, SAPropertyFilter.LIB + str + ".so");
                    UnsatisfiedLinkError loadFromRecovery = loadFromRecovery(str, classLoader, context, file);
                    if (loadFromRecovery == null) {
                        return true;
                    }
                    return loadFromApk(str, classLoader, context, file, loadFromRecovery);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean loadFromApk(String str, ClassLoader classLoader, Context context, File file, UnsatisfiedLinkError unsatisfiedLinkError) {
        String str2;
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        try {
            try {
                str2 = context.getApplicationInfo().sourceDir;
                zipFile = new ZipFile(str2);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            TPNativeLog.printLog(2, "unzip apk,name= " + str + "apkPath=" + str2);
            if (extractLibrary(zipFile, str, generateAbiList(), file)) {
                try {
                    zipFile.close();
                    try {
                        TPNativeLog.printLog(2, "load from unzip apk,name= ".concat(String.valueOf(str)));
                        reflectSystemLoad(file.getAbsolutePath(), classLoader);
                        HashMap<String, WeakReference<ClassLoader>> hashMap = mLoadedLibs;
                        synchronized (hashMap) {
                            hashMap.put(str, new WeakReference<>(classLoader));
                        }
                        return true;
                    } catch (InvocationTargetException e2) {
                        if (unsatisfiedLinkError == null) {
                            throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library: ".concat(String.valueOf(str))).initCause(e2.getCause()));
                        }
                        throw unsatisfiedLinkError;
                    } catch (Exception e3) {
                        if (unsatisfiedLinkError == null) {
                            throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library.").initCause(e3));
                        }
                        throw unsatisfiedLinkError;
                    }
                } catch (IOException unused) {
                    return false;
                }
            }
            throw new RuntimeException("Can't find recover library: ".concat(String.valueOf(str)));
        } catch (Exception e4) {
            e = e4;
            throw ((UnsatisfiedLinkError) new UnsatisfiedLinkError("Failed recovering native library.").initCause(e));
        } catch (Throwable th2) {
            th = th2;
            zipFile2 = zipFile;
            if (zipFile2 != null) {
                try {
                    zipFile2.close();
                } catch (IOException unused2) {
                    return false;
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2 A[Catch: all -> 0x00ac, TRY_ENTER, TryCatch #6 {UnsatisfiedLinkError -> 0x00b3, InvocationTargetException -> 0x00b1, all -> 0x00af, blocks: (B:27:0x008f, B:28:0x00a1, B:29:0x00a2, B:30:0x00aa), top: B:54:0x008f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.UnsatisfiedLinkError loadFromRecovery(java.lang.String r4, java.lang.ClassLoader r5, android.content.Context r6, java.io.File r7) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.core.common.TPLoadLibFromApk.loadFromRecovery(java.lang.String, java.lang.ClassLoader, android.content.Context, java.io.File):java.lang.UnsatisfiedLinkError");
    }

    private static void reflectSystemLoad(String str, ClassLoader classLoader) {
        Runtime runtime = Runtime.getRuntime();
        Method declaredMethod = runtime.getClass().getDeclaredMethod("load", String.class, ClassLoader.class);
        declaredMethod.setAccessible(true);
        declaredMethod.invoke(runtime, str, classLoader);
    }

    private static void reflectSystemLoadLibrary(String str, ClassLoader classLoader) {
        Runtime runtime = Runtime.getRuntime();
        Method declaredMethod = runtime.getClass().getDeclaredMethod("loadLibrary", String.class, ClassLoader.class);
        declaredMethod.setAccessible(true);
        declaredMethod.invoke(runtime, str, classLoader);
    }

    public static void setupBrokenLibraryHandler() {
        Thread.setDefaultUncaughtExceptionHandler(new LibraryBrokenHandler(Thread.getDefaultUncaughtExceptionHandler()));
    }
}
