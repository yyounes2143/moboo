package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzemo implements zzetv {
    private final Set zza;

    public zzemo(Set set) {
        this.zza = set;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zza) {
            arrayList.add(str);
        }
        return zzgcy.zzh(new zzemm(arrayList, null));
    }
}
