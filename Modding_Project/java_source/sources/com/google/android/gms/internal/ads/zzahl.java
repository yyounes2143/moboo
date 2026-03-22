package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzahl {
    private final byte[] zza = new byte[8];
    private final ArrayDeque zzb = new ArrayDeque();
    private final zzahs zzc = new zzahs();
    private zzahm zzd;
    private int zze;
    private int zzf;
    private long zzg;

    private final long zzd(zzado zzadoVar, int i) throws IOException {
        byte[] bArr = this.zza;
        zzadoVar.zzi(bArr, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    public final void zza(zzahm zzahmVar) {
        this.zzd = zzahmVar;
    }

    public final void zzb() {
        this.zze = 0;
        this.zzb.clear();
        this.zzc.zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        if (r1 == 1) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzado r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 758
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahl.zzc(com.google.android.gms.internal.ads.zzado):boolean");
    }
}
