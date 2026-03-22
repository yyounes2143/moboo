package com.google.android.gms.fido.fido2;

import android.app.Activity;
import android.content.IntentSender;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes4.dex */
public interface Fido2PendingIntent {
    boolean hasPendingIntent();

    void launchPendingIntent(@NonNull Activity activity, int i) throws IntentSender.SendIntentException;
}
