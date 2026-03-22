package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzsl extends Handler {
    final /* synthetic */ zzsn zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzsl(zzsn zzsnVar, Looper looper) {
        super(looper);
        this.zza = zzsnVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        zzsn.zza(this.zza, message);
    }
}
