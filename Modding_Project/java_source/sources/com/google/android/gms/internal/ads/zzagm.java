package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes4.dex */
public class zzagm implements zzau {
    public final String zza;
    public final String zzb;

    public zzagm(String str, String str2) {
        this.zza = zzfui.zzb(str);
        this.zzb = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzagm zzagmVar = (zzagm) obj;
            if (this.zza.equals(zzagmVar.zza) && this.zzb.equals(zzagmVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() + 527) * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        return "VC: " + this.zza + "=" + this.zzb;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzau
    public final void zza(zzar zzarVar) {
        char c;
        String str = this.zza;
        switch (str.hashCode()) {
            case -1935137620:
                if (str.equals("TOTALTRACKS")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -215998278:
                if (str.equals("TOTALDISCS")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -113312716:
                if (str.equals("TRACKNUMBER")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 62359119:
                if (str.equals("ALBUM")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 67703139:
                if (str.equals("GENRE")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 993300766:
                if (str.equals("DISCNUMBER")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                zzarVar.zzr(this.zzb);
                return;
            case 1:
                zzarVar.zze(this.zzb);
                return;
            case 2:
                zzarVar.zzd(this.zzb);
                return;
            case 3:
                zzarVar.zzc(this.zzb);
                return;
            case 4:
                Integer zzg = zzgbf.zzg(this.zzb, 10);
                if (zzg != null) {
                    zzarVar.zzu(zzg);
                    return;
                }
                return;
            case 5:
                Integer zzg2 = zzgbf.zzg(this.zzb, 10);
                if (zzg2 != null) {
                    zzarVar.zzt(zzg2);
                    return;
                }
                return;
            case 6:
                Integer zzg3 = zzgbf.zzg(this.zzb, 10);
                if (zzg3 != null) {
                    zzarVar.zzi(zzg3);
                    return;
                }
                return;
            case 7:
                Integer zzg4 = zzgbf.zzg(this.zzb, 10);
                if (zzg4 != null) {
                    zzarVar.zzs(zzg4);
                    return;
                }
                return;
            case '\b':
                zzarVar.zzj(this.zzb);
                return;
            case '\t':
                zzarVar.zzh(this.zzb);
                return;
            default:
                return;
        }
    }
}
