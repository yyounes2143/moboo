package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzame implements zzakl {
    private final zzek zza = new zzek();
    private final zzalu zzb = new zzalu();

    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        zzek zzekVar = this.zza;
        zzekVar.zzJ(bArr, i2 + i);
        zzekVar.zzL(i);
        ArrayList arrayList = new ArrayList();
        try {
            int zzc = zzekVar.zzc();
            Charset charset = StandardCharsets.UTF_8;
            String zzz = zzekVar.zzz(charset);
            if (zzz != null && zzz.startsWith("WEBVTT")) {
                do {
                } while (!TextUtils.isEmpty(zzekVar.zzz(StandardCharsets.UTF_8)));
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    char c = 65535;
                    int i3 = 0;
                    while (c == 65535) {
                        i3 = zzekVar.zzc();
                        String zzz2 = zzekVar.zzz(StandardCharsets.UTF_8);
                        if (zzz2 == null) {
                            c = 0;
                        } else if ("STYLE".equals(zzz2)) {
                            c = 2;
                        } else if (zzz2.startsWith("NOTE")) {
                            c = 1;
                        } else {
                            c = 3;
                        }
                    }
                    zzekVar.zzL(i3);
                    if (c != 0) {
                        if (c == 1) {
                            do {
                            } while (!TextUtils.isEmpty(zzekVar.zzz(StandardCharsets.UTF_8)));
                        } else if (c == 2) {
                            if (arrayList2.isEmpty()) {
                                zzekVar.zzz(StandardCharsets.UTF_8);
                                arrayList.addAll(this.zzb.zzb(zzekVar));
                            } else {
                                throw new IllegalArgumentException("A style block was found after the first cue.");
                            }
                        } else {
                            zzalw zzc2 = zzamd.zzc(zzekVar, arrayList);
                            if (zzc2 != null) {
                                arrayList2.add(zzc2);
                            }
                        }
                    } else {
                        zzakf.zza(new zzamh(arrayList2), zzakkVar, zzdkVar);
                        return;
                    }
                }
            } else {
                zzekVar.zzL(zzc);
                throw zzaz.zza("Expected WEBVTT. Got ".concat(String.valueOf(zzekVar.zzz(charset))), null);
            }
        } catch (zzaz e) {
            throw new IllegalArgumentException(e);
        }
    }
}
