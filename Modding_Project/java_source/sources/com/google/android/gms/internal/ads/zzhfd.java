package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzhfd extends zzhfg implements zzarh {
    protected final String zza = "moov";

    public zzhfd(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzarh
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzarh
    public final void zzb(zzhfh zzhfhVar, ByteBuffer byteBuffer, long j, zzare zzareVar) throws IOException {
        zzhfhVar.zzb();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.zzc = zzhfhVar;
        this.zze = zzhfhVar.zzb();
        zzhfhVar.zze(zzhfhVar.zzb() + j);
        this.zzf = zzhfhVar.zzb();
        this.zzb = zzareVar;
    }
}
