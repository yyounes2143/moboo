package com.changdu.mobovideo.utils;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.Process;
import android.provider.Settings;
import com.changdu.component.cpuopt.CDCpuOptimize;
import com.changdu.mobovideo.VideoApplication;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\bJ\u0015\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\bJ\u0015\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0011\u0010\bJ\u0015\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0012\u0010\bJ\r\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0014\u0010\u0003J'\u0010\u0019\u001a\u00020\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u00152\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001d\u0010\u000fJ\u0015\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001e\u0010\u000fJ\r\u0010\u001f\u001a\u00020\u0013¢\u0006\u0004\b\u001f\u0010\u0003R\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcom/changdu/mobovideo/utils/AppUtil;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwww", "Lkotlin/Function0;", "action", "", "timeout", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/jvm/functions/Function0;Ljava/lang/Long;)V", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)J", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "handler", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAppUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppUtil.kt\ncom/changdu/mobovideo/utils/AppUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,392:1\n1869#2,2:393\n*S KotlinDebug\n*F\n+ 1 AppUtil.kt\ncom/changdu/mobovideo/utils/AppUtil\n*L\n265#1:393,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AppUtil {
    @NotNull
    public static final AppUtil INSTANCE = new AppUtil();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Handler f5647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MessageQueue messageQueue, MessageQueue.IdleHandler idleHandler, Function0 function0) {
        messageQueue.removeIdleHandler(idleHandler);
        function0.invoke();
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Long l, Handler handler, final MessageQueue.IdleHandler idleHandler, final Function0<Unit> function0, final MessageQueue messageQueue) {
        if (l != null) {
            handler.postDelayed(new Runnable() { // from class: com.changdu.mobovideo.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageQueue, idleHandler, function0);
                }
            }, l.longValue());
        }
        messageQueue.addIdleHandler(idleHandler);
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Handler handler, Function0 function0) {
        handler.removeCallbacksAndMessages(null);
        function0.invoke();
        return false;
    }

    public final void Wwwwwwwwwwwwwwww() {
        try {
            Runtime.getRuntime().gc();
            Runtime.getRuntime().runFinalization();
        } catch (Throwable unused) {
        }
    }

    public final void Wwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            try {
                CDCpuOptimize.INSTANCE.optimizeCpuCores();
            } catch (Throwable unused) {
            }
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwww(@NotNull Context context) {
        long Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwww2 == 0 || Wwwwwwwwwwwwwwwwwwwww2 > 4294967296L) {
            return false;
        }
        return true;
    }

    public final boolean Wwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return Intrinsics.areEqual(runningAppProcessInfo.processName, context.getPackageName());
                }
            }
            return true;
        }
        return true;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        long Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwww2 == 0 || Wwwwwwwwwwwwwwwwwwwww2 >= 3221225472L) {
            return false;
        }
        return true;
    }

    public final long Wwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        ActivityManager activityManager;
        Object systemService = context.getSystemService("activity");
        if (systemService instanceof ActivityManager) {
            activityManager = (ActivityManager) systemService;
        } else {
            activityManager = null;
        }
        if (activityManager == null) {
            return 0L;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwww(Context context) {
        try {
            Application application = (Application) context.getApplicationContext();
            Field field = application.getClass().getField("mLoadedApk");
            field.setAccessible(true);
            Object obj = field.get(application);
            Field declaredField = obj.getClass().getDeclaredField("mActivityThread");
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            return (String) obj2.getClass().getDeclaredMethod("getProcessName", null).invoke(obj2, null);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwww() {
        try {
            int myPid = Process.myPid();
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + myPid + "/cmdline")));
            String obj = StringsKt.trim((CharSequence) bufferedReader.readLine()).toString();
            bufferedReader.close();
            return obj;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        }
        return "";
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        String processName;
        if (Build.VERSION.SDK_INT >= 28) {
            processName = Application.getProcessName();
            return processName;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwww2.length() != 0) {
            return Wwwwwwwwwwwwwwwwwwwwwwww2;
        }
        String Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwww2.length() != 0) {
            return Wwwwwwwwwwwwwwwwwwwwwww2;
        }
        return Wwwwwwwwwwwwwwwwwwwwww(context);
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 1).versionName;
            if (str == null) {
                return "";
            }
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
            return "";
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Function0<Unit> function0, @Nullable Long l) {
        final Handler handler = new Handler(Looper.getMainLooper());
        MessageQueue.IdleHandler idleHandler = new MessageQueue.IdleHandler() { // from class: com.changdu.mobovideo.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // android.os.MessageQueue.IdleHandler
            public final boolean queueIdle() {
                boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(handler, function0);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        };
        if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(l, handler, idleHandler, function0, Looper.myQueue());
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(l, handler, idleHandler, function0, Looper.getMainLooper().getQueue());
        }
    }
}
