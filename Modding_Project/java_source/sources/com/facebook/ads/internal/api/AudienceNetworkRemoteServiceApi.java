package com.facebook.ads.internal.api;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Message;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.facebook.proguard.annotations.DoNotStripAny;
/* compiled from: Proguard */
@Keep
@DoNotStripAny
@UiThread
/* loaded from: classes3.dex */
public interface AudienceNetworkRemoteServiceApi {

    /* compiled from: Proguard */
    @Keep
    @DoNotStripAny
    /* loaded from: classes3.dex */
    public interface MessageHandler {
        boolean handleMessage(Message message);
    }

    /* compiled from: Proguard */
    @Keep
    @DoNotStripAny
    /* loaded from: classes3.dex */
    public interface PackageVerifier {
        @Nullable
        String verifyPackage(Context context, Message message, @Nullable String str);
    }

    @Nullable
    IBinder onBind(Intent intent);

    void onCreate();

    void onDestroy();

    void setMessageHandler(MessageHandler messageHandler);

    void setPackageVerifier(PackageVerifier packageVerifier);
}
