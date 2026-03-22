package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbbo implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzcaf zza;
    final /* synthetic */ zzbbp zzb;

    public zzbbo(zzbbp zzbbpVar, zzcaf zzcafVar) {
        this.zza = zzcafVar;
        this.zzb = zzbbpVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzb.zzd;
        synchronized (obj) {
            this.zza.zzd(new RuntimeException("Connection failed."));
        }
    }
}
