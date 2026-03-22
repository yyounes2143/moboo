package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.Nullable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaez {
    public static int zza(int i) {
        int i2 = 0;
        while (i > 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    @Nullable
    public static zzav zzb(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            String str2 = zzeu.zza;
            String[] split = str.split("=", 2);
            if (split.length != 2) {
                zzdx.zzf("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (split[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(zzagl.zzb(new zzek(Base64.decode(split[1], 0))));
                } catch (RuntimeException e) {
                    zzdx.zzg("VorbisUtil", "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new zzahi(split[0], split[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzav(arrayList);
    }

    public static zzaew zzc(zzek zzekVar, boolean z, boolean z2) throws zzaz {
        if (z) {
            zzd(3, zzekVar, false);
        }
        String zzB = zzekVar.zzB((int) zzekVar.zzs(), StandardCharsets.UTF_8);
        int length = zzB.length();
        long zzs = zzekVar.zzs();
        String[] strArr = new String[(int) zzs];
        int i = length + 15;
        for (int i2 = 0; i2 < zzs; i2++) {
            String zzB2 = zzekVar.zzB((int) zzekVar.zzs(), StandardCharsets.UTF_8);
            strArr[i2] = zzB2;
            i = i + 4 + zzB2.length();
        }
        if (z2 && (zzekVar.zzm() & 1) == 0) {
            throw zzaz.zza("framing bit expected to be set", null);
        }
        return new zzaew(zzB, strArr, i + 1);
    }

    public static boolean zzd(int i, zzek zzekVar, boolean z) throws zzaz {
        if (zzekVar.zza() < 7) {
            if (z) {
                return false;
            }
            int zza = zzekVar.zza();
            throw zzaz.zza("too short header: " + zza, null);
        } else if (zzekVar.zzm() != i) {
            if (z) {
                return false;
            }
            throw zzaz.zza("expected header type ".concat(String.valueOf(Integer.toHexString(i))), null);
        } else if (zzekVar.zzm() == 118 && zzekVar.zzm() == 111 && zzekVar.zzm() == 114 && zzekVar.zzm() == 98 && zzekVar.zzm() == 105 && zzekVar.zzm() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw zzaz.zza("expected characters 'vorbis'", null);
        }
    }
}
