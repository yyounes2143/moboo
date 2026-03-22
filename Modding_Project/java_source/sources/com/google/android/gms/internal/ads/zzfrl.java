package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.CallSuper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzfrl extends Handler {
    public zzfrl() {
        Looper.getMainLooper();
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        zza(message);
    }

    @CallSuper
    public void zza(Message message) {
        super.dispatchMessage(message);
    }

    public zzfrl(Looper looper) {
        super(looper);
        Looper.getMainLooper();
    }
}
