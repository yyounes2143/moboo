package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.UUID;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
class zzfrs {
    static final String zza = new UUID(0, 0).toString();
    final zzfrr zzb;
    final zzfrq zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;
    private final String zzh;

    public zzfrs(Context context, String str, String str2, String str3) {
        this.zzb = zzfrr.zzb(context);
        this.zzc = zzfrq.zza(context);
        this.zzd = str;
        this.zze = str.concat("_3p");
        this.zzf = str2;
        this.zzg = str2.concat("_3p");
        this.zzh = str3;
    }

    private final String zzh(String str, String str2, String str3) {
        String str4;
        if (str2 != null && str3 != null) {
            return UUID.nameUUIDFromBytes((str + str2 + str3).getBytes(StandardCharsets.UTF_8)).toString();
        }
        String str5 = this.zzh;
        StringBuilder sb = new StringBuilder();
        sb.append(str5);
        sb.append(": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is ");
        String str6 = "not null";
        if (str2 != null) {
            str4 = "not null";
        } else {
            str4 = AbstractJsonLexerKt.NULL;
        }
        sb.append(str4);
        sb.append(", hashKey is ");
        if (str3 == null) {
            str6 = AbstractJsonLexerKt.NULL;
        }
        sb.append(str6);
        throw new IllegalArgumentException(sb.toString());
    }

    public final long zza(boolean z) {
        String str;
        if (z) {
            str = this.zzg;
        } else {
            str = this.zzf;
        }
        return this.zzb.zza(str, -1L);
    }

    public final zzfrp zzb(@Nullable String str, @Nullable String str2, long j, boolean z) throws IOException {
        String str3;
        boolean z2 = true;
        if (str != null) {
            try {
                UUID.fromString(str);
                if (!str.equals(zza)) {
                    String zze = zze(true);
                    String zzc = this.zzb.zzc("paid_3p_hash_key", null);
                    if (zze != null && zzc != null && !zze.equals(zzh(str, str2, zzc))) {
                        return zzc(str, str2);
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            return new zzfrp();
        }
        if (str == null) {
            z2 = false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= 0) {
            long zza2 = zza(z2);
            if (zza2 != -1) {
                if (currentTimeMillis < zza2) {
                    zzfrr zzfrrVar = this.zzb;
                    if (z2) {
                        str3 = this.zzg;
                    } else {
                        str3 = this.zzf;
                    }
                    zzfrrVar.zzd(str3, Long.valueOf(currentTimeMillis));
                } else if (currentTimeMillis >= zza2 + j) {
                    return zzc(str, str2);
                }
            }
            String zze2 = zze(z2);
            if (zze2 == null && !z) {
                return zzc(str, str2);
            }
            return new zzfrp(zze2, zza(z2));
        }
        throw new IllegalStateException(this.zzh.concat(": Invalid negative current timestamp. Updating PAID failed"));
    }

    public final zzfrp zzc(String str, String str2) throws IOException {
        if (str == null) {
            return zzd(UUID.randomUUID().toString(), false);
        }
        String uuid = UUID.randomUUID().toString();
        this.zzb.zzd("paid_3p_hash_key", uuid);
        return zzd(zzh(str, str2, uuid), true);
    }

    public final zzfrp zzd(String str, boolean z) throws IOException {
        String str2;
        String str3;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= 0) {
            zzfrr zzfrrVar = this.zzb;
            if (z) {
                str2 = this.zzg;
            } else {
                str2 = this.zzf;
            }
            zzfrrVar.zzd(str2, Long.valueOf(currentTimeMillis));
            if (z) {
                str3 = this.zze;
            } else {
                str3 = this.zzd;
            }
            zzfrrVar.zzd(str3, str);
            return new zzfrp(str, currentTimeMillis);
        }
        throw new IllegalStateException(this.zzh.concat(": Invalid negative current timestamp. Updating PAID failed"));
    }

    public final String zze(boolean z) {
        String str;
        if (z) {
            str = this.zze;
        } else {
            str = this.zzd;
        }
        return this.zzb.zzc(str, null);
    }

    public final void zzf(boolean z) throws IOException {
        String str;
        String str2;
        if (z) {
            str = this.zzg;
        } else {
            str = this.zzf;
        }
        zzfrr zzfrrVar = this.zzb;
        zzfrrVar.zze(str);
        if (z) {
            str2 = this.zze;
        } else {
            str2 = this.zzd;
        }
        zzfrrVar.zze(str2);
    }

    public final boolean zzg(boolean z) {
        return this.zzb.zzg(this.zzd);
    }
}
