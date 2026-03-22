package com.changdu.mobovideo;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.changdu.mobovideo.AppFrontBackHelper;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/changdu/mobovideo/AppFrontBackHelper;", "", "<init>", "()V", "Landroid/app/Application;", "application", "Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Application;Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;", "mOnAppStatusListener", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "activityLifecycleCallbacks", "OnAppStatusListener", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AppFrontBackHelper {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Application.ActivityLifecycleCallbacks f5441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Application.ActivityLifecycleCallbacks() { // from class: com.changdu.mobovideo.AppFrontBackHelper$activityLifecycleCallbacks$1

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f5444Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            AppFrontBackHelper.OnAppStatusListener onAppStatusListener;
            AppFrontBackHelper.OnAppStatusListener onAppStatusListener2;
            int i = this.f5444Wwwwwwwwwwwwwwwwwwwwwwwww + 1;
            this.f5444Wwwwwwwwwwwwwwwwwwwwwwwww = i;
            if (i == 1) {
                onAppStatusListener = AppFrontBackHelper.this.f5442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (onAppStatusListener != null) {
                    onAppStatusListener2 = AppFrontBackHelper.this.f5442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    onAppStatusListener2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            AppFrontBackHelper.OnAppStatusListener onAppStatusListener;
            AppFrontBackHelper.OnAppStatusListener onAppStatusListener2;
            int i = this.f5444Wwwwwwwwwwwwwwwwwwwwwwwww - 1;
            this.f5444Wwwwwwwwwwwwwwwwwwwwwwwww = i;
            if (i == 0) {
                onAppStatusListener = AppFrontBackHelper.this.f5442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (onAppStatusListener != null) {
                    onAppStatusListener2 = AppFrontBackHelper.this.f5442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    onAppStatusListener2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }
    };
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public OnAppStatusListener f5442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/changdu/mobovideo/AppFrontBackHelper$OnAppStatusListener;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnAppStatusListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Application application, @Nullable OnAppStatusListener onAppStatusListener) {
        this.f5442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = onAppStatusListener;
        application.registerActivityLifecycleCallbacks(this.f5441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
