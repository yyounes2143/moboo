package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class WorkSourceUtil {
    private static final int zza;
    private static final Method zzb;
    private static final Method zzc;
    private static final Method zzd;
    private static final Method zze;
    private static final Method zzf;
    private static final Method zzg;
    private static final Method zzh;
    private static final Method zzi;
    @GuardedBy("WorkSourceUtil.class")
    private static Boolean zzj;

    /* JADX WARN: Removed duplicated region for block: B:50:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            r0 = 2
            r1 = 0
            r2 = 1
            java.lang.Class<java.lang.String> r3 = java.lang.String.class
            java.lang.String r4 = "add"
            java.lang.Class r5 = java.lang.Integer.TYPE
            java.lang.Class<android.os.WorkSource> r6 = android.os.WorkSource.class
            int r7 = android.os.Process.myUid()
            com.google.android.gms.common.util.WorkSourceUtil.zza = r7
            r7 = 0
            java.lang.Class[] r8 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L1b
            r8[r1] = r5     // Catch: java.lang.Exception -> L1b
            java.lang.reflect.Method r8 = r6.getMethod(r4, r8)     // Catch: java.lang.Exception -> L1b
            goto L1c
        L1b:
            r8 = r7
        L1c:
            com.google.android.gms.common.util.WorkSourceUtil.zzb = r8
            java.lang.Class[] r8 = new java.lang.Class[r0]     // Catch: java.lang.Exception -> L29
            r8[r1] = r5     // Catch: java.lang.Exception -> L29
            r8[r2] = r3     // Catch: java.lang.Exception -> L29
            java.lang.reflect.Method r4 = r6.getMethod(r4, r8)     // Catch: java.lang.Exception -> L29
            goto L2a
        L29:
            r4 = r7
        L2a:
            com.google.android.gms.common.util.WorkSourceUtil.zzc = r4
            java.lang.String r4 = "size"
            java.lang.reflect.Method r4 = r6.getMethod(r4, r7)     // Catch: java.lang.Exception -> L33
            goto L34
        L33:
            r4 = r7
        L34:
            com.google.android.gms.common.util.WorkSourceUtil.zzd = r4
            java.lang.String r4 = "get"
            java.lang.Class[] r8 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L41
            r8[r1] = r5     // Catch: java.lang.Exception -> L41
            java.lang.reflect.Method r4 = r6.getMethod(r4, r8)     // Catch: java.lang.Exception -> L41
            goto L42
        L41:
            r4 = r7
        L42:
            com.google.android.gms.common.util.WorkSourceUtil.zze = r4
            java.lang.String r4 = "getName"
            java.lang.Class[] r8 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L4f
            r8[r1] = r5     // Catch: java.lang.Exception -> L4f
            java.lang.reflect.Method r4 = r6.getMethod(r4, r8)     // Catch: java.lang.Exception -> L4f
            goto L50
        L4f:
            r4 = r7
        L50:
            com.google.android.gms.common.util.WorkSourceUtil.zzf = r4
            boolean r4 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            if (r4 == 0) goto L5f
            java.lang.String r4 = "createWorkChain"
            java.lang.reflect.Method r4 = r6.getMethod(r4, r7)     // Catch: java.lang.Exception -> L5f
            goto L60
        L5f:
            r4 = r7
        L60:
            com.google.android.gms.common.util.WorkSourceUtil.zzg = r4
            boolean r4 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            if (r4 == 0) goto L7b
            java.lang.String r4 = "android.os.WorkSource$WorkChain"
            java.lang.Class r4 = java.lang.Class.forName(r4)     // Catch: java.lang.Exception -> L7b
            java.lang.String r8 = "addNode"
            java.lang.Class[] r0 = new java.lang.Class[r0]     // Catch: java.lang.Exception -> L7b
            r0[r1] = r5     // Catch: java.lang.Exception -> L7b
            r0[r2] = r3     // Catch: java.lang.Exception -> L7b
            java.lang.reflect.Method r0 = r4.getMethod(r8, r0)     // Catch: java.lang.Exception -> L7b
            goto L7c
        L7b:
            r0 = r7
        L7c:
            com.google.android.gms.common.util.WorkSourceUtil.zzh = r0
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            if (r0 == 0) goto L8e
            java.lang.String r0 = "isEmpty"
            java.lang.reflect.Method r0 = r6.getMethod(r0, r7)     // Catch: java.lang.Exception -> L8e
            r0.setAccessible(r2)     // Catch: java.lang.Exception -> L8f
            goto L8f
        L8e:
            r0 = r7
        L8f:
            com.google.android.gms.common.util.WorkSourceUtil.zzi = r0
            com.google.android.gms.common.util.WorkSourceUtil.zzj = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.WorkSourceUtil.<clinit>():void");
    }

    private WorkSourceUtil() {
    }

    @KeepForSdk
    public static void add(@NonNull WorkSource workSource, int i, @NonNull String str) {
        Method method = zzc;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        Method method2 = zzb;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
    }

    @NonNull
    @KeepForSdk
    public static WorkSource fromPackage(@NonNull Context context, @NonNull String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    "Could not get applicationInfo from package: ".concat(str);
                    return null;
                }
                int i = applicationInfo.uid;
                WorkSource workSource = new WorkSource();
                add(workSource, i, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                "Could not find package: ".concat(str);
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static WorkSource fromPackageAndModuleExperimentalPi(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        Method method;
        if (context == null || context.getPackageManager() == null || str2 == null || str == null) {
            return null;
        }
        int i = -1;
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo == null) {
                "Could not get applicationInfo from package: ".concat(str);
            } else {
                i = applicationInfo.uid;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            "Could not find package: ".concat(str);
        }
        if (i < 0) {
            return null;
        }
        WorkSource workSource = new WorkSource();
        Method method2 = zzg;
        if (method2 != null && (method = zzh) != null) {
            try {
                Object invoke = method2.invoke(workSource, null);
                int i2 = zza;
                if (i != i2) {
                    method.invoke(invoke, Integer.valueOf(i), str);
                }
                method.invoke(invoke, Integer.valueOf(i2), str2);
            } catch (Exception unused2) {
            }
        } else {
            add(workSource, i, str);
        }
        return workSource;
    }

    @KeepForSdk
    public static int get(@NonNull WorkSource workSource, int i) {
        Method method = zze;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, Integer.valueOf(i));
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return 0;
    }

    @NonNull
    @KeepForSdk
    public static String getName(@NonNull WorkSource workSource, int i) {
        Method method = zzf;
        if (method != null) {
            try {
                return (String) method.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return null;
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static List<String> getNames(@NonNull WorkSource workSource) {
        int size;
        ArrayList arrayList = new ArrayList();
        if (workSource == null) {
            size = 0;
        } else {
            size = size(workSource);
        }
        if (size != 0) {
            for (int i = 0; i < size; i++) {
                String name = getName(workSource, i);
                if (!Strings.isEmptyOrWhitespace(name)) {
                    Preconditions.checkNotNull(name);
                    arrayList.add(name);
                }
            }
        }
        return arrayList;
    }

    @KeepForSdk
    public static synchronized boolean hasWorkSourcePermission(@NonNull Context context) {
        synchronized (WorkSourceUtil.class) {
            Boolean bool = zzj;
            if (bool != null) {
                return bool.booleanValue();
            }
            boolean z = false;
            if (context == null) {
                return false;
            }
            if (ContextCompat.checkSelfPermission(context, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                z = true;
            }
            zzj = Boolean.valueOf(z);
            return z;
        }
    }

    @KeepForSdk
    public static boolean isEmpty(@NonNull WorkSource workSource) {
        Method method = zzi;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, null);
                Preconditions.checkNotNull(invoke);
                return ((Boolean) invoke).booleanValue();
            } catch (Exception unused) {
            }
        }
        if (size(workSource) == 0) {
            return true;
        }
        return false;
    }

    @KeepForSdk
    public static int size(@NonNull WorkSource workSource) {
        Method method = zzd;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, null);
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return 0;
            }
        }
        return 0;
    }
}
