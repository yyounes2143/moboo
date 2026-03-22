package com.facebook.appevents.ondeviceprocessing;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEvent;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\u000b\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "applicationId", "preferencesName", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Lcom/facebook/appevents/AppEvent;", "event", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AppEvent;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Set;", "ALLOWED_IMPLICIT_EVENTS", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class OnDeviceProcessingManager {
    @NotNull
    public static final OnDeviceProcessingManager INSTANCE = new OnDeviceProcessingManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f6484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SetsKt.setOf((Object[]) new String[]{"fb_mobile_purchase", "StartTrial", "Subscribe"});

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(OnDeviceProcessingManager.class)) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
                String stringPlus = Intrinsics.stringPlus(str2, "pingForOnDevice");
                if (sharedPreferences.getLong(stringPlus, 0L) == 0) {
                    RemoteServiceWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putLong(stringPlus, System.currentTimeMillis());
                    edit.apply();
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, OnDeviceProcessingManager.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable final String str, @Nullable final String str2) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(OnDeviceProcessingManager.class)) {
            try {
                final Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwww2 != null && str != null && str2 != null) {
                    FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.ondeviceprocessing.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            OnDeviceProcessingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2, str2, str);
                        }
                    });
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, OnDeviceProcessingManager.class);
            }
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, AppEvent appEvent) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(OnDeviceProcessingManager.class)) {
            return;
        }
        try {
            RemoteServiceWrapper remoteServiceWrapper = RemoteServiceWrapper.INSTANCE;
            RemoteServiceWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, CollectionsKt.listOf(appEvent));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, OnDeviceProcessingManager.class);
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final String str, @NotNull final AppEvent appEvent) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(OnDeviceProcessingManager.class)) {
            try {
                if (INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appEvent)) {
                    FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.ondeviceprocessing.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            OnDeviceProcessingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, appEvent);
                        }
                    });
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, OnDeviceProcessingManager.class);
            }
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(OnDeviceProcessingManager.class)) {
            return false;
        }
        try {
            if (!FacebookSdk.Wwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()) && !Utility.Kkkkk()) {
                if (RemoteServiceWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, OnDeviceProcessingManager.class);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEvent appEvent) {
        boolean z;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (appEvent.isImplicit() && f6484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(appEvent.getName())) {
                z = true;
            } else {
                z = false;
            }
            if (appEvent.isImplicit() && !z) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }
}
