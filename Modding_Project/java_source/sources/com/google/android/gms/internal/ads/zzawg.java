package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzawg {
    private List zza = Collections.EMPTY_LIST;

    public final List zza() {
        List list = this.zza;
        this.zza = Collections.EMPTY_LIST;
        return list;
    }

    public final void zzb(List list) {
        this.zza = new ArrayList(list);
    }
}
