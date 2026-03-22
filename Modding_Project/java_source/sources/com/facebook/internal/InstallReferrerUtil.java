package com.facebook.internal;

import android.os.RemoteException;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0003R\u0014\u0010\u000e\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/facebook/internal/InstallReferrerUtil;", "", "<init>", "()V", "Lcom/facebook/internal/InstallReferrerUtil$Callback;", "callback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/InstallReferrerUtil$Callback;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isUpdated", "Callback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InstallReferrerUtil {
    @NotNull
    public static final InstallReferrerUtil INSTANCE = new InstallReferrerUtil();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/InstallReferrerUtil$Callback;", "", "", CmcdData.Factory.STREAMING_FORMAT_SS, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Callback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Callback callback) {
        InstallReferrerUtil installReferrerUtil = INSTANCE;
        if (!installReferrerUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            installReferrerUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callback);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final Callback callback) {
        final InstallReferrerClient build = InstallReferrerClient.newBuilder(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()).build();
        try {
            build.startConnection(new InstallReferrerStateListener() { // from class: com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerSetupFinished(int i) {
                    if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                        try {
                            if (i != 0) {
                                if (i == 2) {
                                    InstallReferrerUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                }
                            } else {
                                try {
                                    String installReferrer = InstallReferrerClient.this.getInstallReferrer().getInstallReferrer();
                                    if (installReferrer != null && (StringsKt.contains$default((CharSequence) installReferrer, (CharSequence) "fb", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) installReferrer, (CharSequence) "facebook", false, 2, (Object) null))) {
                                        callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(installReferrer);
                                    }
                                    InstallReferrerUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                } catch (RemoteException | Exception unused) {
                                    return;
                                }
                            }
                            InstallReferrerClient.this.endConnection();
                        } catch (Throwable th) {
                            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                        }
                    }
                }

                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerServiceDisconnected() {
                }
            });
        } catch (Exception unused) {
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("is_referrer_updated", false);
    }
}
