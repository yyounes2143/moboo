package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhas {
    private final ArrayDeque zza = new ArrayDeque();

    private zzhas() {
    }

    public static /* bridge */ /* synthetic */ zzgxk zza(zzhas zzhasVar, zzgxk zzgxkVar, zzgxk zzgxkVar2) {
        zzhasVar.zzb(zzgxkVar);
        zzhasVar.zzb(zzgxkVar2);
        ArrayDeque arrayDeque = zzhasVar.zza;
        zzgxk zzgxkVar3 = (zzgxk) arrayDeque.pop();
        while (!arrayDeque.isEmpty()) {
            zzgxkVar3 = new zzhav((zzgxk) arrayDeque.pop(), zzgxkVar3);
        }
        return zzgxkVar3;
    }

    private final void zzb(zzgxk zzgxkVar) {
        zzgxk zzgxkVar2;
        zzgxk zzgxkVar3;
        if (zzgxkVar.zzh()) {
            int zzc = zzc(zzgxkVar.zzd());
            ArrayDeque arrayDeque = this.zza;
            int zzc2 = zzhav.zzc(zzc + 1);
            if (!arrayDeque.isEmpty() && ((zzgxk) arrayDeque.peek()).zzd() < zzc2) {
                int zzc3 = zzhav.zzc(zzc);
                zzgxk zzgxkVar4 = (zzgxk) arrayDeque.pop();
                while (!arrayDeque.isEmpty() && ((zzgxk) arrayDeque.peek()).zzd() < zzc3) {
                    zzgxkVar4 = new zzhav((zzgxk) arrayDeque.pop(), zzgxkVar4);
                }
                zzhav zzhavVar = new zzhav(zzgxkVar4, zzgxkVar);
                while (!arrayDeque.isEmpty()) {
                    if (((zzgxk) arrayDeque.peek()).zzd() >= zzhav.zzc(zzc(zzhavVar.zzd()) + 1)) {
                        break;
                    }
                    zzhavVar = new zzhav((zzgxk) arrayDeque.pop(), zzhavVar);
                }
                arrayDeque.push(zzhavVar);
                return;
            }
            arrayDeque.push(zzgxkVar);
        } else if (zzgxkVar instanceof zzhav) {
            zzhav zzhavVar2 = (zzhav) zzgxkVar;
            zzgxkVar2 = zzhavVar2.zzd;
            zzb(zzgxkVar2);
            zzgxkVar3 = zzhavVar2.zze;
            zzb(zzgxkVar3);
        } else {
            throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzgxkVar.getClass())));
        }
    }

    private static final int zzc(int i) {
        int binarySearch = Arrays.binarySearch(zzhav.zza, i);
        if (binarySearch < 0) {
            return (-(binarySearch + 1)) - 1;
        }
        return binarySearch;
    }

    public /* synthetic */ zzhas(zzhau zzhauVar) {
    }
}
