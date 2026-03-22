package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.RandomAccess;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzyo extends zzyu implements zzlx {
    public static final /* synthetic */ int zzb = 0;
    private static final zzfzn zzc = zzfzn.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzxo
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i = zzyo.zzb;
            if (num.intValue() == -1) {
                if (num2.intValue() != -1) {
                    return -1;
                }
                return 0;
            } else if (num2.intValue() == -1) {
                return 1;
            } else {
                return num.intValue() - num2.intValue();
            }
        }
    });
    @Nullable
    public final Context zza;
    private final Object zzd;
    @GuardedBy("lock")
    private zzyc zze;
    @Nullable
    private zzyg zzf;
    private zze zzg;
    private final zzxk zzh;

    public zzyo(Context context) {
        Context context2;
        zzxk zzxkVar = new zzxk();
        zzyc zzycVar = zzyc.zzF;
        this.zzd = new Object();
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.zza = context2;
        this.zzh = zzxkVar;
        if (androidx.activity.Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzycVar)) {
            this.zze = zzycVar;
        } else {
            zzyb zzybVar = new zzyb(zzycVar, null);
            zzybVar.zzw(zzycVar);
            this.zze = new zzyc(zzybVar);
        }
        this.zzg = zze.zza;
        if (this.zze.zzQ && context == null) {
            zzdx.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static /* bridge */ /* synthetic */ int zzb(int i, int i2) {
        if (i != 0 && i == i2) {
            return Integer.MAX_VALUE;
        }
        return Integer.bitCount(i & i2);
    }

    public static int zzc(zzz zzzVar, @Nullable String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(zzzVar.zzd)) {
            return 4;
        }
        String zzh = zzh(str);
        String zzh2 = zzh(zzzVar.zzd);
        if (zzh2 != null && zzh != null) {
            if (!zzh2.startsWith(zzh) && !zzh.startsWith(zzh2)) {
                String str2 = zzeu.zza;
                if (!zzh2.split("-", 2)[0].equals(zzh.split("-", 2)[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        } else if (!z || zzh2 != null) {
            return 0;
        } else {
            return 1;
        }
    }

    @Nullable
    public static String zzh(@Nullable String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "und")) {
            return str;
        }
        return null;
    }

    public static /* bridge */ /* synthetic */ void zzi(zzyo zzyoVar) {
        zzyoVar.zzu();
    }

    public static /* synthetic */ boolean zzm(zzyo zzyoVar, zzyc zzycVar, zzz zzzVar) {
        zzyg zzygVar;
        zzyg zzygVar2;
        if (zzycVar.zzQ) {
            int i = zzzVar.zzE;
            char c = 65535;
            if (i != -1 && i > 2) {
                String str = zzzVar.zzo;
                if (str != null) {
                    switch (str.hashCode()) {
                        case -2123537834:
                            if (str.equals("audio/eac3-joc")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 187078296:
                            if (str.equals("audio/ac3")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 187078297:
                            if (str.equals(MimeTypes.AUDIO_AC4)) {
                                c = 3;
                                break;
                            }
                            break;
                        case 1504578661:
                            if (str.equals("audio/eac3")) {
                                c = 1;
                                break;
                            }
                            break;
                    }
                    if ((c == 0 || c == 1 || c == 2 || c == 3) && (Build.VERSION.SDK_INT < 32 || (zzygVar2 = zzyoVar.zzf) == null || !zzygVar2.zze())) {
                        return true;
                    }
                }
                if (Build.VERSION.SDK_INT >= 32 && (zzygVar = zzyoVar.zzf) != null && zzygVar.zze() && zzygVar.zzc() && zzyoVar.zzf.zzd() && zzyoVar.zzf.zzb(zzyoVar.zzg, zzzVar)) {
                    return true;
                }
                return false;
            }
        }
        return true;
    }

    private static void zzt(zzxe zzxeVar, zzbr zzbrVar, Map map) {
        for (int i = 0; i < zzxeVar.zzb; i++) {
            if (((zzbn) zzbrVar.zzD.get(zzxeVar.zzb(i))) != null) {
                throw null;
            }
        }
    }

    public final void zzu() {
        boolean z;
        zzyg zzygVar;
        synchronized (this.zzd) {
            try {
                z = false;
                if (this.zze.zzQ && Build.VERSION.SDK_INT >= 32 && (zzygVar = this.zzf) != null && zzygVar.zze()) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            zzs();
        }
    }

    @Nullable
    private static final Pair zzv(int i, zzyt zzytVar, int[][][] iArr, zzyi zzyiVar, Comparator comparator) {
        RandomAccess randomAccess;
        zzyt zzytVar2 = zzytVar;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < 2) {
            if (i == zzytVar2.zzc(i2)) {
                zzxe zzd = zzytVar2.zzd(i2);
                for (int i3 = 0; i3 < zzd.zzb; i3++) {
                    zzbm zzb2 = zzd.zzb(i3);
                    List zza = zzyiVar.zza(i2, zzb2, iArr[i2][i3]);
                    int i4 = zzb2.zza;
                    boolean[] zArr = new boolean[i4];
                    int i5 = 0;
                    while (i5 < i4) {
                        int i6 = i5 + 1;
                        zzyj zzyjVar = (zzyj) zza.get(i5);
                        int zzb3 = zzyjVar.zzb();
                        if (!zArr[i5] && zzb3 != 0) {
                            if (zzb3 == 1) {
                                randomAccess = zzfyc.zzo(zzyjVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(zzyjVar);
                                for (int i7 = i6; i7 < i4; i7++) {
                                    zzyj zzyjVar2 = (zzyj) zza.get(i7);
                                    if (zzyjVar2.zzb() == 2 && zzyjVar.zzc(zzyjVar2)) {
                                        arrayList2.add(zzyjVar2);
                                        zArr[i7] = true;
                                    }
                                }
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        }
                        i5 = i6;
                    }
                }
            }
            i2++;
            zzytVar2 = zzytVar;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i8 = 0; i8 < list.size(); i8++) {
            iArr2[i8] = ((zzyj) list.get(i8)).zzc;
        }
        zzyj zzyjVar3 = (zzyj) list.get(0);
        return Pair.create(new zzyp(zzyjVar3.zzb, iArr2, 0), Integer.valueOf(zzyjVar3.zza));
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void zza(zzlv zzlvVar) {
        synchronized (this.zzd) {
            boolean z = this.zze.zzU;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyu
    public final Pair zzd(zzyt zzytVar, int[][][] iArr, final int[] iArr2, zzvb zzvbVar, zzbl zzblVar) throws zzik {
        final zzyc zzycVar;
        final boolean z;
        final String str;
        final String str2;
        zzyq zza;
        int i;
        Context context;
        CaptioningManager captioningManager;
        Locale locale;
        Context context2;
        int i2 = 1;
        synchronized (this.zzd) {
            zzycVar = this.zze;
        }
        if (zzycVar.zzQ && Build.VERSION.SDK_INT >= 32 && this.zzf == null) {
            this.zzf = new zzyg(this.zza, this);
        }
        int i3 = 2;
        zzyp[] zzypVarArr = new zzyp[2];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i5 >= 2) {
                z = false;
                break;
            } else if (zzytVar.zzc(i5) == 2 && zzytVar.zzd(i5).zzb > 0) {
                z = true;
                break;
            } else {
                i5++;
            }
        }
        Pair zzv = zzv(1, zzytVar, iArr, new zzyi() { // from class: com.google.android.gms.internal.ads.zzxt
            @Override // com.google.android.gms.internal.ads.zzyi
            public final List zza(int i6, zzbm zzbmVar, int[] iArr3) {
                final zzyo zzyoVar = zzyo.this;
                final zzyc zzycVar2 = zzycVar;
                zzfvd zzfvdVar = new zzfvd() { // from class: com.google.android.gms.internal.ads.zzxv
                    @Override // com.google.android.gms.internal.ads.zzfvd
                    public final boolean zza(Object obj) {
                        return zzyo.zzm(zzyo.this, zzycVar2, (zzz) obj);
                    }
                };
                int i7 = iArr2[i6];
                int i8 = zzfyc.zzd;
                zzfxz zzfxzVar = new zzfxz();
                for (int i9 = 0; i9 < zzbmVar.zza; i9++) {
                    zzfxzVar.zzf(new zzxy(i6, zzbmVar, i9, zzycVar2, iArr3[i9], z, zzfvdVar, i7));
                }
                return zzfxzVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxu
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzxy) Collections.max((List) obj)).zza((zzxy) Collections.max((List) obj2));
            }
        });
        if (zzv != null) {
            zzypVarArr[((Integer) zzv.second).intValue()] = (zzyp) zzv.first;
        }
        if (zzv == null) {
            str = null;
        } else {
            Object obj = zzv.first;
            str = ((zzyp) obj).zza.zzb(((zzyp) obj).zzb[0]).zzd;
        }
        int i6 = zzycVar.zzu.zzb;
        final Point zzw = (!zzycVar.zzk || (context2 = this.zza) == null) ? null : zzeu.zzw(context2);
        Pair zzv2 = zzv(2, zzytVar, iArr, new zzyi() { // from class: com.google.android.gms.internal.ads.zzxr
            /* JADX WARN: Removed duplicated region for block: B:34:0x005e  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x006a  */
            @Override // com.google.android.gms.internal.ads.zzyi
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.List zza(int r19, com.google.android.gms.internal.ads.zzbm r20, int[] r21) {
                /*
                    Method dump skipped, instructions count: 221
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxr.zza(int, com.google.android.gms.internal.ads.zzbm, int[]):java.util.List");
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxs
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                List list = (List) obj2;
                List list2 = (List) obj3;
                return zzfxr.zzj().zzc((zzym) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyk
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzym.zzd((zzym) obj4, (zzym) obj5);
                    }
                }), (zzym) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyk
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzym.zzd((zzym) obj4, (zzym) obj5);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzyk
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzym.zzd((zzym) obj4, (zzym) obj5);
                    }
                }).zzb(list.size(), list2.size()).zzc((zzym) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyl
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzym.zza((zzym) obj4, (zzym) obj5);
                    }
                }), (zzym) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyl
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzym.zza((zzym) obj4, (zzym) obj5);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzyl
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzym.zza((zzym) obj4, (zzym) obj5);
                    }
                }).zza();
            }
        });
        int i7 = 4;
        Pair zzv3 = zzv2 == null ? zzv(4, zzytVar, iArr, new zzyi() { // from class: com.google.android.gms.internal.ads.zzxp
            @Override // com.google.android.gms.internal.ads.zzyi
            public final List zza(int i8, zzbm zzbmVar, int[] iArr3) {
                int i9 = zzyo.zzb;
                int i10 = zzfyc.zzd;
                zzfxz zzfxzVar = new zzfxz();
                for (int i11 = 0; i11 < zzbmVar.zza; i11++) {
                    zzfxzVar.zzf(new zzxz(i8, zzbmVar, i11, zzyc.this, iArr3[i11]));
                }
                return zzfxzVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxq
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((zzxz) ((List) obj2).get(0)).compareTo((zzxz) ((List) obj3).get(0));
            }
        }) : null;
        if (zzv3 != null) {
            zzypVarArr[((Integer) zzv3.second).intValue()] = (zzyp) zzv3.first;
        } else if (zzv2 != null) {
            zzypVarArr[((Integer) zzv2.second).intValue()] = (zzyp) zzv2.first;
        }
        if (!zzycVar.zzx || (context = this.zza) == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            str2 = null;
        } else {
            String str3 = zzeu.zza;
            str2 = locale.toLanguageTag();
        }
        int i8 = 3;
        Pair zzv4 = zzv(3, zzytVar, iArr, new zzyi() { // from class: com.google.android.gms.internal.ads.zzxw
            @Override // com.google.android.gms.internal.ads.zzyi
            public final List zza(int i9, zzbm zzbmVar, int[] iArr3) {
                int i10 = zzyo.zzb;
                int i11 = zzfyc.zzd;
                zzfxz zzfxzVar = new zzfxz();
                for (int i12 = 0; i12 < zzbmVar.zza; i12++) {
                    zzfxzVar.zzf(new zzyh(i9, zzbmVar, i12, zzyc.this, iArr3[i12], str, str2));
                }
                return zzfxzVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxx
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((zzyh) ((List) obj2).get(0)).zza((zzyh) ((List) obj3).get(0));
            }
        });
        if (zzv4 != null) {
            zzypVarArr[((Integer) zzv4.second).intValue()] = (zzyp) zzv4.first;
        }
        int i9 = 0;
        while (i9 < i3) {
            int zzc2 = zzytVar.zzc(i9);
            if (zzc2 == i3 || zzc2 == i2 || zzc2 == i8 || zzc2 == i7) {
                i = i2;
            } else {
                zzxe zzd = zzytVar.zzd(i9);
                int[][] iArr3 = iArr[i9];
                int i10 = i4;
                int i11 = i10;
                zzbm zzbmVar = null;
                zzya zzyaVar = null;
                while (i10 < zzd.zzb) {
                    zzbm zzb2 = zzd.zzb(i10);
                    int[] iArr4 = iArr3[i10];
                    zzya zzyaVar2 = zzyaVar;
                    int i12 = i2;
                    for (int i13 = i4; i13 < zzb2.zza; i13++) {
                        if (zzlw.zza(iArr4[i13], zzycVar.zzR)) {
                            zzya zzyaVar3 = new zzya(zzb2.zzb(i13), iArr4[i13]);
                            if (zzyaVar2 == null || zzyaVar3.compareTo(zzyaVar2) > 0) {
                                zzyaVar2 = zzyaVar3;
                                zzbmVar = zzb2;
                                i11 = i13;
                            }
                        }
                    }
                    i10++;
                    i2 = i12;
                    i4 = 0;
                    zzyaVar = zzyaVar2;
                }
                i = i2;
                zzypVarArr[i9] = zzbmVar == null ? null : new zzyp(zzbmVar, new int[]{i11}, 0);
            }
            i9++;
            i2 = i;
            i3 = 2;
            i4 = 0;
            i8 = 3;
            i7 = 4;
        }
        int i14 = i2;
        HashMap hashMap = new HashMap();
        int i15 = 2;
        for (int i16 = 0; i16 < 2; i16++) {
            zzt(zzytVar.zzd(i16), zzycVar, hashMap);
        }
        zzt(zzytVar.zze(), zzycVar, hashMap);
        for (int i17 = 0; i17 < 2; i17++) {
            if (((zzbn) hashMap.get(Integer.valueOf(zzytVar.zzc(i17)))) != null) {
                throw null;
            }
        }
        int i18 = 0;
        while (i18 < i15) {
            zzxe zzd2 = zzytVar.zzd(i18);
            if (zzycVar.zzf(i18, zzd2)) {
                if (zzycVar.zzd(i18, zzd2) == null) {
                    zzypVarArr[i18] = null;
                } else {
                    throw null;
                }
            }
            i18++;
            i15 = 2;
        }
        int i19 = 0;
        while (i19 < i15) {
            int zzc3 = zzytVar.zzc(i19);
            if (zzycVar.zze(i19) || zzycVar.zzE.contains(Integer.valueOf(zzc3))) {
                zzypVarArr[i19] = null;
            }
            i19++;
            i15 = 2;
        }
        zzxk zzxkVar = this.zzh;
        zzzf zzq = zzq();
        zzfyc zzd3 = zzxl.zzd(zzypVarArr);
        int i20 = 2;
        zzyq[] zzyqVarArr = new zzyq[2];
        int i21 = 0;
        while (i21 < i20) {
            zzyp zzypVar = zzypVarArr[i21];
            if (zzypVar != null) {
                int[] iArr5 = zzypVar.zzb;
                int length = iArr5.length;
                if (length != 0) {
                    if (length == i14) {
                        zza = new zzyr(zzypVar.zza, iArr5[0], 0, 0, null);
                    } else {
                        zza = zzxkVar.zza(zzypVar.zza, iArr5, 0, zzq, (zzfyc) zzd3.get(i21));
                    }
                    zzyqVarArr[i21] = zza;
                } else {
                    i21++;
                    i20 = 2;
                    i14 = 1;
                }
            }
            i21++;
            i20 = 2;
            i14 = 1;
        }
        zzlz[] zzlzVarArr = new zzlz[i20];
        for (int i22 = 0; i22 < i20; i22++) {
            zzlzVarArr[i22] = (zzycVar.zze(i22) || zzycVar.zzE.contains(Integer.valueOf(zzytVar.zzc(i22))) || (zzytVar.zzc(i22) != -2 && zzyqVarArr[i22] == null)) ? null : zzlz.zza;
        }
        return Pair.create(zzlzVarArr, zzyqVarArr);
    }

    public final zzyc zzf() {
        zzyc zzycVar;
        synchronized (this.zzd) {
            zzycVar = this.zze;
        }
        return zzycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final void zzj() {
        zzyg zzygVar;
        if (Build.VERSION.SDK_INT >= 32 && (zzygVar = this.zzf) != null) {
            zzygVar.zza();
        }
        super.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final void zzk(zze zzeVar) {
        if (this.zzg.equals(zzeVar)) {
            return;
        }
        this.zzg = zzeVar;
        zzu();
    }

    public final void zzl(zzyb zzybVar) {
        boolean equals;
        zzyc zzycVar = new zzyc(zzybVar);
        synchronized (this.zzd) {
            equals = this.zze.equals(zzycVar);
            this.zze = zzycVar;
        }
        if (!equals) {
            if (zzycVar.zzQ && this.zza == null) {
                zzdx.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final boolean zzn() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    @Nullable
    public final zzlx zze() {
        return this;
    }
}
