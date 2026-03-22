package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcvr extends zzdbo implements com.google.android.gms.ads.internal.client.zza {
    public zzcvr(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcvq
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zza) obj).onAdClicked();
            }
        });
    }
}
