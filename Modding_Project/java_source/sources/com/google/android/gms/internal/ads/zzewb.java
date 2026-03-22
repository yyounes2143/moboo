package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzewb {
    private final zzbvl zza;
    private final int zzb;

    public zzewb(zzbvl zzbvlVar, int i) {
        this.zza = zzbvlVar;
        this.zzb = i;
    }

    public final int zza() {
        return this.zzb;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int zzb() {
        boolean z;
        Bundle bundle = this.zza.zza.getBundle("extras");
        if (bundle == null || bundle.isEmpty()) {
            return -1;
        }
        String string = bundle.getString("query_info_type", "");
        switch (string.hashCode()) {
            case 1743582862:
                if (string.equals("requester_type_0")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 1743582863:
                if (string.equals("requester_type_1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1743582864:
                if (string.equals("requester_type_2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1743582865:
                if (string.equals("requester_type_3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1743582866:
                if (string.equals("requester_type_4")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1743582867:
                if (string.equals("requester_type_5")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1743582868:
                if (string.equals("requester_type_6")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1743582869:
                if (string.equals("requester_type_7")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1743582870:
                if (string.equals("requester_type_8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                return 0;
            case true:
                return 1;
            case true:
                return 2;
            case true:
                return 3;
            case true:
                return 4;
            case true:
                return 5;
            case true:
                return 6;
            case true:
                return 7;
            case true:
                return 8;
            default:
                return -1;
        }
    }

    public final int zzc() {
        return this.zza.zzo;
    }

    @Nullable
    public final PackageInfo zzd() {
        return this.zza.zzf;
    }

    public final String zze() {
        return this.zza.zzd;
    }

    public final String zzf() {
        return zzfvt.zzc(this.zza.zza.getString("ms"));
    }

    public final String zzg() {
        return this.zza.zzh;
    }

    public final List zzh() {
        return this.zza.zze;
    }

    public final boolean zzi() {
        return this.zza.zzl;
    }

    public final boolean zzj() {
        return this.zza.zza.getBoolean("is_gbid");
    }

    public final boolean zzk() {
        return this.zza.zzk;
    }
}
