package com.changdu.mobovideo.utils;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.webkit.WebView;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\tH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u000bJ\u000f\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/changdu/mobovideo/utils/CommonUtil;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "suffix", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommonUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonUtil.kt\ncom/changdu/mobovideo/utils/CommonUtil\n*L\n1#1,167:1\n89#1,7:168\n89#1,7:175\n*S KotlinDebug\n*F\n+ 1 CommonUtil.kt\ncom/changdu/mobovideo/utils/CommonUtil\n*L\n74#1:168,7\n81#1:175,7\n*E\n"})
/* loaded from: classes3.dex */
public final class CommonUtil {
    @NotNull
    public static final CommonUtil INSTANCE = new CommonUtil();

    @TargetApi(28)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        File dataDir;
        boolean z;
        try {
            dataDir = context.getDataDir();
            String absolutePath = dataDir.getAbsolutePath();
            File file = new File(absolutePath + "/app_webview" + str + "/webview_data.lock");
            if (file.exists()) {
                try {
                    new RandomAccessFile(file, "rw").getChannel().tryLock().close();
                } catch (Exception unused) {
                    if (file.exists()) {
                        z = file.delete();
                    } else {
                        z = false;
                    }
                    if (z && !file.exists()) {
                        file.createNewFile();
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                String str = "";
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                if (!Intrinsics.areEqual(context.getPackageName(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = context.getPackageName();
                    }
                    WebView.setDataDirectorySuffix(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    str = "_" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str);
            } catch (Exception unused) {
            }
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
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

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
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

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
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
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        String processName;
        if (Build.VERSION.SDK_INT >= 28) {
            processName = Application.getProcessName();
            return processName;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() != 0) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() != 0) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }
}
