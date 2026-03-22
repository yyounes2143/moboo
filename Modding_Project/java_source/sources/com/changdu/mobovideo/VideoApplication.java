package com.changdu.mobovideo;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.work.Configuration;
import androidx.work.WorkManager;
import com.changdu.component.nativeguard.CDNativeGuard;
import com.changdu.component.push.base.BaseMessageCallback;
import com.changdu.component.push.base.PushManager;
import com.changdu.mobovideo.localpush.LocalPushScheduler;
import com.changdu.mobovideo.localpush.UnlockReceiver;
import com.changdu.mobovideo.picture.CDJobScheduler;
import com.changdu.mobovideo.picture.PushAdapter;
import com.changdu.mobovideo.utils.AppUtil;
import com.changdu.mobovideo.utils.CDAppProtect;
import com.changdu.mobovideo.utils.CommonUtil;
import com.changdu.mobovideo.utils.NotificationUtil;
import com.changdu.mobovideo.utils.SignalHandler;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00132\u00020\u00012\u00020\u0002:\u0001\u0013B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u0004R\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/changdu/mobovideo/VideoApplication;", "Landroid/app/Application;", "Landroidx/work/Configuration$Provider;", "<init>", "()V", "Landroid/content/Context;", TtmlNode.RUBY_BASE, "", "attachBaseContext", "(Landroid/content/Context;)V", "onCreate", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "mIsMainProcess", "Landroidx/work/Configuration;", "getWorkManagerConfiguration", "()Landroidx/work/Configuration;", "workManagerConfiguration", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoApplication extends Application implements Configuration.Provider {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5446Wwwwwwwwwwwwwwwwwwwwww = true;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Context f5447Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static VideoApplication f5448Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5449Wwwwwwwwwwwwwwwwwwwwwwwww = true;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/changdu/mobovideo/VideoApplication$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Landroidx/work/WorkManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Landroidx/work/WorkManager;", "Lcom/changdu/mobovideo/VideoApplication;", MBridgeConstans.DYNAMIC_VIEW_WX_APP, "Lcom/changdu/mobovideo/VideoApplication;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/changdu/mobovideo/VideoApplication;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/VideoApplication;)V", "CONTEXT", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "dlSdkNeedInit", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            VideoApplication.f5446Wwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            VideoApplication.f5447Wwwwwwwwwwwwwwwwwwwwwww = context;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull VideoApplication videoApplication) {
            VideoApplication.f5448Wwwwwwwwwwwwwwwwwwwwwwww = videoApplication;
        }

        @Nullable
        public final WorkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            try {
                WorkManager.Companion companion = WorkManager.Companion;
                if (!companion.isInitialized()) {
                    companion.initialize(context, new Configuration.Builder().setMinimumLoggingLevel(6).build());
                }
                return companion.getInstance(context);
            } catch (Throwable unused) {
                return null;
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return VideoApplication.f5446Wwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Context context = VideoApplication.f5447Wwwwwwwwwwwwwwwwwwwwwww;
            if (context != null) {
                return context;
            }
            return null;
        }

        @NotNull
        public final VideoApplication Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            VideoApplication videoApplication = VideoApplication.f5448Wwwwwwwwwwwwwwwwwwwwwwww;
            if (videoApplication != null) {
                return videoApplication;
            }
            return null;
        }

        public Companion() {
        }
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(@NotNull Context context) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        AppUtil appUtil = AppUtil.INSTANCE;
        this.f5449Wwwwwwwwwwwwwwwwwwwwwwwww = appUtil.Wwwwwwwwwwwwwwwwwww(context);
        super.attachBaseContext(context);
        appUtil.Wwwwwwwwwwwwwwwww();
    }

    @Override // androidx.work.Configuration.Provider
    @NotNull
    public Configuration getWorkManagerConfiguration() {
        return new Configuration.Builder().setMinimumLoggingLevel(6).build();
    }

    @Override // android.app.Application
    public void onCreate() {
        AppUtil.INSTANCE.Wwwwwwwwwwwwwwwww();
        super.onCreate();
        Companion companion = Companion;
        companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext());
        f5446Wwwwwwwwwwwwwwwwwwwwww = true;
        CDAppProtect.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        CommonUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        NotificationUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        try {
            LocalPushScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        } catch (Throwable unused) {
        }
        try {
            if (this.f5449Wwwwwwwwwwwwwwwwwwwwwwwww) {
                UnlockReceiver.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                CDJobScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            }
        } catch (Throwable unused2) {
        }
        try {
            CDNativeGuard.init(new int[]{5, 6, 7, 11, 3}, this, new SignalHandler());
        } catch (Throwable unused3) {
        }
        try {
            PushManager pushManager = PushManager.INSTANCE;
            pushManager.init(getApplicationContext());
            pushManager.setMessageCallBack(new BaseMessageCallback() { // from class: com.changdu.mobovideo.VideoApplication$onCreate$4
                @Override // com.changdu.component.push.base.BaseMessageCallback
                public void firebaseMessageHandleIntent(Intent intent) {
                    PushAdapter.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent);
                }

                @Override // com.changdu.component.push.base.BaseMessageCallback
                public void handleReceivedPushMessage(String str, String str2) {
                    PushAdapter.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwww(VideoApplication.this.getApplicationContext(), str, str2);
                }
            });
        } catch (Throwable unused4) {
        }
    }
}
