package com.changdu.mobovideo.utils;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import com.changdu.mobovideo.VideoApplication;
import com.unity3d.services.UnityAdsConstants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\r\u0010\u000bJ\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0010J\r\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b\u0012\u0010\u0010J\r\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0010J\r\u0010\u0014\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0010J\r\u0010\u0015\u001a\u00020\u000e¢\u0006\u0004\b\u0015\u0010\u0010J!\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u000e¢\u0006\u0004\b\u001d\u0010\u0010J\r\u0010\u001e\u001a\u00020\u000e¢\u0006\u0004\b\u001e\u0010\u0010J\u000f\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010\u0003R\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010)\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010(R\u0016\u0010,\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010-\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010+¨\u0006."}, d2 = {"Lcom/changdu/mobovideo/utils/AppBizDataManager;", "", "<init>", "()V", "", "delay", "", "Wwwwwwwwwwwwwwww", "(J)V", "Lcom/changdu/mobovideo/utils/ALocalCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/changdu/mobovideo/utils/ALocalCache;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "context", "type", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "mHandler", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "mLastManualTriggerGC", "", "Z", "mIsWaitingManualTriggerGC", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "baseDirPath", "baseDataDirPath", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AppBizDataManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static long f5645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final AppBizDataManager INSTANCE = new AppBizDataManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Handler f5646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f5642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    public static final void Wwwwwwwwwwwwww() {
        INSTANCE.Wwwwwwwwwwwwwwwwww();
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwww(AppBizDataManager appBizDataManager, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 15000;
        }
        appBizDataManager.Wwwwwwwwwwwwwwww(j);
    }

    public static final void Wwwwwwwwwwwwwwwww(long j) {
        f5644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        f5645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new AppBizDataManager$realTryTriggerGC$2$1(null), 3, null);
    }

    public static /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppBizDataManager appBizDataManager, Context context, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return appBizDataManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str);
    }

    public final void Wwwwwwwwwwwwwwww(long j) {
        f5646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.postDelayed(new Runnable() { // from class: com.changdu.mobovideo.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AppBizDataManager.Wwwwwwwwwwwwww();
            }
        }, j);
    }

    public final void Wwwwwwwwwwwwwwwwww() {
        try {
            final long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - f5645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (j >= UnityAdsConstants.Timeout.INIT_TIMEOUT_MS) {
                f5645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = currentTimeMillis;
                BuildersKt__Builders_commonKt.launch$default(CoroutineUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, new AppBizDataManager$realTryTriggerGC$1(null), 3, null);
            } else if (j > 0 && !f5644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                f5644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                f5646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.postDelayed(new Runnable() { // from class: com.changdu.mobovideo.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppBizDataManager.Wwwwwwwwwwwwwwwww(currentTimeMillis);
                    }
                }, j);
            }
        } catch (Throwable unused) {
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 + "/userBiz";
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + "/userBiz";
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwww2 + "/cache";
    }

    @Nullable
    public final ALocalCache Wwwwwwwwwwwwwwwwwwwwww() {
        try {
            return ALocalCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new File(Wwwwwwwwwwwwwwwwwwwww()), 104857600L, Integer.MAX_VALUE);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwww2 + "/cache";
    }

    @Nullable
    public final ALocalCache Wwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            return ALocalCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new File(Wwwwwwwwwwwwwwwwwwwwwww()), 104857600L, Integer.MAX_VALUE);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 + "/nonUserBiz";
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwwwwwwww2 + "/cache";
    }

    @Nullable
    public final ALocalCache Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            return ALocalCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new File(Wwwwwwwwwwwwwwwwwwwwwwwwww()), 104857600L, Integer.MAX_VALUE);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str = f5643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if ((str == null || StringsKt.isBlank(str)) && (Intrinsics.areEqual("mounted", Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable())) {
            f5643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, 2, null);
        }
        String str2 = f5643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str2 == null || StringsKt.isBlank(str2)) {
            f5643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return f5643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str = f5642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str == null || StringsKt.isBlank(str)) {
            f5642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VideoApplication.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return f5642Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return context.getFilesDir().getAbsolutePath();
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable String str) {
        String absolutePath;
        File externalFilesDir = context.getExternalFilesDir(str);
        if (externalFilesDir != null && (absolutePath = externalFilesDir.getAbsolutePath()) != null) {
            return absolutePath;
        }
        return "";
    }
}
