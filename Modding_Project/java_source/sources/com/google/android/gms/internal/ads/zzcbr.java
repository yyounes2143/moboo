package com.google.android.gms.internal.ads;

import android.os.Looper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzcbr implements Runnable {
    public zzcbr(zzcbt zzcbtVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
