package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import io.flutter.embedding.android.KeyboardMap;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzale {
    public final String zza;
    public final int zzb;
    @Nullable
    @ColorInt
    public final Integer zzc;
    @Nullable
    @ColorInt
    public final Integer zzd;
    public final float zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final int zzj;

    private zzale(String str, int i, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2, float f, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = num;
        this.zzd = num2;
        this.zze = f;
        this.zzf = z;
        this.zzg = z2;
        this.zzh = z3;
        this.zzi = z4;
        this.zzj = i2;
    }

    @Nullable
    public static zzale zzb(String str, zzalc zzalcVar) {
        zzale zzaleVar;
        int i;
        Integer num;
        Integer num2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i2;
        int parseInt;
        zzdc.zzd(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        int length = split.length;
        int i3 = zzalcVar.zzk;
        if (length != i3) {
            Object[] objArr = {Integer.valueOf(i3), Integer.valueOf(length), str};
            String str2 = zzeu.zza;
            zzdx.zzf("SsaStyle", String.format(Locale.US, "Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", objArr));
            return null;
        }
        try {
            String trim = split[zzalcVar.zza].trim();
            int i4 = zzalcVar.zzb;
            if (i4 != -1) {
                i = zzd(split[i4].trim());
            } else {
                i = -1;
            }
            int i5 = zzalcVar.zzc;
            if (i5 != -1) {
                num = zzc(split[i5].trim());
            } else {
                num = null;
            }
            int i6 = zzalcVar.zzd;
            if (i6 != -1) {
                num2 = zzc(split[i6].trim());
            } else {
                num2 = null;
            }
            int i7 = zzalcVar.zze;
            float f = -3.4028235E38f;
            try {
                if (i7 != -1) {
                    String trim2 = split[i7].trim();
                    try {
                        f = Float.parseFloat(trim2);
                    } catch (NumberFormatException e) {
                        zzaleVar = null;
                        zzdx.zzg("SsaStyle", "Failed to parse font size: '" + trim2 + "'", e);
                    }
                }
                zzaleVar = null;
                int i8 = zzalcVar.zzf;
                if (i8 != -1 && zze(split[i8].trim())) {
                    z2 = true;
                    z = false;
                } else {
                    z = false;
                    z2 = false;
                }
                int i9 = zzalcVar.zzg;
                if (i9 != -1 && zze(split[i9].trim())) {
                    z3 = true;
                } else {
                    z3 = z;
                }
                int i10 = zzalcVar.zzh;
                if (i10 != -1 && zze(split[i10].trim())) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                int i11 = zzalcVar.zzi;
                if (i11 != -1 && zze(split[i11].trim())) {
                    z5 = true;
                } else {
                    z5 = z;
                }
                int i12 = zzalcVar.zzj;
                if (i12 != -1) {
                    String trim3 = split[i12].trim();
                    try {
                        parseInt = Integer.parseInt(trim3.trim());
                    } catch (NumberFormatException unused) {
                    }
                    if (parseInt == 1 || parseInt == 3) {
                        i2 = parseInt;
                        return new zzale(trim, i, num, num2, f, z2, z3, z4, z5, i2);
                    }
                    zzdx.zzf("SsaStyle", "Ignoring unknown BorderStyle: ".concat(String.valueOf(trim3)));
                }
                i2 = -1;
                return new zzale(trim, i, num, num2, f, z2, z3, z4, z5, i2);
            } catch (RuntimeException e2) {
                e = e2;
                zzdx.zzg("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e);
                return zzaleVar;
            }
        } catch (RuntimeException e3) {
            e = e3;
            zzaleVar = null;
        }
    }

    @Nullable
    @ColorInt
    public static Integer zzc(String str) {
        long parseLong;
        boolean z;
        try {
            if (str.startsWith("&H")) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            if (parseLong <= KeyboardMap.kValueMask) {
                z = true;
            } else {
                z = false;
            }
            zzdc.zzd(z);
            int zzb = zzgbf.zzb(((parseLong >> 24) & 255) ^ 255);
            int zzb2 = zzgbf.zzb((parseLong >> 16) & 255);
            return Integer.valueOf(Color.argb(zzb, zzgbf.zzb(parseLong & 255), zzgbf.zzb((parseLong >> 8) & 255), zzb2));
        } catch (IllegalArgumentException e) {
            zzdx.zzg("SsaStyle", "Failed to parse color expression: '" + str + "'", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            switch (parseInt) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        zzdx.zzf("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(str)));
        return -1;
    }

    private static boolean zze(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt != 1 && parseInt != -1) {
                return false;
            }
            return true;
        } catch (NumberFormatException e) {
            zzdx.zzg("SsaStyle", "Failed to parse boolean value: '" + str + "'", e);
            return false;
        }
    }
}
