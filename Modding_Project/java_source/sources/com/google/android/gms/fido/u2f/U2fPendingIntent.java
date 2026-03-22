package com.google.android.gms.fido.u2f;

import android.app.Activity;
import android.content.IntentSender;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes4.dex */
public interface U2fPendingIntent {
    boolean hasPendingIntent();

    void launchPendingIntent(@NonNull Activity activity, int i) throws IntentSender.SendIntentException;
}
