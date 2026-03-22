package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzalt implements zzakl {
    private final zzek zza = new zzek();

    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        boolean z;
        zzcu zzp;
        boolean z2;
        zzek zzekVar = this.zza;
        zzekVar.zzJ(bArr, i2 + i);
        zzekVar.zzL(i);
        ArrayList arrayList = new ArrayList();
        while (zzekVar.zza() > 0) {
            if (zzekVar.zza() >= 8) {
                z = true;
            } else {
                z = false;
            }
            zzdc.zze(z, "Incomplete Mp4Webvtt Top Level box header found.");
            int zzg = zzekVar.zzg() - 8;
            if (zzekVar.zzg() == 1987343459) {
                CharSequence charSequence = null;
                zzcs zzcsVar = null;
                while (zzg > 0) {
                    if (zzg >= 8) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzdc.zze(z2, "Incomplete vtt cue box header found.");
                    int zzg2 = zzekVar.zzg();
                    int zzg3 = zzekVar.zzg();
                    int i3 = zzg - 8;
                    int i4 = zzg2 - 8;
                    String zzC = zzeu.zzC(zzekVar.zzN(), zzekVar.zzc(), i4);
                    zzekVar.zzM(i4);
                    if (zzg3 == 1937011815) {
                        zzcsVar = zzamd.zzb(zzC);
                    } else if (zzg3 == 1885436268) {
                        charSequence = zzamd.zza(null, zzC.trim(), Collections.EMPTY_LIST);
                    }
                    zzg = i3 - i4;
                }
                if (charSequence == null) {
                    charSequence = "";
                }
                if (zzcsVar != null) {
                    zzcsVar.zzl(charSequence);
                    zzp = zzcsVar.zzp();
                } else {
                    Pattern pattern = zzamd.zza;
                    zzamb zzambVar = new zzamb();
                    zzambVar.zzc = charSequence;
                    zzp = zzambVar.zza().zzp();
                }
                arrayList.add(zzp);
            } else {
                zzekVar.zzM(zzg);
            }
        }
        zzdkVar.zza(new zzakd(arrayList, -9223372036854775807L, -9223372036854775807L));
    }
}
