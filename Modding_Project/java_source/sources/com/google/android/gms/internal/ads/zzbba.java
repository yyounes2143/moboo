package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbba implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzbbb zza;

    public zzbba(zzbbb zzbbbVar) {
        this.zza = zzbbbVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        zzbbe zzbbeVar;
        Object obj2;
        zzbbb zzbbbVar = this.zza;
        obj = zzbbbVar.zzc;
        synchronized (obj) {
            try {
                zzbbbVar.zzf = null;
                zzbbeVar = zzbbbVar.zzd;
                if (zzbbeVar != null) {
                    zzbbbVar.zzd = null;
                }
                obj2 = zzbbbVar.zzc;
                obj2.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
