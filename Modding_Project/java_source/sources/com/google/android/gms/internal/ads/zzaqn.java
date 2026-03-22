package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
@VisibleForTesting
/* loaded from: classes4.dex */
final class zzaqn {
    long zza;
    final String zzb;
    final String zzc;
    final long zzd;
    final long zze;
    final long zzf;
    final long zzg;
    final List zzh;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaqn(java.lang.String r14, com.google.android.gms.internal.ads.zzapd r15) {
        /*
            r13 = this;
            java.lang.String r2 = r15.zzb
            long r3 = r15.zzc
            long r5 = r15.zzd
            long r7 = r15.zze
            long r9 = r15.zzf
            java.util.List r0 = r15.zzh
            if (r0 == 0) goto L12
        Le:
            r1 = r14
            r11 = r0
            r0 = r13
            goto L46
        L12:
            java.util.Map r15 = r15.zzg
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r15.size()
            r0.<init>(r1)
            java.util.Set r15 = r15.entrySet()
            java.util.Iterator r15 = r15.iterator()
        L25:
            boolean r1 = r15.hasNext()
            if (r1 == 0) goto Le
            java.lang.Object r1 = r15.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            com.google.android.gms.internal.ads.zzapm r11 = new com.google.android.gms.internal.ads.zzapm
            java.lang.Object r12 = r1.getKey()
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r11.<init>(r12, r1)
            r0.add(r11)
            goto L25
        L46:
            r0.<init>(r1, r2, r3, r5, r7, r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqn.<init>(java.lang.String, com.google.android.gms.internal.ads.zzapd):void");
    }

    public static zzaqn zza(zzaqo zzaqoVar) throws IOException {
        List arrayList;
        if (zzaqq.zze(zzaqoVar) == 538247942) {
            String zzh = zzaqq.zzh(zzaqoVar);
            String zzh2 = zzaqq.zzh(zzaqoVar);
            long zzf = zzaqq.zzf(zzaqoVar);
            long zzf2 = zzaqq.zzf(zzaqoVar);
            long zzf3 = zzaqq.zzf(zzaqoVar);
            long zzf4 = zzaqq.zzf(zzaqoVar);
            int zze = zzaqq.zze(zzaqoVar);
            if (zze >= 0) {
                if (zze == 0) {
                    arrayList = Collections.EMPTY_LIST;
                } else {
                    arrayList = new ArrayList();
                }
                List list = arrayList;
                for (int i = 0; i < zze; i++) {
                    list.add(new zzapm(zzaqq.zzh(zzaqoVar).intern(), zzaqq.zzh(zzaqoVar).intern()));
                }
                return new zzaqn(zzh, zzh2, zzf, zzf2, zzf3, zzf4, list);
            }
            throw new IOException("readHeaderList size=" + zze);
        }
        throw new IOException();
    }

    private zzaqn(String str, String str2, long j, long j2, long j3, long j4, List list) {
        this.zzb = str;
        this.zzc = true == "".equals(str2) ? null : str2;
        this.zzd = j;
        this.zze = j2;
        this.zzf = j3;
        this.zzg = j4;
        this.zzh = list;
    }
}
