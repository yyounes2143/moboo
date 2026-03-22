package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzblr implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzcaf zza;
    final /* synthetic */ zzblt zzb;

    public zzblr(zzblt zzbltVar, zzcaf zzcafVar) {
        this.zza = zzcafVar;
        this.zzb = zzbltVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        zzblg zzblgVar;
        try {
            zzcaf zzcafVar = this.zza;
            zzblgVar = this.zzb.zza;
            zzcafVar.zzc(zzblgVar.zzp());
        } catch (DeadObjectException e) {
            this.zza.zzd(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.zza.zzd(new RuntimeException("onConnectionSuspended: " + i));
    }
}
