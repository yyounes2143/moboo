package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzgcp extends zzgcz {
    public static zzgcp zzw(ListenableFuture listenableFuture) {
        if (listenableFuture instanceof zzgcp) {
            return (zzgcp) listenableFuture;
        }
        return new zzgcq(listenableFuture);
    }
}
