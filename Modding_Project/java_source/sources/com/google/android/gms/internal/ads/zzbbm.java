package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzbbm extends PushbackInputStream implements AutoCloseable {
    final /* synthetic */ zzbbn zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbbm(zzbbn zzbbnVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.zza = zzbbnVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        zzbbp.zze(this.zza.zzc);
        super.close();
    }
}
