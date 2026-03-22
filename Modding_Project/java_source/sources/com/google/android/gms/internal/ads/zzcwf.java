package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Set;
/* compiled from: Proguard */
@VisibleForTesting
/* loaded from: classes4.dex */
public final class zzcwf extends zzdbo implements zzcvx {
    @VisibleForTesting
    public zzcwf(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zzc(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcwe
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((zzcwj) obj).zzr(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zzd() {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcwd
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((zzcwj) obj).zzr(zzfdq.zzd(11, null, null));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvx
    public final void zze(final zzdgh zzdghVar) {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcwc
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                zzcwj zzcwjVar = (zzcwj) obj;
                String message = zzdgh.this.getMessage();
                if (message == null) {
                    message = "Internal show error.";
                }
                zzcwjVar.zzr(zzfdq.zzd(12, message, null));
            }
        });
    }
}
