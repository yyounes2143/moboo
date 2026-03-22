package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaeb {
    private static final Pattern zzc = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zza = -1;
    public int zzb = -1;

    private final boolean zzc(String str) {
        Matcher matcher = zzc.matcher(str);
        if (matcher.find()) {
            try {
                String group = matcher.group(1);
                String str2 = zzeu.zza;
                int parseInt = Integer.parseInt(group, 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.zza = parseInt;
                    this.zzb = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public final boolean zza() {
        if (this.zza != -1 && this.zzb != -1) {
            return true;
        }
        return false;
    }

    public final boolean zzb(zzav zzavVar) {
        for (int i = 0; i < zzavVar.zza(); i++) {
            zzau zzb = zzavVar.zzb(i);
            if (zzb instanceof zzags) {
                zzags zzagsVar = (zzags) zzb;
                if ("iTunSMPB".equals(zzagsVar.zzb) && zzc(zzagsVar.zzc)) {
                    return true;
                }
            } else if (zzb instanceof zzagz) {
                zzagz zzagzVar = (zzagz) zzb;
                if ("com.apple.iTunes".equals(zzagzVar.zza) && "iTunSMPB".equals(zzagzVar.zzb) && zzc(zzagzVar.zzc)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
