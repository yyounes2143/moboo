package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzvp implements zzuz, zzuy {
    private final zzuz[] zza;
    private final boolean[] zzb;
    @Nullable
    private zzuy zzf;
    @Nullable
    private zzxe zzg;
    private final ArrayList zzd = new ArrayList();
    private final HashMap zze = new HashMap();
    private zzwv zzi = new zzul(zzfyc.zzn(), zzfyc.zzn());
    private final IdentityHashMap zzc = new IdentityHashMap();
    private zzuz[] zzh = new zzuz[0];

    public zzvp(zzum zzumVar, long[] jArr, zzuz... zzuzVarArr) {
        this.zza = zzuzVarArr;
        this.zzb = new boolean[zzuzVarArr.length];
        for (int i = 0; i < zzuzVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.zzb[i] = true;
                this.zza[i] = new zzxb(zzuzVarArr[i], j);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zza(long j, zzmd zzmdVar) {
        zzuz zzuzVar;
        zzuz[] zzuzVarArr = this.zzh;
        if (zzuzVarArr.length > 0) {
            zzuzVar = zzuzVarArr[0];
        } else {
            zzuzVar = this.zza[0];
        }
        return zzuzVar.zza(j, zzmdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzb() {
        return this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzc() {
        return this.zzi.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzd() {
        zzuz[] zzuzVarArr;
        zzuz[] zzuzVarArr2;
        long j = -9223372036854775807L;
        for (zzuz zzuzVar : this.zzh) {
            long zzd = zzuzVar.zzd();
            if (zzd != -9223372036854775807L) {
                if (j == -9223372036854775807L) {
                    for (zzuz zzuzVar2 : this.zzh) {
                        if (zzuzVar2 == zzuzVar) {
                            break;
                        } else if (zzuzVar2.zze(zzd) != zzd) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j = zzd;
                } else if (zzd != j) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j != -9223372036854775807L && zzuzVar.zze(j) != j) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zze(long j) {
        long zze = this.zzh[0].zze(j);
        int i = 1;
        while (true) {
            zzuz[] zzuzVarArr = this.zzh;
            if (i < zzuzVarArr.length) {
                if (zzuzVarArr[i].zze(zze) == zze) {
                    i++;
                } else {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else {
                return zze;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzf(zzyq[] zzyqVarArr, boolean[] zArr, zzwt[] zzwtVarArr, boolean[] zArr2, long j) {
        int length;
        zzwt zzwtVar;
        int[] iArr;
        Integer num;
        int intValue;
        int length2 = zzyqVarArr.length;
        int[] iArr2 = new int[length2];
        int[] iArr3 = new int[length2];
        int i = 0;
        int i2 = 0;
        while (true) {
            length = zzyqVarArr.length;
            if (i2 >= length) {
                break;
            }
            zzwt zzwtVar2 = zzwtVarArr[i2];
            if (zzwtVar2 == null) {
                num = null;
            } else {
                num = (Integer) this.zzc.get(zzwtVar2);
            }
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            iArr2[i2] = intValue;
            zzyq zzyqVar = zzyqVarArr[i2];
            if (zzyqVar != null) {
                String str = zzyqVar.zzc().zzb;
                iArr3[i2] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr3[i2] = -1;
            }
            i2++;
        }
        IdentityHashMap identityHashMap = this.zzc;
        identityHashMap.clear();
        zzuz[] zzuzVarArr = this.zza;
        zzwt[] zzwtVarArr2 = new zzwt[length];
        zzwt[] zzwtVarArr3 = new zzwt[length];
        zzyq[] zzyqVarArr2 = new zzyq[length];
        ArrayList arrayList = new ArrayList(zzuzVarArr.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < zzuzVarArr.length) {
            int i4 = i;
            while (i4 < zzyqVarArr.length) {
                if (iArr2[i4] == i3) {
                    zzwtVar = zzwtVarArr[i4];
                } else {
                    zzwtVar = null;
                }
                zzwtVarArr3[i4] = zzwtVar;
                if (iArr3[i4] == i3) {
                    zzyq zzyqVar2 = zzyqVarArr[i4];
                    zzyqVar2.getClass();
                    iArr = iArr3;
                    zzbm zzbmVar = (zzbm) this.zze.get(zzyqVar2.zzc());
                    zzbmVar.getClass();
                    zzyqVarArr2[i4] = new zzvo(zzyqVar2, zzbmVar);
                } else {
                    iArr = iArr3;
                    zzyqVarArr2[i4] = null;
                }
                i4++;
                iArr3 = iArr;
            }
            int[] iArr4 = iArr3;
            ArrayList arrayList2 = arrayList;
            int i5 = i3;
            long zzf = zzuzVarArr[i3].zzf(zzyqVarArr2, zArr, zzwtVarArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = zzf;
            } else if (zzf != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < zzyqVarArr.length; i6++) {
                boolean z2 = true;
                if (iArr4[i6] == i5) {
                    zzwt zzwtVar3 = zzwtVarArr3[i6];
                    zzwtVar3.getClass();
                    zzwtVarArr2[i6] = zzwtVar3;
                    identityHashMap.put(zzwtVar3, Integer.valueOf(i5));
                    z = true;
                } else if (iArr2[i6] == i5) {
                    if (zzwtVarArr3[i6] != null) {
                        z2 = false;
                    }
                    zzdc.zzf(z2);
                }
            }
            if (z) {
                arrayList2.add(zzuzVarArr[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            iArr3 = iArr4;
            i = 0;
        }
        int i7 = i;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(zzwtVarArr2, i7, zzwtVarArr, i7, length);
        this.zzh = (zzuz[]) arrayList3.toArray(new zzuz[i7]);
        this.zzi = new zzul(arrayList3, zzfys.zzb(arrayList3, new zzfur() { // from class: com.google.android.gms.internal.ads.zzvn
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return ((zzuz) obj).zzg().zzc();
            }
        }));
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final zzxe zzg() {
        zzxe zzxeVar = this.zzg;
        zzxeVar.getClass();
        return zzxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzh(long j, boolean z) {
        for (zzuz zzuzVar : this.zzh) {
            zzuzVar.zzh(j, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    public final /* bridge */ /* synthetic */ void zzi(zzwv zzwvVar) {
        zzuz zzuzVar = (zzuz) zzwvVar;
        zzuy zzuyVar = this.zzf;
        zzuyVar.getClass();
        zzuyVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzj() throws IOException {
        int i = 0;
        while (true) {
            zzuz[] zzuzVarArr = this.zza;
            if (i < zzuzVarArr.length) {
                zzuzVarArr[i].zzj();
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void zzk(zzuz zzuzVar) {
        ArrayList arrayList = this.zzd;
        arrayList.remove(zzuzVar);
        if (!arrayList.isEmpty()) {
            return;
        }
        zzuz[] zzuzVarArr = this.zza;
        int i = 0;
        for (zzuz zzuzVar2 : zzuzVarArr) {
            i += zzuzVar2.zzg().zzb;
        }
        zzbm[] zzbmVarArr = new zzbm[i];
        int i2 = 0;
        for (int i3 = 0; i3 < zzuzVarArr.length; i3++) {
            zzxe zzg = zzuzVarArr[i3].zzg();
            int i4 = zzg.zzb;
            int i5 = 0;
            while (i5 < i4) {
                zzbm zzb = zzg.zzb(i5);
                int i6 = zzb.zza;
                zzz[] zzzVarArr = new zzz[i6];
                for (int i7 = 0; i7 < i6; i7++) {
                    zzz zzb2 = zzb.zzb(i7);
                    zzx zzb3 = zzb2.zzb();
                    String str = zzb2.zza;
                    if (str == null) {
                        str = "";
                    }
                    zzb3.zzO(i3 + ":" + str);
                    zzzVarArr[i7] = zzb3.zzaj();
                }
                zzbm zzbmVar = new zzbm(i3 + ":" + zzb.zzb, zzzVarArr);
                this.zze.put(zzbmVar, zzb);
                zzbmVarArr[i2] = zzbmVar;
                i5++;
                i2++;
            }
        }
        this.zzg = new zzxe(zzbmVarArr);
        zzuy zzuyVar = this.zzf;
        zzuyVar.getClass();
        zzuyVar.zzk(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzl(zzuy zzuyVar, long j) {
        this.zzf = zzuyVar;
        ArrayList arrayList = this.zzd;
        zzuz[] zzuzVarArr = this.zza;
        Collections.addAll(arrayList, zzuzVarArr);
        for (zzuz zzuzVar : zzuzVarArr) {
            zzuzVar.zzl(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final void zzm(long j) {
        this.zzi.zzm(j);
    }

    public final zzuz zzn(int i) {
        if (this.zzb[i]) {
            return ((zzxb) this.zza[i]).zzn();
        }
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzo(zzkv zzkvVar) {
        ArrayList arrayList = this.zzd;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((zzuz) arrayList.get(i)).zzo(zzkvVar);
            }
            return false;
        }
        return this.zzi.zzo(zzkvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzp() {
        return this.zzi.zzp();
    }
}
