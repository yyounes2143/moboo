package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzafv extends zzafx {
    private long zzb;
    private long[] zzc;
    private long[] zzd;

    public zzafv() {
        super(new zzadj());
        this.zzb = -9223372036854775807L;
        this.zzc = new long[0];
        this.zzd = new long[0];
    }

    private static Double zzg(zzek zzekVar) {
        return Double.valueOf(Double.longBitsToDouble(zzekVar.zzt()));
    }

    @Nullable
    private static Object zzh(zzek zzekVar, int i) {
        if (i != 0) {
            boolean z = false;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 8) {
                            if (i != 10) {
                                if (i != 11) {
                                    return null;
                                }
                                Date date = new Date((long) zzg(zzekVar).doubleValue());
                                zzekVar.zzM(2);
                                return date;
                            }
                            int zzp = zzekVar.zzp();
                            ArrayList arrayList = new ArrayList(zzp);
                            for (int i2 = 0; i2 < zzp; i2++) {
                                Object zzh = zzh(zzekVar, zzekVar.zzm());
                                if (zzh != null) {
                                    arrayList.add(zzh);
                                }
                            }
                            return arrayList;
                        }
                        return zzj(zzekVar);
                    }
                    HashMap hashMap = new HashMap();
                    while (true) {
                        String zzi = zzi(zzekVar);
                        int zzm = zzekVar.zzm();
                        if (zzm == 9) {
                            return hashMap;
                        }
                        Object zzh2 = zzh(zzekVar, zzm);
                        if (zzh2 != null) {
                            hashMap.put(zzi, zzh2);
                        }
                    }
                } else {
                    return zzi(zzekVar);
                }
            } else {
                if (zzekVar.zzm() == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        } else {
            return zzg(zzekVar);
        }
    }

    private static String zzi(zzek zzekVar) {
        int zzq = zzekVar.zzq();
        int zzc = zzekVar.zzc();
        zzekVar.zzM(zzq);
        return new String(zzekVar.zzN(), zzc, zzq);
    }

    private static HashMap zzj(zzek zzekVar) {
        int zzp = zzekVar.zzp();
        HashMap hashMap = new HashMap(zzp);
        for (int i = 0; i < zzp; i++) {
            String zzi = zzi(zzekVar);
            Object zzh = zzh(zzekVar, zzekVar.zzm());
            if (zzh != null) {
                hashMap.put(zzi, zzh);
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final boolean zza(zzek zzekVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final boolean zzb(zzek zzekVar, long j) {
        if (zzekVar.zzm() == 2 && "onMetaData".equals(zzi(zzekVar)) && zzekVar.zza() != 0 && zzekVar.zzm() == 8) {
            HashMap zzj = zzj(zzekVar);
            Object obj = zzj.get(TypedValues.TransitionType.S_DURATION);
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (doubleValue > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    this.zzb = (long) (doubleValue * 1000000.0d);
                }
            }
            Object obj2 = zzj.get("keyframes");
            if (obj2 instanceof Map) {
                Map map = (Map) obj2;
                Object obj3 = map.get("filepositions");
                Object obj4 = map.get("times");
                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                    List list = (List) obj3;
                    List list2 = (List) obj4;
                    int size = list2.size();
                    this.zzc = new long[size];
                    this.zzd = new long[size];
                    for (int i = 0; i < size; i++) {
                        Object obj5 = list.get(i);
                        Object obj6 = list2.get(i);
                        if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                            this.zzc[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                            this.zzd[i] = ((Double) obj5).longValue();
                        } else {
                            this.zzc = new long[0];
                            this.zzd = new long[0];
                            break;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final long zzc() {
        return this.zzb;
    }

    public final long[] zzd() {
        return this.zzd;
    }

    public final long[] zze() {
        return this.zzc;
    }
}
