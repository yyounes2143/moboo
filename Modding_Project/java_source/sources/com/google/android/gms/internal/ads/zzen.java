package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzen implements zzdp {
    @Nullable
    private Message zza;

    private zzen() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzdp
    public final void zza() {
        Message message = this.zza;
        message.getClass();
        message.sendToTarget();
        this.zza = null;
        zzep.zzm(this);
    }

    public final zzen zzb(Message message, zzep zzepVar) {
        this.zza = message;
        return this;
    }

    public final boolean zzc(Handler handler) {
        Message message = this.zza;
        message.getClass();
        boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        this.zza = null;
        zzep.zzm(this);
        return sendMessageAtFrontOfQueue;
    }

    public /* synthetic */ zzen(zzeo zzeoVar) {
    }
}
