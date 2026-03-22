package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzahc extends zzagx {
    @Nullable
    public final String zza;
    public final zzfyc zzb;

    public zzahc(String str, @Nullable String str2, List list) {
        super(str);
        zzdc.zzd(!list.isEmpty());
        this.zza = str2;
        zzfyc zzl = zzfyc.zzl(list);
        this.zzb = zzl;
        String str3 = (String) zzl.get(0);
    }

    private static List zzb(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
                return arrayList;
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                return arrayList;
            } else {
                if (str.length() >= 4) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                }
                return arrayList;
            }
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahc.class == obj.getClass()) {
            zzahc zzahcVar = (zzahc) obj;
            if (Objects.equals(this.zzf, zzahcVar.zzf) && Objects.equals(this.zza, zzahcVar.zza) && this.zzb.equals(zzahcVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.zzf.hashCode() + 527;
        String str = this.zza;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return (((hashCode * 31) + i) * 31) + this.zzb.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzagx
    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        return this.zzf + ": description=" + this.zza + ": values=" + valueOf;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzagx, com.google.android.gms.internal.ads.zzau
    public final void zza(zzar zzarVar) {
        char c;
        Integer num;
        String str = this.zzf;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 82878:
                if (str.equals("TCM")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 82897:
                if (str.equals("TDA")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 83255:
                if (str.equals("TP3")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 83536:
                if (str.equals("TXT")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        try {
            switch (c) {
                case 0:
                case 1:
                    zzarVar.zzr((CharSequence) this.zzb.get(0));
                    return;
                case 2:
                case 3:
                    zzarVar.zze((CharSequence) this.zzb.get(0));
                    return;
                case 4:
                case 5:
                    zzarVar.zzc((CharSequence) this.zzb.get(0));
                    return;
                case 6:
                case 7:
                    zzarVar.zzd((CharSequence) this.zzb.get(0));
                    return;
                case '\b':
                case '\t':
                    String str2 = zzeu.zza;
                    String[] split = ((String) this.zzb.get(0)).split("/", -1);
                    int parseInt = Integer.parseInt(split[0]);
                    if (split.length > 1) {
                        num = Integer.valueOf(Integer.parseInt(split[1]));
                    } else {
                        num = null;
                    }
                    zzarVar.zzu(Integer.valueOf(parseInt));
                    zzarVar.zzt(num);
                    return;
                case '\n':
                case 11:
                    zzarVar.zzm(Integer.valueOf(Integer.parseInt((String) this.zzb.get(0))));
                    return;
                case '\f':
                case '\r':
                    String str3 = (String) this.zzb.get(0);
                    int parseInt2 = Integer.parseInt(str3.substring(2, 4));
                    int parseInt3 = Integer.parseInt(str3.substring(0, 2));
                    zzarVar.zzl(Integer.valueOf(parseInt2));
                    zzarVar.zzk(Integer.valueOf(parseInt3));
                    return;
                case 14:
                    List zzb = zzb((String) this.zzb.get(0));
                    int size = zzb.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                zzarVar.zzk((Integer) zzb.get(2));
                            } else {
                                return;
                            }
                        }
                        zzarVar.zzl((Integer) zzb.get(1));
                    }
                    zzarVar.zzm((Integer) zzb.get(0));
                    return;
                case 15:
                    List zzb2 = zzb((String) this.zzb.get(0));
                    int size2 = zzb2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                zzarVar.zzn((Integer) zzb2.get(2));
                            } else {
                                return;
                            }
                        }
                        zzarVar.zzo((Integer) zzb2.get(1));
                    }
                    zzarVar.zzp((Integer) zzb2.get(0));
                    return;
                case 16:
                case 17:
                    zzarVar.zzf((CharSequence) this.zzb.get(0));
                    return;
                case 18:
                case 19:
                    zzarVar.zzg((CharSequence) this.zzb.get(0));
                    return;
                case 20:
                case 21:
                    zzarVar.zzv((CharSequence) this.zzb.get(0));
                    return;
                case 22:
                    zzfyc zzfycVar = this.zzb;
                    Integer zzg = zzgbf.zzg((String) zzfycVar.get(0), 10);
                    if (zzg == null) {
                        zzarVar.zzj((CharSequence) zzfycVar.get(0));
                        return;
                    }
                    String zza = zzagy.zza(zzg.intValue());
                    if (zza != null) {
                        zzarVar.zzj(zza);
                        return;
                    }
                    return;
                default:
                    return;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }
}
