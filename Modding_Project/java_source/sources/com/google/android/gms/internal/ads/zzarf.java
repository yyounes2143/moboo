package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzarf extends zzhfg implements Closeable, AutoCloseable {
    static {
        zzhfn.zzb(zzarf.class);
    }

    public zzarf(zzhfh zzhfhVar, zzare zzareVar) throws IOException {
        zze(zzhfhVar, zzhfhVar.zzc(), zzareVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhfg
    public final String toString() {
        String obj = this.zzc.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhfg, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
