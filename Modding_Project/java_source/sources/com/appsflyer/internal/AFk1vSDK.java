package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFk1vSDK {
    public String getCurrencyIso4217Code;
    public final WeakReference<Context> getMonetizationNetwork;

    public AFk1vSDK(@NonNull Context context) {
        this.getMonetizationNetwork = new WeakReference<>(context);
    }
}
