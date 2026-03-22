package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbca {

    /* compiled from: Proguard */
    /* renamed from: com.google.android.gms.internal.ads.zzbca$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] zza;

        static {
            int[] iArr = new int[zzgyr.values().length];
            zza = iArr;
            try {
                iArr[zzgyr.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                zza[zzgyr.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                zza[zzgyr.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                zza[zzgyr.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                zza[zzgyr.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                zza[zzgyr.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                zza[zzgyr.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zza extends zzgys<zza, zzb> implements zzf {
        public static final int zza = 7;
        public static final int zzb = 8;
        public static final int zzc = 9;
        public static final int zzd = 10;
        public static final int zze = 11;
        public static final int zzf = 12;
        public static final int zzg = 13;
        public static final int zzh = 14;
        public static final int zzi = 15;
        public static final int zzj = 16;
        public static final int zzk = 17;
        private static final zza zzl;
        private static volatile zzhal<zza> zzm;
        private zzx zzA;
        private zzz zzB;
        private int zzn;
        private int zzo;
        private zzg zzu;
        private zzi zzv;
        private zzk zzx;
        private zzah zzy;
        private zzac zzz;
        private int zzp = 1000;
        private zzgze<zzd> zzw = zzgys.zzbK();
        private zzgze<zzat> zzC = zzgys.zzbK();

        /* compiled from: Proguard */
        /* renamed from: com.google.android.gms.internal.ads.zzbca$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public enum EnumC0040zza implements zzgyw {
            AD_INITIATER_UNSPECIFIED(0),
            BANNER(1),
            DFP_BANNER(2),
            INTERSTITIAL(3),
            DFP_INTERSTITIAL(4),
            NATIVE_EXPRESS(5),
            AD_LOADER(6),
            REWARD_BASED_VIDEO_AD(7),
            BANNER_SEARCH_ADS(8),
            GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
            APP_OPEN(10),
            REWARDED_INTERSTITIAL(11);
            
            public static final int zzm = 0;
            public static final int zzn = 1;
            public static final int zzo = 2;
            public static final int zzp = 3;
            public static final int zzq = 4;
            public static final int zzr = 5;
            public static final int zzs = 6;
            public static final int zzt = 7;
            public static final int zzu = 8;
            public static final int zzv = 9;
            public static final int zzw = 10;
            public static final int zzx = 11;
            private static final zzgyx<EnumC0040zza> zzy = new zzgyx<EnumC0040zza>() { // from class: com.google.android.gms.internal.ads.zzbca.zza.zza.1
                /* renamed from: zza */
                public EnumC0040zza zzb(int i) {
                    return EnumC0040zza.zzb(i);
                }
            };
            private final int zzA;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Proguard */
            /* renamed from: com.google.android.gms.internal.ads.zzbca$zza$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public final class C0041zza implements zzgyy {
                static final zzgyy zza = new C0041zza();

                private C0041zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzgyy
                public boolean zza(int i) {
                    if (EnumC0040zza.zzb(i) != null) {
                        return true;
                    }
                    return false;
                }
            }

            EnumC0040zza(int i) {
                this.zzA = i;
            }

            public static EnumC0040zza zzb(int i) {
                switch (i) {
                    case 0:
                        return AD_INITIATER_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return DFP_BANNER;
                    case 3:
                        return INTERSTITIAL;
                    case 4:
                        return DFP_INTERSTITIAL;
                    case 5:
                        return NATIVE_EXPRESS;
                    case 6:
                        return AD_LOADER;
                    case 7:
                        return REWARD_BASED_VIDEO_AD;
                    case 8:
                        return BANNER_SEARCH_ADS;
                    case 9:
                        return GOOGLE_MOBILE_ADS_SDK_ADAPTER;
                    case 10:
                        return APP_OPEN;
                    case 11:
                        return REWARDED_INTERSTITIAL;
                    default:
                        return null;
                }
            }

            public static zzgyx<EnumC0040zza> zzd() {
                return zzy;
            }

            public static zzgyy zze() {
                return C0041zza.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.zzA);
            }

            @Override // com.google.android.gms.internal.ads.zzgyw
            public final int zza() {
                return this.zzA;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zzb extends zzgym<zza, zzb> implements zzf {
            public zzb zzA(zzac zzacVar) {
                zzbu();
                ((zza) this.zza).zzcu(zzacVar);
                return this;
            }

            public zzb zzB(zzg zzgVar) {
                zzbu();
                ((zza) this.zza).zzcv(zzgVar);
                return this;
            }

            public zzb zzC(zzi zziVar) {
                zzbu();
                ((zza) this.zza).zzcw(zziVar);
                return this;
            }

            public zzb zzD(zzah zzahVar) {
                zzbu();
                ((zza) this.zza).zzcx(zzahVar);
                return this;
            }

            public zzb zzE(zzk zzkVar) {
                zzbu();
                ((zza) this.zza).zzcy(zzkVar);
                return this;
            }

            public zzb zzF(int i) {
                zzbu();
                ((zza) this.zza).zzcz(i);
                return this;
            }

            public zzb zzG(int i) {
                zzbu();
                ((zza) this.zza).zzcA(i);
                return this;
            }

            public zzb zzH(EnumC0040zza enumC0040zza) {
                zzbu();
                ((zza) this.zza).zzcB(enumC0040zza);
                return this;
            }

            public zzb zzI(zzx.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzcC(zzaVar.zzbr());
                return this;
            }

            public zzb zzJ(zzx zzxVar) {
                zzbu();
                ((zza) this.zza).zzcC(zzxVar);
                return this;
            }

            public zzb zzK(zzq zzqVar) {
                zzbu();
                ((zza) this.zza).zzcD(zzqVar);
                return this;
            }

            public zzb zzL(zzz.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzcE(zzaVar.zzbr());
                return this;
            }

            public zzb zzM(zzz zzzVar) {
                zzbu();
                ((zza) this.zza).zzcE(zzzVar);
                return this;
            }

            public zzb zzN(zzac.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzcF(zzaVar.zzbr());
                return this;
            }

            public zzb zzO(zzac zzacVar) {
                zzbu();
                ((zza) this.zza).zzcF(zzacVar);
                return this;
            }

            public zzb zzP(int i, zzd.zzb zzbVar) {
                zzbu();
                ((zza) this.zza).zzcG(i, zzbVar.zzbr());
                return this;
            }

            public zzb zzQ(int i, zzd zzdVar) {
                zzbu();
                ((zza) this.zza).zzcG(i, zzdVar);
                return this;
            }

            public zzb zzR(zzg.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzcH(zzaVar.zzbr());
                return this;
            }

            public zzb zzS(zzg zzgVar) {
                zzbu();
                ((zza) this.zza).zzcH(zzgVar);
                return this;
            }

            public zzb zzT(zzi.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzcI(zzaVar.zzbr());
                return this;
            }

            public zzb zzU(zzi zziVar) {
                zzbu();
                ((zza) this.zza).zzcI(zziVar);
                return this;
            }

            public zzb zzV(zzah.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzcJ(zzaVar.zzbr());
                return this;
            }

            public zzb zzW(zzah zzahVar) {
                zzbu();
                ((zza) this.zza).zzcJ(zzahVar);
                return this;
            }

            public zzb zzX(zzk.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzcK(zzaVar.zzbr());
                return this;
            }

            public zzb zzY(zzk zzkVar) {
                zzbu();
                ((zza) this.zza).zzcK(zzkVar);
                return this;
            }

            public zzb zzZ(int i, zzat.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzcL(i, zzaVar.zzbr());
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public int zza() {
                return ((zza) this.zza).zza();
            }

            public zzb zzaa(int i, zzat zzatVar) {
                zzbu();
                ((zza) this.zza).zzcL(i, zzatVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzd zzab(int i) {
                return ((zza) this.zza).zzab(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzg zzac() {
                return ((zza) this.zza).zzac();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzi zzad() {
                return ((zza) this.zza).zzad();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzk zzae() {
                return ((zza) this.zza).zzae();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzq zzaf() {
                return ((zza) this.zza).zzaf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzx zzag() {
                return ((zza) this.zza).zzag();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzz zzah() {
                return ((zza) this.zza).zzah();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzac zzai() {
                return ((zza) this.zza).zzai();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzah zzaj() {
                return ((zza) this.zza).zzaj();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public zzat zzak(int i) {
                return ((zza) this.zza).zzak(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public List<zzd> zzal() {
                return Collections.unmodifiableList(((zza) this.zza).zzal());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public List<zzat> zzam() {
                return Collections.unmodifiableList(((zza) this.zza).zzam());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzan() {
                return ((zza) this.zza).zzan();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzao() {
                return ((zza) this.zza).zzao();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzap() {
                return ((zza) this.zza).zzap();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzaq() {
                return ((zza) this.zza).zzaq();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzar() {
                return ((zza) this.zza).zzar();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzas() {
                return ((zza) this.zza).zzas();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzat() {
                return ((zza) this.zza).zzat();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzau() {
                return ((zza) this.zza).zzau();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public boolean zzav() {
                return ((zza) this.zza).zzav();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public int zzb() {
                return ((zza) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzf
            public EnumC0040zza zzc() {
                return ((zza) this.zza).zzc();
            }

            public zzb zzd(Iterable<? extends zzd> iterable) {
                zzbu();
                ((zza) this.zza).zzaF(iterable);
                return this;
            }

            public zzb zze(Iterable<? extends zzat> iterable) {
                zzbu();
                ((zza) this.zza).zzaG(iterable);
                return this;
            }

            public zzb zzf(zzd.zzb zzbVar) {
                zzbu();
                ((zza) this.zza).zzaH(zzbVar.zzbr());
                return this;
            }

            public zzb zzg(zzd zzdVar) {
                zzbu();
                ((zza) this.zza).zzaH(zzdVar);
                return this;
            }

            public zzb zzh(int i, zzd.zzb zzbVar) {
                zzbu();
                ((zza) this.zza).zzaI(i, zzbVar.zzbr());
                return this;
            }

            public zzb zzi(int i, zzd zzdVar) {
                zzbu();
                ((zza) this.zza).zzaI(i, zzdVar);
                return this;
            }

            public zzb zzj(zzat.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzaJ(zzaVar.zzbr());
                return this;
            }

            public zzb zzk(zzat zzatVar) {
                zzbu();
                ((zza) this.zza).zzaJ(zzatVar);
                return this;
            }

            public zzb zzl(int i, zzat.zza zzaVar) {
                zzbu();
                ((zza) this.zza).zzaK(i, zzaVar.zzbr());
                return this;
            }

            public zzb zzm(int i, zzat zzatVar) {
                zzbu();
                ((zza) this.zza).zzaK(i, zzatVar);
                return this;
            }

            public zzb zzn() {
                zzbu();
                ((zza) this.zza).zzcf();
                return this;
            }

            public zzb zzo() {
                zzbu();
                ((zza) this.zza).zzcg();
                return this;
            }

            public zzb zzp() {
                zzbu();
                ((zza) this.zza).zzch();
                return this;
            }

            public zzb zzq() {
                zzbu();
                ((zza) this.zza).zzci();
                return this;
            }

            public zzb zzr() {
                zzbu();
                ((zza) this.zza).zzcj();
                return this;
            }

            public zzb zzs() {
                zzbu();
                ((zza) this.zza).zzck();
                return this;
            }

            public zzb zzt() {
                zzbu();
                ((zza) this.zza).zzcl();
                return this;
            }

            public zzb zzu() {
                zzbu();
                ((zza) this.zza).zzcm();
                return this;
            }

            public zzb zzv() {
                zzbu();
                ((zza) this.zza).zzcn();
                return this;
            }

            public zzb zzw() {
                zzbu();
                ((zza) this.zza).zzco();
                return this;
            }

            public zzb zzx() {
                zzbu();
                ((zza) this.zza).zzcp();
                return this;
            }

            public zzb zzy(zzx zzxVar) {
                zzbu();
                ((zza) this.zza).zzcs(zzxVar);
                return this;
            }

            public zzb zzz(zzz zzzVar) {
                zzbu();
                ((zza) this.zza).zzct(zzzVar);
                return this;
            }

            private zzb() {
                super(zza.zzl);
            }
        }

        static {
            zza zzaVar = new zza();
            zzl = zzaVar;
            zzgys.zzbZ(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaF(Iterable<? extends zzd> iterable) {
            zzcq();
            zzgwt.zzaQ(iterable, this.zzw);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaG(Iterable<? extends zzat> iterable) {
            zzcr();
            zzgwt.zzaQ(iterable, this.zzC);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaH(zzd zzdVar) {
            zzdVar.getClass();
            zzcq();
            this.zzw.add(zzdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaI(int i, zzd zzdVar) {
            zzdVar.getClass();
            zzcq();
            this.zzw.add(i, zzdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaJ(zzat zzatVar) {
            zzatVar.getClass();
            zzcr();
            this.zzC.add(zzatVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaK(int i, zzat zzatVar) {
            zzatVar.getClass();
            zzcr();
            this.zzC.add(i, zzatVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcA(int i) {
            zzcr();
            this.zzC.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcB(EnumC0040zza enumC0040zza) {
            this.zzo = enumC0040zza.zza();
            this.zzn |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcC(zzx zzxVar) {
            zzxVar.getClass();
            this.zzA = zzxVar;
            this.zzn |= 128;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcD(zzq zzqVar) {
            this.zzp = zzqVar.zza();
            this.zzn |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcE(zzz zzzVar) {
            zzzVar.getClass();
            this.zzB = zzzVar;
            this.zzn |= 256;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcF(zzac zzacVar) {
            zzacVar.getClass();
            this.zzz = zzacVar;
            this.zzn |= 64;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcG(int i, zzd zzdVar) {
            zzdVar.getClass();
            zzcq();
            this.zzw.set(i, zzdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcH(zzg zzgVar) {
            zzgVar.getClass();
            this.zzu = zzgVar;
            this.zzn |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcI(zzi zziVar) {
            zziVar.getClass();
            this.zzv = zziVar;
            this.zzn |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcJ(zzah zzahVar) {
            zzahVar.getClass();
            this.zzy = zzahVar;
            this.zzn |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcK(zzk zzkVar) {
            zzkVar.getClass();
            this.zzx = zzkVar;
            this.zzn |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcL(int i, zzat zzatVar) {
            zzatVar.getClass();
            zzcr();
            this.zzC.set(i, zzatVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcf() {
            this.zzn &= -2;
            this.zzo = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcg() {
            this.zzA = null;
            this.zzn &= -129;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzch() {
            this.zzn &= -3;
            this.zzp = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzci() {
            this.zzB = null;
            this.zzn &= -257;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcj() {
            this.zzz = null;
            this.zzn &= -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzck() {
            this.zzw = zzgys.zzbK();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcl() {
            this.zzu = null;
            this.zzn &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcm() {
            this.zzv = null;
            this.zzn &= -9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcn() {
            this.zzy = null;
            this.zzn &= -33;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzco() {
            this.zzx = null;
            this.zzn &= -17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcp() {
            this.zzC = zzgys.zzbK();
        }

        private void zzcq() {
            zzgze<zzd> zzgzeVar = this.zzw;
            if (!zzgzeVar.zzc()) {
                this.zzw = zzgys.zzbL(zzgzeVar);
            }
        }

        private void zzcr() {
            zzgze<zzat> zzgzeVar = this.zzC;
            if (!zzgzeVar.zzc()) {
                this.zzC = zzgys.zzbL(zzgzeVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcs(zzx zzxVar) {
            zzxVar.getClass();
            zzx zzxVar2 = this.zzA;
            if (zzxVar2 != null && zzxVar2 != zzx.zzh()) {
                zzx.zza zzf2 = zzx.zzf(zzxVar2);
                zzf2.zzbj(zzxVar);
                zzxVar = zzf2.zzbs();
            }
            this.zzA = zzxVar;
            this.zzn |= 128;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzct(zzz zzzVar) {
            zzzVar.getClass();
            zzz zzzVar2 = this.zzB;
            if (zzzVar2 != null && zzzVar2 != zzz.zzh()) {
                zzz.zza zzf2 = zzz.zzf(zzzVar2);
                zzf2.zzbj(zzzVar);
                zzzVar = zzf2.zzbs();
            }
            this.zzB = zzzVar;
            this.zzn |= 256;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcu(zzac zzacVar) {
            zzacVar.getClass();
            zzac zzacVar2 = this.zzz;
            if (zzacVar2 != null && zzacVar2 != zzac.zzf()) {
                zzac.zza zzc2 = zzac.zzc(zzacVar2);
                zzc2.zzbj(zzacVar);
                zzacVar = zzc2.zzbs();
            }
            this.zzz = zzacVar;
            this.zzn |= 64;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcv(zzg zzgVar) {
            zzgVar.getClass();
            zzg zzgVar2 = this.zzu;
            if (zzgVar2 != null && zzgVar2 != zzg.zzh()) {
                zzg.zza zzf2 = zzg.zzf(zzgVar2);
                zzf2.zzbj(zzgVar);
                zzgVar = zzf2.zzbs();
            }
            this.zzu = zzgVar;
            this.zzn |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcw(zzi zziVar) {
            zziVar.getClass();
            zzi zziVar2 = this.zzv;
            if (zziVar2 != null && zziVar2 != zzi.zzh()) {
                zzi.zza zzf2 = zzi.zzf(zziVar2);
                zzf2.zzbj(zziVar);
                zziVar = zzf2.zzbs();
            }
            this.zzv = zziVar;
            this.zzn |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcx(zzah zzahVar) {
            zzahVar.getClass();
            zzah zzahVar2 = this.zzy;
            if (zzahVar2 != null && zzahVar2 != zzah.zzn()) {
                zzah.zza zzl2 = zzah.zzl(zzahVar2);
                zzl2.zzbj(zzahVar);
                zzahVar = zzl2.zzbs();
            }
            this.zzy = zzahVar;
            this.zzn |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcy(zzk zzkVar) {
            zzkVar.getClass();
            zzk zzkVar2 = this.zzx;
            if (zzkVar2 != null && zzkVar2 != zzk.zzh()) {
                zzk.zza zzf2 = zzk.zzf(zzkVar2);
                zzf2.zzbj(zzkVar);
                zzkVar = zzf2.zzbs();
            }
            this.zzx = zzkVar;
            this.zzn |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcz(int i) {
            zzcq();
            this.zzw.remove(i);
        }

        public static zzb zzd() {
            return (zzb) zzl.zzaZ();
        }

        public static zzb zzf(zza zzaVar) {
            return (zzb) zzl.zzba(zzaVar);
        }

        public static zza zzh() {
            return zzl;
        }

        public static zza zzi(InputStream inputStream) throws IOException {
            return (zza) zzgys.zzbk(zzl, inputStream);
        }

        public static zza zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zza) zzgys.zzbl(zzl, inputStream, zzgycVar);
        }

        public static zza zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zza) zzgys.zzbm(zzl, zzgxkVar);
        }

        public static zza zzl(zzgxq zzgxqVar) throws IOException {
            return (zza) zzgys.zzbn(zzl, zzgxqVar);
        }

        public static zza zzm(InputStream inputStream) throws IOException {
            return (zza) zzgys.zzbo(zzl, inputStream);
        }

        public static zza zzn(ByteBuffer byteBuffer) throws zzgzh {
            return (zza) zzgys.zzbp(zzl, byteBuffer);
        }

        public static zza zzo(byte[] bArr) throws zzgzh {
            return (zza) zzgys.zzbq(zzl, bArr);
        }

        public static zza zzp(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zza) zzgys.zzbr(zzl, zzgxkVar, zzgycVar);
        }

        public static zza zzq(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zza) zzgys.zzbs(zzl, zzgxqVar, zzgycVar);
        }

        public static zza zzr(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zza) zzgys.zzbu(zzl, inputStream, zzgycVar);
        }

        public static zza zzs(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zza) zzgys.zzbv(zzl, byteBuffer, zzgycVar);
        }

        public static zza zzt(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zza) zzgys.zzbx(zzl, bArr, zzgycVar);
        }

        public static zzhal<zza> zzw() {
            return zzl.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public int zza() {
            return this.zzw.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzd zzab(int i) {
            return this.zzw.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzg zzac() {
            zzg zzgVar = this.zzu;
            if (zzgVar == null) {
                return zzg.zzh();
            }
            return zzgVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzi zzad() {
            zzi zziVar = this.zzv;
            if (zziVar == null) {
                return zzi.zzh();
            }
            return zziVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzk zzae() {
            zzk zzkVar = this.zzx;
            if (zzkVar == null) {
                return zzk.zzh();
            }
            return zzkVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzq zzaf() {
            zzq zzb2 = zzq.zzb(this.zzp);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzx zzag() {
            zzx zzxVar = this.zzA;
            if (zzxVar == null) {
                return zzx.zzh();
            }
            return zzxVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzz zzah() {
            zzz zzzVar = this.zzB;
            if (zzzVar == null) {
                return zzz.zzh();
            }
            return zzzVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzac zzai() {
            zzac zzacVar = this.zzz;
            if (zzacVar == null) {
                return zzac.zzf();
            }
            return zzacVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzah zzaj() {
            zzah zzahVar = this.zzy;
            if (zzahVar == null) {
                return zzah.zzn();
            }
            return zzahVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public zzat zzak(int i) {
            return this.zzC.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public List<zzd> zzal() {
            return this.zzw;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public List<zzat> zzam() {
            return this.zzC;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzan() {
            if ((this.zzn & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzao() {
            if ((this.zzn & 128) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzap() {
            if ((this.zzn & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzaq() {
            if ((this.zzn & 256) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzar() {
            if ((this.zzn & 64) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzas() {
            if ((this.zzn & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzat() {
            if ((this.zzn & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzau() {
            if ((this.zzn & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public boolean zzav() {
            if ((this.zzn & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public int zzb() {
            return this.zzC.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzf
        public EnumC0040zza zzc() {
            EnumC0040zza zzb2 = EnumC0040zza.zzb(this.zzo);
            if (zzb2 == null) {
                return EnumC0040zza.AD_INITIATER_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zza> zzhalVar2 = zzm;
                                    if (zzhalVar2 == null) {
                                        synchronized (zza.class) {
                                            try {
                                                zzhalVar = zzm;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzl);
                                                    zzm = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzl;
                        }
                        return new zzb();
                    }
                    return new zza();
                }
                return zzgys.zzbQ(zzl, "\u0004\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007᠌\u0000\b᠌\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzn", "zzo", EnumC0040zza.zze(), "zzp", zzq.zze(), "zzu", "zzv", "zzw", zzd.class, "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", zzat.class});
            }
            return (byte) 1;
        }

        public zze zzu(int i) {
            return this.zzw.get(i);
        }

        public zzbi zzv(int i) {
            return this.zzC.get(i);
        }

        public List<? extends zze> zzx() {
            return this.zzw;
        }

        public List<? extends zzbi> zzy() {
            return this.zzC;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzaa extends zzhae {
        boolean zzA();

        boolean zzB();

        int zza();

        zzq zzb();

        zzv zzc();

        zzan zzw(int i);

        zzap zzx();

        List<zzan> zzy();

        boolean zzz();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzab extends zzgys<zzab, zza> implements zzae {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzab zzc;
        private static volatile zzhal<zzab> zzd;
        private int zze;
        private int zzf;
        private int zzg;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzab, zza> implements zzae {
            public zza zza() {
                zzbu();
                ((zzab) this.zza).zzz();
                return this;
            }

            public zza zzb() {
                zzbu();
                ((zzab) this.zza).zzA();
                return this;
            }

            public zza zzc(zzb zzbVar) {
                zzbu();
                ((zzab) this.zza).zzB(zzbVar);
                return this;
            }

            public zza zzd(zzc zzcVar) {
                zzbu();
                ((zzab) this.zza).zzC(zzcVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzae
            public zzb zze() {
                return ((zzab) this.zza).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzae
            public zzc zzf() {
                return ((zzab) this.zza).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzae
            public boolean zzg() {
                return ((zzab) this.zza).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzae
            public boolean zzh() {
                return ((zzab) this.zza).zzh();
            }

            private zza() {
                super(zzab.zzc);
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public enum zzb implements zzgyw {
            CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
            TWO_G(1),
            THREE_G(2),
            LTE(4);
            
            public static final int zze = 0;
            public static final int zzf = 1;
            public static final int zzg = 2;
            public static final int zzh = 4;
            private static final zzgyx<zzb> zzi = new zzgyx<zzb>() { // from class: com.google.android.gms.internal.ads.zzbca.zzab.zzb.1
                /* renamed from: zza */
                public zzb zzb(int i) {
                    return zzb.zzb(i);
                }
            };
            private final int zzk;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Proguard */
            /* loaded from: classes4.dex */
            public final class zza implements zzgyy {
                static final zzgyy zza = new zza();

                private zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzgyy
                public boolean zza(int i) {
                    if (zzb.zzb(i) != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzb(int i) {
                this.zzk = i;
            }

            public static zzb zzb(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 4) {
                                return null;
                            }
                            return LTE;
                        }
                        return THREE_G;
                    }
                    return TWO_G;
                }
                return CELLULAR_NETWORK_TYPE_UNSPECIFIED;
            }

            public static zzgyx<zzb> zzd() {
                return zzi;
            }

            public static zzgyy zze() {
                return zza.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.zzk);
            }

            @Override // com.google.android.gms.internal.ads.zzgyw
            public final int zza() {
                return this.zzk;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public enum zzc implements zzgyw {
            NETWORKTYPE_UNSPECIFIED(0),
            CELL(1),
            WIFI(2);
            
            public static final int zzd = 0;
            public static final int zze = 1;
            public static final int zzf = 2;
            private static final zzgyx<zzc> zzg = new zzgyx<zzc>() { // from class: com.google.android.gms.internal.ads.zzbca.zzab.zzc.1
                /* renamed from: zza */
                public zzc zzb(int i) {
                    return zzc.zzb(i);
                }
            };
            private final int zzi;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Proguard */
            /* loaded from: classes4.dex */
            public final class zza implements zzgyy {
                static final zzgyy zza = new zza();

                private zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzgyy
                public boolean zza(int i) {
                    if (zzc.zzb(i) != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzc(int i) {
                this.zzi = i;
            }

            public static zzc zzb(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return WIFI;
                    }
                    return CELL;
                }
                return NETWORKTYPE_UNSPECIFIED;
            }

            public static zzgyx<zzc> zzd() {
                return zzg;
            }

            public static zzgyy zze() {
                return zza.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.zzi);
            }

            @Override // com.google.android.gms.internal.ads.zzgyw
            public final int zza() {
                return this.zzi;
            }
        }

        static {
            zzab zzabVar = new zzab();
            zzc = zzabVar;
            zzgys.zzbZ(zzab.class, zzabVar);
        }

        private zzab() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzA() {
            this.zze &= -2;
            this.zzf = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzB(zzb zzbVar) {
            this.zzg = zzbVar.zza();
            this.zze |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzC(zzc zzcVar) {
            this.zzf = zzcVar.zza();
            this.zze |= 1;
        }

        public static zza zza() {
            return (zza) zzc.zzaZ();
        }

        public static zza zzb(zzab zzabVar) {
            return (zza) zzc.zzba(zzabVar);
        }

        public static zzab zzd() {
            return zzc;
        }

        public static zzab zzi(InputStream inputStream) throws IOException {
            return (zzab) zzgys.zzbk(zzc, inputStream);
        }

        public static zzab zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzab) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzab zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzab) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzab zzl(zzgxq zzgxqVar) throws IOException {
            return (zzab) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzab zzm(InputStream inputStream) throws IOException {
            return (zzab) zzgys.zzbo(zzc, inputStream);
        }

        public static zzab zzn(ByteBuffer byteBuffer) throws zzgzh {
            return (zzab) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzab zzo(byte[] bArr) throws zzgzh {
            return (zzab) zzgys.zzbq(zzc, bArr);
        }

        public static zzab zzp(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzab) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzab zzq(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzab) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzab zzr(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzab) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzab zzs(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzab) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzab zzt(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzab) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzab> zzu() {
            return zzc.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzz() {
            this.zze &= -3;
            this.zzg = 0;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzab> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzab.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zza();
                    }
                    return new zzab();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zze", "zzf", zzc.zze(), "zzg", zzb.zze()});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzae
        public zzb zze() {
            zzb zzb2 = zzb.zzb(this.zzg);
            if (zzb2 == null) {
                return zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzae
        public zzc zzf() {
            zzc zzb2 = zzc.zzb(this.zzf);
            if (zzb2 == null) {
                return zzc.NETWORKTYPE_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzae
        public boolean zzg() {
            if ((this.zze & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzae
        public boolean zzh() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzac extends zzgys<zzac, zza> implements zzad {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzac zzc;
        private static volatile zzhal<zzac> zzd;
        private int zze;
        private int zzf;
        private zzap zzg;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzac, zza> implements zzad {
            @Override // com.google.android.gms.internal.ads.zzbca.zzad
            public zzq zza() {
                return ((zzac) this.zza).zza();
            }

            public zza zzb() {
                zzbu();
                ((zzac) this.zza).zzB();
                return this;
            }

            public zza zzc() {
                zzbu();
                ((zzac) this.zza).zzC();
                return this;
            }

            public zza zzd(zzap zzapVar) {
                zzbu();
                ((zzac) this.zza).zzD(zzapVar);
                return this;
            }

            public zza zze(zzap.zza zzaVar) {
                zzbu();
                ((zzac) this.zza).zzE(zzaVar.zzbr());
                return this;
            }

            public zza zzf(zzap zzapVar) {
                zzbu();
                ((zzac) this.zza).zzE(zzapVar);
                return this;
            }

            public zza zzg(zzq zzqVar) {
                zzbu();
                ((zzac) this.zza).zzF(zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzad
            public zzap zzh() {
                return ((zzac) this.zza).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzad
            public boolean zzi() {
                return ((zzac) this.zza).zzi();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzad
            public boolean zzj() {
                return ((zzac) this.zza).zzj();
            }

            private zza() {
                super(zzac.zzc);
            }
        }

        static {
            zzac zzacVar = new zzac();
            zzc = zzacVar;
            zzgys.zzbZ(zzac.class, zzacVar);
        }

        private zzac() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzB() {
            this.zzg = null;
            this.zze &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzC() {
            this.zze &= -2;
            this.zzf = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzg;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzg = zzapVar;
            this.zze |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzE(zzap zzapVar) {
            zzapVar.getClass();
            this.zzg = zzapVar;
            this.zze |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzF(zzq zzqVar) {
            this.zzf = zzqVar.zza();
            this.zze |= 1;
        }

        public static zza zzb() {
            return (zza) zzc.zzaZ();
        }

        public static zza zzc(zzac zzacVar) {
            return (zza) zzc.zzba(zzacVar);
        }

        public static zzac zzf() {
            return zzc;
        }

        public static zzac zzg(InputStream inputStream) throws IOException {
            return (zzac) zzgys.zzbk(zzc, inputStream);
        }

        public static zzac zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzac) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzac zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzac) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzac zzm(zzgxq zzgxqVar) throws IOException {
            return (zzac) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzac zzn(InputStream inputStream) throws IOException {
            return (zzac) zzgys.zzbo(zzc, inputStream);
        }

        public static zzac zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzac) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzac zzp(byte[] bArr) throws zzgzh {
            return (zzac) zzgys.zzbq(zzc, bArr);
        }

        public static zzac zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzac) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzac zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzac) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzac zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzac) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzac zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzac) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzac zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzac) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzac> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzad
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzf);
            if (zzb2 == null) {
                return zzq.ENUM_FALSE;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzac> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzac.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zza();
                    }
                    return new zzac();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", zzq.zze(), "zzg"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzad
        public zzap zzh() {
            zzap zzapVar = this.zzg;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzad
        public boolean zzi() {
            if ((this.zze & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzad
        public boolean zzj() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzad extends zzhae {
        zzq zza();

        zzap zzh();

        boolean zzi();

        boolean zzj();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzae extends zzhae {
        zzab.zzb zze();

        zzab.zzc zzf();

        boolean zzg();

        boolean zzh();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzaf extends zzgys<zzaf, zzc> implements zzag {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        private static final zzaf zzi;
        private static volatile zzhal<zzaf> zzj;
        private int zzk;
        private int zzm;
        private int zzn;
        private long zzo;
        private long zzv;
        private int zzw;
        private zzgze<zza> zzl = zzgys.zzbK();
        private String zzp = "";
        private String zzu = "";

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgys<zza, C0042zza> implements zzb {
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            public static final int zzd = 4;
            public static final int zze = 5;
            public static final int zzf = 6;
            public static final int zzg = 7;
            public static final int zzh = 8;
            public static final int zzi = 9;
            public static final int zzj = 10;
            public static final int zzk = 11;
            public static final int zzl = 12;
            public static final int zzm = 13;
            private static final zzgzb<zzd.zza> zzn = new zzgzb<zzd.zza>() { // from class: com.google.android.gms.internal.ads.zzbca.zzaf.zza.1
                @Override // com.google.android.gms.internal.ads.zzgzb
                /* renamed from: zza */
                public zzd.zza zzb(int i) {
                    zzd.zza zzb2 = zzd.zza.zzb(i);
                    if (zzb2 == null) {
                        return zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED;
                    }
                    return zzb2;
                }
            };
            private static final zza zzo;
            private static volatile zzhal<zza> zzp;
            private zzab zzA;
            private int zzB;
            private int zzC;
            private int zzD;
            private int zzE;
            private int zzF;
            private int zzG;
            private long zzH;
            private int zzu;
            private long zzv;
            private int zzw;
            private long zzx;
            private long zzy;
            private zzgza zzz = zzgys.zzbG();

            /* compiled from: Proguard */
            /* renamed from: com.google.android.gms.internal.ads.zzbca$zzaf$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public final class C0042zza extends zzgym<zza, C0042zza> implements zzb {
                public C0042zza zzA() {
                    zzbu();
                    ((zza) this.zza).zzaI();
                    return this;
                }

                public C0042zza zzB() {
                    zzbu();
                    ((zza) this.zza).zzaJ();
                    return this;
                }

                public C0042zza zzC(zzab zzabVar) {
                    zzbu();
                    ((zza) this.zza).zzcf(zzabVar);
                    return this;
                }

                public C0042zza zzD(zzq zzqVar) {
                    zzbu();
                    ((zza) this.zza).zzcg(zzqVar);
                    return this;
                }

                public C0042zza zzE(zzq zzqVar) {
                    zzbu();
                    ((zza) this.zza).zzch(zzqVar);
                    return this;
                }

                public C0042zza zzF(int i, zzd.zza zzaVar) {
                    zzbu();
                    ((zza) this.zza).zzci(i, zzaVar);
                    return this;
                }

                public C0042zza zzG(int i) {
                    zzbu();
                    ((zza) this.zza).zzcj(i);
                    return this;
                }

                public C0042zza zzH(zzd zzdVar) {
                    zzbu();
                    ((zza) this.zza).zzck(zzdVar);
                    return this;
                }

                public C0042zza zzI(zzab.zza zzaVar) {
                    zzbu();
                    ((zza) this.zza).zzcl(zzaVar.zzbr());
                    return this;
                }

                public C0042zza zzJ(zzab zzabVar) {
                    zzbu();
                    ((zza) this.zza).zzcl(zzabVar);
                    return this;
                }

                public C0042zza zzK(zzq zzqVar) {
                    zzbu();
                    ((zza) this.zza).zzcm(zzqVar);
                    return this;
                }

                public C0042zza zzL(long j) {
                    zzbu();
                    ((zza) this.zza).zzcn(j);
                    return this;
                }

                public C0042zza zzM(long j) {
                    zzbu();
                    ((zza) this.zza).zzco(j);
                    return this;
                }

                public C0042zza zzN(zzq zzqVar) {
                    zzbu();
                    ((zza) this.zza).zzcp(zzqVar);
                    return this;
                }

                public C0042zza zzO(long j) {
                    zzbu();
                    ((zza) this.zza).zzcq(j);
                    return this;
                }

                public C0042zza zzP(long j) {
                    zzbu();
                    ((zza) this.zza).zzcr(j);
                    return this;
                }

                public C0042zza zzQ(zzq zzqVar) {
                    zzbu();
                    ((zza) this.zza).zzcs(zzqVar);
                    return this;
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public zzd zzR() {
                    return ((zza) this.zza).zzR();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public List<zzd.zza> zzS() {
                    return ((zza) this.zza).zzS();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzT() {
                    return ((zza) this.zza).zzT();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzU() {
                    return ((zza) this.zza).zzU();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzV() {
                    return ((zza) this.zza).zzV();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzW() {
                    return ((zza) this.zza).zzW();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzX() {
                    return ((zza) this.zza).zzX();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzY() {
                    return ((zza) this.zza).zzY();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzZ() {
                    return ((zza) this.zza).zzZ();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public int zza() {
                    return ((zza) this.zza).zza();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzaa() {
                    return ((zza) this.zza).zzaa();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzab() {
                    return ((zza) this.zza).zzab();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzac() {
                    return ((zza) this.zza).zzac();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzad() {
                    return ((zza) this.zza).zzad();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public boolean zzae() {
                    return ((zza) this.zza).zzae();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public int zzb() {
                    return ((zza) this.zza).zzb();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public long zzc() {
                    return ((zza) this.zza).zzc();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public long zzd() {
                    return ((zza) this.zza).zzd();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public long zze() {
                    return ((zza) this.zza).zze();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public long zzf() {
                    return ((zza) this.zza).zzf();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public zzd.zza zzg(int i) {
                    return ((zza) this.zza).zzg(i);
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public zzq zzh() {
                    return ((zza) this.zza).zzh();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public zzq zzi() {
                    return ((zza) this.zza).zzi();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public zzq zzj() {
                    return ((zza) this.zza).zzj();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public zzq zzk() {
                    return ((zza) this.zza).zzk();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public zzq zzl() {
                    return ((zza) this.zza).zzl();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
                public zzab zzm() {
                    return ((zza) this.zza).zzm();
                }

                public C0042zza zzn(Iterable<? extends zzd.zza> iterable) {
                    zzbu();
                    ((zza) this.zza).zzav(iterable);
                    return this;
                }

                public C0042zza zzo(zzd.zza zzaVar) {
                    zzbu();
                    ((zza) this.zza).zzaw(zzaVar);
                    return this;
                }

                public C0042zza zzp() {
                    zzbu();
                    ((zza) this.zza).zzax();
                    return this;
                }

                public C0042zza zzq() {
                    zzbu();
                    ((zza) this.zza).zzay();
                    return this;
                }

                public C0042zza zzr() {
                    zzbu();
                    ((zza) this.zza).zzaz();
                    return this;
                }

                public C0042zza zzs() {
                    zzbu();
                    ((zza) this.zza).zzaA();
                    return this;
                }

                public C0042zza zzt() {
                    zzbu();
                    ((zza) this.zza).zzaB();
                    return this;
                }

                public C0042zza zzu() {
                    zzbu();
                    ((zza) this.zza).zzaC();
                    return this;
                }

                public C0042zza zzv() {
                    zzbu();
                    ((zza) this.zza).zzaD();
                    return this;
                }

                public C0042zza zzw() {
                    zzbu();
                    ((zza) this.zza).zzaE();
                    return this;
                }

                public C0042zza zzx() {
                    zzbu();
                    ((zza) this.zza).zzaF();
                    return this;
                }

                public C0042zza zzy() {
                    zzbu();
                    ((zza) this.zza).zzaG();
                    return this;
                }

                public C0042zza zzz() {
                    zzbu();
                    ((zza) this.zza).zzaH();
                    return this;
                }

                private C0042zza() {
                    super(zza.zzo);
                }
            }

            static {
                zza zzaVar = new zza();
                zzo = zzaVar;
                zzgys.zzbZ(zza.class, zzaVar);
            }

            private zza() {
            }

            public static zza zzA(InputStream inputStream, zzgyc zzgycVar) throws IOException {
                return (zza) zzgys.zzbu(zzo, inputStream, zzgycVar);
            }

            public static zza zzB(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
                return (zza) zzgys.zzbv(zzo, byteBuffer, zzgycVar);
            }

            public static zza zzC(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
                return (zza) zzgys.zzbx(zzo, bArr, zzgycVar);
            }

            public static zzhal<zza> zzD() {
                return zzo.zzbN();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaA() {
                this.zzu &= -257;
                this.zzE = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaB() {
                this.zzu &= -1025;
                this.zzG = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaC() {
                this.zzA = null;
                this.zzu &= -17;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaD() {
                this.zzu &= -513;
                this.zzF = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaE() {
                this.zzu &= -9;
                this.zzy = 0L;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaF() {
                this.zzu &= -5;
                this.zzx = 0L;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaG() {
                this.zzu &= -3;
                this.zzw = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaH() {
                this.zzu &= -2;
                this.zzv = 0L;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaI() {
                this.zzu &= -2049;
                this.zzH = 0L;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaJ() {
                this.zzu &= -33;
                this.zzB = 0;
            }

            private void zzaK() {
                zzgza zzgzaVar = this.zzz;
                if (!zzgzaVar.zzc()) {
                    this.zzz = zzgys.zzbH(zzgzaVar);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzav(Iterable<? extends zzd.zza> iterable) {
                zzaK();
                for (zzd.zza zzaVar : iterable) {
                    this.zzz.zzi(zzaVar.zza());
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaw(zzd.zza zzaVar) {
                zzaVar.getClass();
                zzaK();
                this.zzz.zzi(zzaVar.zza());
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzax() {
                this.zzu &= -65;
                this.zzC = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzay() {
                this.zzu &= -129;
                this.zzD = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzaz() {
                this.zzz = zzgys.zzbG();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcf(zzab zzabVar) {
                zzabVar.getClass();
                zzab zzabVar2 = this.zzA;
                if (zzabVar2 != null && zzabVar2 != zzab.zzd()) {
                    zzab.zza zzb2 = zzab.zzb(zzabVar2);
                    zzb2.zzbj(zzabVar);
                    zzabVar = zzb2.zzbs();
                }
                this.zzA = zzabVar;
                this.zzu |= 16;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcg(zzq zzqVar) {
                this.zzC = zzqVar.zza();
                this.zzu |= 64;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzch(zzq zzqVar) {
                this.zzD = zzqVar.zza();
                this.zzu |= 128;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzci(int i, zzd.zza zzaVar) {
                zzaVar.getClass();
                zzaK();
                this.zzz.zze(i, zzaVar.zza());
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcj(int i) {
                this.zzu |= 256;
                this.zzE = i;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzck(zzd zzdVar) {
                this.zzG = zzdVar.zza();
                this.zzu |= 1024;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcl(zzab zzabVar) {
                zzabVar.getClass();
                this.zzA = zzabVar;
                this.zzu |= 16;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcm(zzq zzqVar) {
                this.zzF = zzqVar.zza();
                this.zzu |= 512;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcn(long j) {
                this.zzu |= 8;
                this.zzy = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzco(long j) {
                this.zzu |= 4;
                this.zzx = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcp(zzq zzqVar) {
                this.zzw = zzqVar.zza();
                this.zzu |= 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcq(long j) {
                this.zzu |= 1;
                this.zzv = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcr(long j) {
                this.zzu |= 2048;
                this.zzH = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzcs(zzq zzqVar) {
                this.zzB = zzqVar.zza();
                this.zzu |= 32;
            }

            public static C0042zza zzn() {
                return (C0042zza) zzo.zzaZ();
            }

            public static C0042zza zzo(zza zzaVar) {
                return (C0042zza) zzo.zzba(zzaVar);
            }

            public static zza zzq() {
                return zzo;
            }

            public static zza zzr(InputStream inputStream) throws IOException {
                return (zza) zzgys.zzbk(zzo, inputStream);
            }

            public static zza zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
                return (zza) zzgys.zzbl(zzo, inputStream, zzgycVar);
            }

            public static zza zzt(zzgxk zzgxkVar) throws zzgzh {
                return (zza) zzgys.zzbm(zzo, zzgxkVar);
            }

            public static zza zzu(zzgxq zzgxqVar) throws IOException {
                return (zza) zzgys.zzbn(zzo, zzgxqVar);
            }

            public static zza zzv(InputStream inputStream) throws IOException {
                return (zza) zzgys.zzbo(zzo, inputStream);
            }

            public static zza zzw(ByteBuffer byteBuffer) throws zzgzh {
                return (zza) zzgys.zzbp(zzo, byteBuffer);
            }

            public static zza zzx(byte[] bArr) throws zzgzh {
                return (zza) zzgys.zzbq(zzo, bArr);
            }

            public static zza zzy(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
                return (zza) zzgys.zzbr(zzo, zzgxkVar, zzgycVar);
            }

            public static zza zzz(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
                return (zza) zzgys.zzbs(zzo, zzgxqVar, zzgycVar);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public zzd zzR() {
                zzd zzb2 = zzd.zzb(this.zzG);
                if (zzb2 == null) {
                    return zzd.UNSPECIFIED;
                }
                return zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public List<zzd.zza> zzS() {
                return new zzgzc(this.zzz, zzn);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzT() {
                if ((this.zzu & 64) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzU() {
                if ((this.zzu & 128) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzV() {
                if ((this.zzu & 256) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzW() {
                if ((this.zzu & 1024) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzX() {
                if ((this.zzu & 16) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzY() {
                if ((this.zzu & 512) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzZ() {
                if ((this.zzu & 8) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public int zza() {
                return this.zzz.size();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzaa() {
                if ((this.zzu & 4) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzab() {
                if ((this.zzu & 2) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzac() {
                if ((this.zzu & 1) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzad() {
                if ((this.zzu & 2048) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public boolean zzae() {
                if ((this.zzu & 32) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public int zzb() {
                return this.zzE;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public long zzc() {
                return this.zzy;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public long zzd() {
                return this.zzx;
            }

            @Override // com.google.android.gms.internal.ads.zzgys
            public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
                zzhal zzhalVar;
                int ordinal = zzgyrVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal != 5) {
                                    if (ordinal == 6) {
                                        zzhal<zza> zzhalVar2 = zzp;
                                        if (zzhalVar2 == null) {
                                            synchronized (zza.class) {
                                                try {
                                                    zzhalVar = zzp;
                                                    if (zzhalVar == null) {
                                                        zzhalVar = new zzgyn(zzo);
                                                        zzp = zzhalVar;
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            return zzhalVar;
                                        }
                                        return zzhalVar2;
                                    }
                                    throw null;
                                }
                                return zzo;
                            }
                            return new C0042zza();
                        }
                        return new zza();
                    }
                    return zzgys.zzbQ(zzo, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ࠞ\u0006ဉ\u0004\u0007᠌\u0005\b᠌\u0006\t᠌\u0007\nင\b\u000b᠌\t\f᠌\n\rဂ\u000b", new Object[]{"zzu", "zzv", "zzw", zzq.zze(), "zzx", "zzy", "zzz", zzd.zza.zze(), "zzA", "zzB", zzq.zze(), "zzC", zzq.zze(), "zzD", zzq.zze(), "zzE", "zzF", zzq.zze(), "zzG", zzd.zze(), "zzH"});
                }
                return (byte) 1;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public long zze() {
                return this.zzv;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public long zzf() {
                return this.zzH;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public zzd.zza zzg(int i) {
                zzd.zza zzb2 = zzd.zza.zzb(this.zzz.zzd(i));
                if (zzb2 == null) {
                    return zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED;
                }
                return zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public zzq zzh() {
                zzq zzb2 = zzq.zzb(this.zzC);
                if (zzb2 == null) {
                    return zzq.ENUM_FALSE;
                }
                return zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public zzq zzi() {
                zzq zzb2 = zzq.zzb(this.zzD);
                if (zzb2 == null) {
                    return zzq.ENUM_FALSE;
                }
                return zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public zzq zzj() {
                zzq zzb2 = zzq.zzb(this.zzF);
                if (zzb2 == null) {
                    return zzq.ENUM_FALSE;
                }
                return zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public zzq zzk() {
                zzq zzb2 = zzq.zzb(this.zzw);
                if (zzb2 == null) {
                    return zzq.ENUM_FALSE;
                }
                return zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public zzq zzl() {
                zzq zzb2 = zzq.zzb(this.zzB);
                if (zzb2 == null) {
                    return zzq.ENUM_FALSE;
                }
                return zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaf.zzb
            public zzab zzm() {
                zzab zzabVar = this.zzA;
                if (zzabVar == null) {
                    return zzab.zzd();
                }
                return zzabVar;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public interface zzb extends zzhae {
            zzd zzR();

            List<zzd.zza> zzS();

            boolean zzT();

            boolean zzU();

            boolean zzV();

            boolean zzW();

            boolean zzX();

            boolean zzY();

            boolean zzZ();

            int zza();

            boolean zzaa();

            boolean zzab();

            boolean zzac();

            boolean zzad();

            boolean zzae();

            int zzb();

            long zzc();

            long zzd();

            long zze();

            long zzf();

            zzd.zza zzg(int i);

            zzq zzh();

            zzq zzi();

            zzq zzj();

            zzq zzk();

            zzq zzl();

            zzab zzm();
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zzc extends zzgym<zzaf, zzc> implements zzag {
            public zzc zzA(int i) {
                zzbu();
                ((zzaf) this.zza).zzaA(i);
                return this;
            }

            public zzc zzB(long j) {
                zzbu();
                ((zzaf) this.zza).zzaB(j);
                return this;
            }

            public zzc zzC(int i, zza.C0042zza c0042zza) {
                zzbu();
                ((zzaf) this.zza).zzaC(i, c0042zza.zzbr());
                return this;
            }

            public zzc zzD(int i, zza zzaVar) {
                zzbu();
                ((zzaf) this.zza).zzaC(i, zzaVar);
                return this;
            }

            public zzc zzE(int i) {
                zzbu();
                ((zzaf) this.zza).zzaD(i);
                return this;
            }

            public zzc zzF(long j) {
                zzbu();
                ((zzaf) this.zza).zzaE(j);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public zzgxk zzG() {
                return ((zzaf) this.zza).zzG();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public zzgxk zzH() {
                return ((zzaf) this.zza).zzH();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public String zzI() {
                return ((zzaf) this.zza).zzI();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public String zzJ() {
                return ((zzaf) this.zza).zzJ();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public List<zza> zzK() {
                return Collections.unmodifiableList(((zzaf) this.zza).zzK());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public boolean zzL() {
                return ((zzaf) this.zza).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public boolean zzM() {
                return ((zzaf) this.zza).zzM();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public boolean zzN() {
                return ((zzaf) this.zza).zzN();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public boolean zzO() {
                return ((zzaf) this.zza).zzO();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public boolean zzP() {
                return ((zzaf) this.zza).zzP();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public boolean zzQ() {
                return ((zzaf) this.zza).zzQ();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public boolean zzR() {
                return ((zzaf) this.zza).zzR();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public int zza() {
                return ((zzaf) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public int zzb() {
                return ((zzaf) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public int zzc() {
                return ((zzaf) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public int zzd() {
                return ((zzaf) this.zza).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public long zze() {
                return ((zzaf) this.zza).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public long zzf() {
                return ((zzaf) this.zza).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzag
            public zza zzg(int i) {
                return ((zzaf) this.zza).zzg(i);
            }

            public zzc zzh(Iterable<? extends zza> iterable) {
                zzbu();
                ((zzaf) this.zza).zzai(iterable);
                return this;
            }

            public zzc zzi(zza.C0042zza c0042zza) {
                zzbu();
                ((zzaf) this.zza).zzaj(c0042zza.zzbr());
                return this;
            }

            public zzc zzj(zza zzaVar) {
                zzbu();
                ((zzaf) this.zza).zzaj(zzaVar);
                return this;
            }

            public zzc zzk(int i, zza.C0042zza c0042zza) {
                zzbu();
                ((zzaf) this.zza).zzak(i, c0042zza.zzbr());
                return this;
            }

            public zzc zzl(int i, zza zzaVar) {
                zzbu();
                ((zzaf) this.zza).zzak(i, zzaVar);
                return this;
            }

            public zzc zzm() {
                zzbu();
                ((zzaf) this.zza).zzal();
                return this;
            }

            public zzc zzn() {
                zzbu();
                ((zzaf) this.zza).zzam();
                return this;
            }

            public zzc zzo() {
                zzbu();
                ((zzaf) this.zza).zzan();
                return this;
            }

            public zzc zzp() {
                zzbu();
                ((zzaf) this.zza).zzao();
                return this;
            }

            public zzc zzq() {
                zzbu();
                ((zzaf) this.zza).zzap();
                return this;
            }

            public zzc zzr() {
                zzbu();
                ((zzaf) this.zza).zzaq();
                return this;
            }

            public zzc zzs() {
                zzbu();
                ((zzaf) this.zza).zzar();
                return this;
            }

            public zzc zzt() {
                zzbu();
                ((zzaf) this.zza).zzas();
                return this;
            }

            public zzc zzu(int i) {
                zzbu();
                ((zzaf) this.zza).zzau(i);
                return this;
            }

            public zzc zzv(String str) {
                zzbu();
                ((zzaf) this.zza).zzav(str);
                return this;
            }

            public zzc zzw(zzgxk zzgxkVar) {
                zzbu();
                ((zzaf) this.zza).zzaw(zzgxkVar);
                return this;
            }

            public zzc zzx(int i) {
                zzbu();
                ((zzaf) this.zza).zzax(i);
                return this;
            }

            public zzc zzy(String str) {
                zzbu();
                ((zzaf) this.zza).zzay(str);
                return this;
            }

            public zzc zzz(zzgxk zzgxkVar) {
                zzbu();
                ((zzaf) this.zza).zzaz(zzgxkVar);
                return this;
            }

            private zzc() {
                super(zzaf.zzi);
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public enum zzd implements zzgyw {
            UNSPECIFIED(0),
            CONNECTING(1),
            CONNECTED(2),
            DISCONNECTING(3),
            DISCONNECTED(4),
            SUSPENDED(5);
            
            public static final int zzg = 0;
            public static final int zzh = 1;
            public static final int zzi = 2;
            public static final int zzj = 3;
            public static final int zzk = 4;
            public static final int zzl = 5;
            private static final zzgyx<zzd> zzm = new zzgyx<zzd>() { // from class: com.google.android.gms.internal.ads.zzbca.zzaf.zzd.1
                /* renamed from: zza */
                public zzd zzb(int i) {
                    return zzd.zzb(i);
                }
            };
            private final int zzo;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Proguard */
            /* loaded from: classes4.dex */
            public final class zza implements zzgyy {
                static final zzgyy zza = new zza();

                private zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzgyy
                public boolean zza(int i) {
                    if (zzd.zzb(i) != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzd(int i) {
                this.zzo = i;
            }

            public static zzd zzb(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    if (i != 5) {
                                        return null;
                                    }
                                    return SUSPENDED;
                                }
                                return DISCONNECTED;
                            }
                            return DISCONNECTING;
                        }
                        return CONNECTED;
                    }
                    return CONNECTING;
                }
                return UNSPECIFIED;
            }

            public static zzgyx<zzd> zzd() {
                return zzm;
            }

            public static zzgyy zze() {
                return zza.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.zzo);
            }

            @Override // com.google.android.gms.internal.ads.zzgyw
            public final int zza() {
                return this.zzo;
            }
        }

        static {
            zzaf zzafVar = new zzaf();
            zzi = zzafVar;
            zzgys.zzbZ(zzaf.class, zzafVar);
        }

        private zzaf() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaA(int i) {
            this.zzk |= 1;
            this.zzm = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaB(long j) {
            this.zzk |= 32;
            this.zzv = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaC(int i, zza zzaVar) {
            zzaVar.getClass();
            zzat();
            this.zzl.set(i, zzaVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaD(int i) {
            this.zzk |= 2;
            this.zzn = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaE(long j) {
            this.zzk |= 4;
            this.zzo = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzai(Iterable<? extends zza> iterable) {
            zzat();
            zzgwt.zzaQ(iterable, this.zzl);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaj(zza zzaVar) {
            zzaVar.getClass();
            zzat();
            this.zzl.add(zzaVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzak(int i, zza zzaVar) {
            zzaVar.getClass();
            zzat();
            this.zzl.add(i, zzaVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzal() {
            this.zzk &= -9;
            this.zzp = zzl().zzI();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzam() {
            this.zzk &= -65;
            this.zzw = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzan() {
            this.zzk &= -17;
            this.zzu = zzl().zzJ();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzao() {
            this.zzk &= -2;
            this.zzm = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzap() {
            this.zzk &= -33;
            this.zzv = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaq() {
            this.zzl = zzgys.zzbK();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzar() {
            this.zzk &= -3;
            this.zzn = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzas() {
            this.zzk &= -5;
            this.zzo = 0L;
        }

        private void zzat() {
            zzgze<zza> zzgzeVar = this.zzl;
            if (!zzgzeVar.zzc()) {
                this.zzl = zzgys.zzbL(zzgzeVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzau(int i) {
            zzat();
            this.zzl.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzav(String str) {
            str.getClass();
            this.zzk |= 8;
            this.zzp = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaw(zzgxk zzgxkVar) {
            this.zzp = zzgxkVar.zzx();
            this.zzk |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzax(int i) {
            this.zzk |= 64;
            this.zzw = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzay(String str) {
            str.getClass();
            this.zzk |= 16;
            this.zzu = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaz(zzgxk zzgxkVar) {
            this.zzu = zzgxkVar.zzx();
            this.zzk |= 16;
        }

        public static zzc zzi() {
            return (zzc) zzi.zzaZ();
        }

        public static zzc zzj(zzaf zzafVar) {
            return (zzc) zzi.zzba(zzafVar);
        }

        public static zzaf zzl() {
            return zzi;
        }

        public static zzaf zzm(InputStream inputStream) throws IOException {
            return (zzaf) zzgys.zzbk(zzi, inputStream);
        }

        public static zzaf zzn(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzaf) zzgys.zzbl(zzi, inputStream, zzgycVar);
        }

        public static zzaf zzo(zzgxk zzgxkVar) throws zzgzh {
            return (zzaf) zzgys.zzbm(zzi, zzgxkVar);
        }

        public static zzaf zzp(zzgxq zzgxqVar) throws IOException {
            return (zzaf) zzgys.zzbn(zzi, zzgxqVar);
        }

        public static zzaf zzq(InputStream inputStream) throws IOException {
            return (zzaf) zzgys.zzbo(zzi, inputStream);
        }

        public static zzaf zzr(ByteBuffer byteBuffer) throws zzgzh {
            return (zzaf) zzgys.zzbp(zzi, byteBuffer);
        }

        public static zzaf zzs(byte[] bArr) throws zzgzh {
            return (zzaf) zzgys.zzbq(zzi, bArr);
        }

        public static zzaf zzt(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzaf) zzgys.zzbr(zzi, zzgxkVar, zzgycVar);
        }

        public static zzaf zzu(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzaf) zzgys.zzbs(zzi, zzgxqVar, zzgycVar);
        }

        public static zzaf zzv(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzaf) zzgys.zzbu(zzi, inputStream, zzgycVar);
        }

        public static zzaf zzw(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzaf) zzgys.zzbv(zzi, byteBuffer, zzgycVar);
        }

        public static zzaf zzx(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzaf) zzgys.zzbx(zzi, bArr, zzgycVar);
        }

        public static zzhal<zzaf> zzy() {
            return zzi.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public zzgxk zzG() {
            return zzgxk.zzw(this.zzp);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public zzgxk zzH() {
            return zzgxk.zzw(this.zzu);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public String zzI() {
            return this.zzp;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public String zzJ() {
            return this.zzu;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public List<zza> zzK() {
            return this.zzl;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public boolean zzL() {
            if ((this.zzk & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public boolean zzM() {
            if ((this.zzk & 64) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public boolean zzN() {
            if ((this.zzk & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public boolean zzO() {
            if ((this.zzk & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public boolean zzP() {
            if ((this.zzk & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public boolean zzQ() {
            if ((this.zzk & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public boolean zzR() {
            if ((this.zzk & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public int zza() {
            return this.zzw;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public int zzb() {
            return this.zzm;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public int zzc() {
            return this.zzl.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public int zzd() {
            return this.zzn;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzaf> zzhalVar2 = zzj;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzaf.class) {
                                            try {
                                                zzhalVar = zzj;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzi);
                                                    zzj = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzi;
                        }
                        return new zzc();
                    }
                    return new zzaf();
                }
                return zzgys.zzbQ(zzi, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005\bင\u0006", new Object[]{"zzk", "zzl", zza.class, "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public long zze() {
            return this.zzv;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public long zzf() {
            return this.zzo;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzag
        public zza zzg(int i) {
            return this.zzl.get(i);
        }

        public zzb zzh(int i) {
            return this.zzl.get(i);
        }

        public List<? extends zzb> zzz() {
            return this.zzl;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzag extends zzhae {
        zzgxk zzG();

        zzgxk zzH();

        String zzI();

        String zzJ();

        List<zzaf.zza> zzK();

        boolean zzL();

        boolean zzM();

        boolean zzN();

        boolean zzO();

        boolean zzP();

        boolean zzQ();

        boolean zzR();

        int zza();

        int zzb();

        int zzc();

        int zzd();

        long zze();

        long zzf();

        zzaf.zza zzg(int i);
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzah extends zzgys<zzah, zza> implements zzak {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        public static final int zzi = 9;
        public static final int zzj = 10;
        public static final int zzk = 11;
        private static final zzah zzl;
        private static volatile zzhal<zzah> zzm;
        private int zzA;
        private int zzB;
        private zzai zzC;
        private int zzn;
        private int zzo = 1000;
        private int zzp = 1000;
        private int zzu;
        private int zzv;
        private int zzw;
        private int zzx;
        private int zzy;
        private int zzz;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzah, zza> implements zzak {
            public zza zzA(int i) {
                zzbu();
                ((zzah) this.zza).zzaA(i);
                return this;
            }

            public zza zzB(int i) {
                zzbu();
                ((zzah) this.zza).zzaB(i);
                return this;
            }

            public zza zzC(int i) {
                zzbu();
                ((zzah) this.zza).zzaC(i);
                return this;
            }

            public zza zzD(zzai.zza zzaVar) {
                zzbu();
                ((zzah) this.zza).zzaD(zzaVar.zzbr());
                return this;
            }

            public zza zzE(zzai zzaiVar) {
                zzbu();
                ((zzah) this.zza).zzaD(zzaiVar);
                return this;
            }

            public zza zzF(int i) {
                zzbu();
                ((zzah) this.zza).zzaE(i);
                return this;
            }

            public zza zzG(int i) {
                zzbu();
                ((zzah) this.zza).zzaF(i);
                return this;
            }

            public zza zzH(int i) {
                zzbu();
                ((zzah) this.zza).zzaG(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public zzai zzI() {
                return ((zzah) this.zza).zzI();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzJ() {
                return ((zzah) this.zza).zzJ();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzK() {
                return ((zzah) this.zza).zzK();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzL() {
                return ((zzah) this.zza).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzM() {
                return ((zzah) this.zza).zzM();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzN() {
                return ((zzah) this.zza).zzN();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzO() {
                return ((zzah) this.zza).zzO();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzP() {
                return ((zzah) this.zza).zzP();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzQ() {
                return ((zzah) this.zza).zzQ();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzR() {
                return ((zzah) this.zza).zzR();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzS() {
                return ((zzah) this.zza).zzS();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public boolean zzT() {
                return ((zzah) this.zza).zzT();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public int zza() {
                return ((zzah) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public int zzb() {
                return ((zzah) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public int zzc() {
                return ((zzah) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public int zzd() {
                return ((zzah) this.zza).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public int zze() {
                return ((zzah) this.zza).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public int zzf() {
                return ((zzah) this.zza).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public int zzg() {
                return ((zzah) this.zza).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public int zzh() {
                return ((zzah) this.zza).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public zzq zzi() {
                return ((zzah) this.zza).zzi();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzak
            public zzq zzj() {
                return ((zzah) this.zza).zzj();
            }

            public zza zzk() {
                zzbu();
                ((zzah) this.zza).zzak();
                return this;
            }

            public zza zzl() {
                zzbu();
                ((zzah) this.zza).zzal();
                return this;
            }

            public zza zzm() {
                zzbu();
                ((zzah) this.zza).zzam();
                return this;
            }

            public zza zzn() {
                zzbu();
                ((zzah) this.zza).zzan();
                return this;
            }

            public zza zzo() {
                zzbu();
                ((zzah) this.zza).zzao();
                return this;
            }

            public zza zzp() {
                zzbu();
                ((zzah) this.zza).zzap();
                return this;
            }

            public zza zzq() {
                zzbu();
                ((zzah) this.zza).zzaq();
                return this;
            }

            public zza zzr() {
                zzbu();
                ((zzah) this.zza).zzar();
                return this;
            }

            public zza zzs() {
                zzbu();
                ((zzah) this.zza).zzas();
                return this;
            }

            public zza zzt() {
                zzbu();
                ((zzah) this.zza).zzat();
                return this;
            }

            public zza zzu() {
                zzbu();
                ((zzah) this.zza).zzau();
                return this;
            }

            public zza zzv(zzai zzaiVar) {
                zzbu();
                ((zzah) this.zza).zzav(zzaiVar);
                return this;
            }

            public zza zzw(zzq zzqVar) {
                zzbu();
                ((zzah) this.zza).zzaw(zzqVar);
                return this;
            }

            public zza zzx(zzq zzqVar) {
                zzbu();
                ((zzah) this.zza).zzax(zzqVar);
                return this;
            }

            public zza zzy(int i) {
                zzbu();
                ((zzah) this.zza).zzay(i);
                return this;
            }

            public zza zzz(int i) {
                zzbu();
                ((zzah) this.zza).zzaz(i);
                return this;
            }

            private zza() {
                super(zzah.zzl);
            }
        }

        static {
            zzah zzahVar = new zzah();
            zzl = zzahVar;
            zzgys.zzbZ(zzah.class, zzahVar);
        }

        private zzah() {
        }

        public static zzhal<zzah> zzA() {
            return zzl.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaA(int i) {
            this.zzn |= 8;
            this.zzv = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaB(int i) {
            this.zzn |= 512;
            this.zzB = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaC(int i) {
            this.zzn |= 256;
            this.zzA = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaD(zzai zzaiVar) {
            zzaiVar.getClass();
            this.zzC = zzaiVar;
            this.zzn |= 1024;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaE(int i) {
            this.zzn |= 4;
            this.zzu = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaF(int i) {
            this.zzn |= 32;
            this.zzx = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaG(int i) {
            this.zzn |= 16;
            this.zzw = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzak() {
            this.zzn &= -3;
            this.zzp = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzal() {
            this.zzn &= -2;
            this.zzo = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzam() {
            this.zzn &= -65;
            this.zzy = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzan() {
            this.zzn &= -129;
            this.zzz = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzao() {
            this.zzn &= -9;
            this.zzv = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzap() {
            this.zzn &= -513;
            this.zzB = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaq() {
            this.zzn &= -257;
            this.zzA = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzar() {
            this.zzC = null;
            this.zzn &= -1025;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzas() {
            this.zzn &= -5;
            this.zzu = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzat() {
            this.zzn &= -33;
            this.zzx = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzau() {
            this.zzn &= -17;
            this.zzw = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzav(zzai zzaiVar) {
            zzaiVar.getClass();
            zzai zzaiVar2 = this.zzC;
            if (zzaiVar2 != null && zzaiVar2 != zzai.zzi()) {
                zzai.zza zzd2 = zzai.zzd(zzaiVar2);
                zzd2.zzbj(zzaiVar);
                zzaiVar = zzd2.zzbs();
            }
            this.zzC = zzaiVar;
            this.zzn |= 1024;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaw(zzq zzqVar) {
            this.zzp = zzqVar.zza();
            this.zzn |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzax(zzq zzqVar) {
            this.zzo = zzqVar.zza();
            this.zzn |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzay(int i) {
            this.zzn |= 64;
            this.zzy = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaz(int i) {
            this.zzn |= 128;
            this.zzz = i;
        }

        public static zza zzk() {
            return (zza) zzl.zzaZ();
        }

        public static zza zzl(zzah zzahVar) {
            return (zza) zzl.zzba(zzahVar);
        }

        public static zzah zzn() {
            return zzl;
        }

        public static zzah zzo(InputStream inputStream) throws IOException {
            return (zzah) zzgys.zzbk(zzl, inputStream);
        }

        public static zzah zzp(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzah) zzgys.zzbl(zzl, inputStream, zzgycVar);
        }

        public static zzah zzq(zzgxk zzgxkVar) throws zzgzh {
            return (zzah) zzgys.zzbm(zzl, zzgxkVar);
        }

        public static zzah zzr(zzgxq zzgxqVar) throws IOException {
            return (zzah) zzgys.zzbn(zzl, zzgxqVar);
        }

        public static zzah zzs(InputStream inputStream) throws IOException {
            return (zzah) zzgys.zzbo(zzl, inputStream);
        }

        public static zzah zzt(ByteBuffer byteBuffer) throws zzgzh {
            return (zzah) zzgys.zzbp(zzl, byteBuffer);
        }

        public static zzah zzu(byte[] bArr) throws zzgzh {
            return (zzah) zzgys.zzbq(zzl, bArr);
        }

        public static zzah zzv(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzah) zzgys.zzbr(zzl, zzgxkVar, zzgycVar);
        }

        public static zzah zzw(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzah) zzgys.zzbs(zzl, zzgxqVar, zzgycVar);
        }

        public static zzah zzx(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzah) zzgys.zzbu(zzl, inputStream, zzgycVar);
        }

        public static zzah zzy(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzah) zzgys.zzbv(zzl, byteBuffer, zzgycVar);
        }

        public static zzah zzz(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzah) zzgys.zzbx(zzl, bArr, zzgycVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public zzai zzI() {
            zzai zzaiVar = this.zzC;
            if (zzaiVar == null) {
                return zzai.zzi();
            }
            return zzaiVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzJ() {
            if ((this.zzn & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzK() {
            if ((this.zzn & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzL() {
            if ((this.zzn & 64) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzM() {
            if ((this.zzn & 128) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzN() {
            if ((this.zzn & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzO() {
            if ((this.zzn & 512) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzP() {
            if ((this.zzn & 256) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzQ() {
            if ((this.zzn & 1024) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzR() {
            if ((this.zzn & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzS() {
            if ((this.zzn & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public boolean zzT() {
            if ((this.zzn & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public int zza() {
            return this.zzy;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public int zzb() {
            return this.zzz;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public int zzc() {
            return this.zzv;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public int zzd() {
            return this.zzB;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzah> zzhalVar2 = zzm;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzah.class) {
                                            try {
                                                zzhalVar = zzm;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzl);
                                                    zzm = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzl;
                        }
                        return new zza();
                    }
                    return new zzah();
                }
                return zzgys.zzbQ(zzl, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzn", "zzo", zzq.zze(), "zzp", zzq.zze(), "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public int zze() {
            return this.zzA;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public int zzf() {
            return this.zzu;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public int zzg() {
            return this.zzx;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public int zzh() {
            return this.zzw;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public zzq zzi() {
            zzq zzb2 = zzq.zzb(this.zzp);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzak
        public zzq zzj() {
            zzq zzb2 = zzq.zzb(this.zzo);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzai extends zzgys<zzai, zza> implements zzaj {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzai zzc;
        private static volatile zzhal<zzai> zzd;
        private int zze;
        private int zzf;
        private int zzg;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzai, zza> implements zzaj {
            @Override // com.google.android.gms.internal.ads.zzbca.zzaj
            public int zza() {
                return ((zzai) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaj
            public int zzb() {
                return ((zzai) this.zza).zzb();
            }

            public zza zzc() {
                zzbu();
                ((zzai) this.zza).zzA();
                return this;
            }

            public zza zzd() {
                zzbu();
                ((zzai) this.zza).zzB();
                return this;
            }

            public zza zze(int i) {
                zzbu();
                ((zzai) this.zza).zzC(i);
                return this;
            }

            public zza zzf(int i) {
                zzbu();
                ((zzai) this.zza).zzD(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaj
            public boolean zzg() {
                return ((zzai) this.zza).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaj
            public boolean zzh() {
                return ((zzai) this.zza).zzh();
            }

            private zza() {
                super(zzai.zzc);
            }
        }

        static {
            zzai zzaiVar = new zzai();
            zzc = zzaiVar;
            zzgys.zzbZ(zzai.class, zzaiVar);
        }

        private zzai() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzA() {
            this.zze &= -2;
            this.zzf = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzB() {
            this.zze &= -3;
            this.zzg = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzC(int i) {
            this.zze |= 1;
            this.zzf = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(int i) {
            this.zze |= 2;
            this.zzg = i;
        }

        public static zza zzc() {
            return (zza) zzc.zzaZ();
        }

        public static zza zzd(zzai zzaiVar) {
            return (zza) zzc.zzba(zzaiVar);
        }

        public static zzai zzi() {
            return zzc;
        }

        public static zzai zzj(InputStream inputStream) throws IOException {
            return (zzai) zzgys.zzbk(zzc, inputStream);
        }

        public static zzai zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzai) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzai zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzai) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzai zzm(zzgxq zzgxqVar) throws IOException {
            return (zzai) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzai zzn(InputStream inputStream) throws IOException {
            return (zzai) zzgys.zzbo(zzc, inputStream);
        }

        public static zzai zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzai) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzai zzp(byte[] bArr) throws zzgzh {
            return (zzai) zzgys.zzbq(zzc, bArr);
        }

        public static zzai zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzai) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzai zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzai) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzai zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzai) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzai zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzai) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzai zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzai) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzai> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaj
        public int zza() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaj
        public int zzb() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzai> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzai.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zza();
                    }
                    return new zzai();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaj
        public boolean zzg() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaj
        public boolean zzh() {
            if ((this.zze & 2) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzaj extends zzhae {
        int zza();

        int zzb();

        boolean zzg();

        boolean zzh();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzak extends zzhae {
        zzai zzI();

        boolean zzJ();

        boolean zzK();

        boolean zzL();

        boolean zzM();

        boolean zzN();

        boolean zzO();

        boolean zzP();

        boolean zzQ();

        boolean zzR();

        boolean zzS();

        boolean zzT();

        int zza();

        int zzb();

        int zzc();

        int zzd();

        int zze();

        int zzf();

        int zzg();

        int zzh();

        zzq zzi();

        zzq zzj();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzal extends zzgys<zzal, zza> implements zzam {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzal zzc;
        private static volatile zzhal<zzal> zzd;
        private int zze;
        private int zzf;
        private int zzg;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzal, zza> implements zzam {
            @Override // com.google.android.gms.internal.ads.zzbca.zzam
            public int zza() {
                return ((zzal) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzam
            public int zzb() {
                return ((zzal) this.zza).zzb();
            }

            public zza zzc() {
                zzbu();
                ((zzal) this.zza).zzA();
                return this;
            }

            public zza zzd() {
                zzbu();
                ((zzal) this.zza).zzB();
                return this;
            }

            public zza zze(int i) {
                zzbu();
                ((zzal) this.zza).zzC(i);
                return this;
            }

            public zza zzf(int i) {
                zzbu();
                ((zzal) this.zza).zzD(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzam
            public boolean zzg() {
                return ((zzal) this.zza).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzam
            public boolean zzh() {
                return ((zzal) this.zza).zzh();
            }

            private zza() {
                super(zzal.zzc);
            }
        }

        static {
            zzal zzalVar = new zzal();
            zzc = zzalVar;
            zzgys.zzbZ(zzal.class, zzalVar);
        }

        private zzal() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzA() {
            this.zze &= -3;
            this.zzg = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzB() {
            this.zze &= -2;
            this.zzf = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzC(int i) {
            this.zze |= 2;
            this.zzg = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(int i) {
            this.zze |= 1;
            this.zzf = i;
        }

        public static zza zzc() {
            return (zza) zzc.zzaZ();
        }

        public static zza zzd(zzal zzalVar) {
            return (zza) zzc.zzba(zzalVar);
        }

        public static zzal zzi() {
            return zzc;
        }

        public static zzal zzj(InputStream inputStream) throws IOException {
            return (zzal) zzgys.zzbk(zzc, inputStream);
        }

        public static zzal zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzal) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzal zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzal) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzal zzm(zzgxq zzgxqVar) throws IOException {
            return (zzal) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzal zzn(InputStream inputStream) throws IOException {
            return (zzal) zzgys.zzbo(zzc, inputStream);
        }

        public static zzal zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzal) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzal zzp(byte[] bArr) throws zzgzh {
            return (zzal) zzgys.zzbq(zzc, bArr);
        }

        public static zzal zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzal) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzal zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzal) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzal zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzal) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzal zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzal) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzal zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzal) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzal> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzam
        public int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzam
        public int zzb() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzal> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzal.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zza();
                    }
                    return new zzal();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzam
        public boolean zzg() {
            if ((this.zze & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzam
        public boolean zzh() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzam extends zzhae {
        int zza();

        int zzb();

        boolean zzg();

        boolean zzh();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzan extends zzgys<zzan, zza> implements zzao {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzan zzd;
        private static volatile zzhal<zzan> zze;
        private int zzf;
        private String zzg = "";
        private int zzh;
        private zzap zzi;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzan, zza> implements zzao {
            @Override // com.google.android.gms.internal.ads.zzbca.zzao
            public zzq zza() {
                return ((zzan) this.zza).zza();
            }

            public zza zzb() {
                zzbu();
                ((zzan) this.zza).zzH();
                return this;
            }

            public zza zzc() {
                zzbu();
                ((zzan) this.zza).zzI();
                return this;
            }

            public zza zzd() {
                zzbu();
                ((zzan) this.zza).zzJ();
                return this;
            }

            public zza zze(zzap zzapVar) {
                zzbu();
                ((zzan) this.zza).zzK(zzapVar);
                return this;
            }

            public zza zzf(String str) {
                zzbu();
                ((zzan) this.zza).zzL(str);
                return this;
            }

            public zza zzg(zzgxk zzgxkVar) {
                zzbu();
                ((zzan) this.zza).zzM(zzgxkVar);
                return this;
            }

            public zza zzh(zzap.zza zzaVar) {
                zzbu();
                ((zzan) this.zza).zzN(zzaVar.zzbr());
                return this;
            }

            public zza zzi(zzap zzapVar) {
                zzbu();
                ((zzan) this.zza).zzN(zzapVar);
                return this;
            }

            public zza zzj(zzq zzqVar) {
                zzbu();
                ((zzan) this.zza).zzO(zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzao
            public zzap zzk() {
                return ((zzan) this.zza).zzk();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzao
            public zzgxk zzl() {
                return ((zzan) this.zza).zzl();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzao
            public String zzm() {
                return ((zzan) this.zza).zzm();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzao
            public boolean zzn() {
                return ((zzan) this.zza).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzao
            public boolean zzo() {
                return ((zzan) this.zza).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzao
            public boolean zzp() {
                return ((zzan) this.zza).zzp();
            }

            private zza() {
                super(zzan.zzd);
            }
        }

        static {
            zzan zzanVar = new zzan();
            zzd = zzanVar;
            zzgys.zzbZ(zzan.class, zzanVar);
        }

        private zzan() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzH() {
            this.zzf &= -2;
            this.zzg = zzf().zzm();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzI() {
            this.zzi = null;
            this.zzf &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzJ() {
            this.zzf &= -3;
            this.zzh = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzK(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzi;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzi = zzapVar;
            this.zzf |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzL(String str) {
            str.getClass();
            this.zzf |= 1;
            this.zzg = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzM(zzgxk zzgxkVar) {
            this.zzg = zzgxkVar.zzx();
            this.zzf |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzN(zzap zzapVar) {
            zzapVar.getClass();
            this.zzi = zzapVar;
            this.zzf |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzO(zzq zzqVar) {
            this.zzh = zzqVar.zza();
            this.zzf |= 2;
        }

        public static zza zzb() {
            return (zza) zzd.zzaZ();
        }

        public static zza zzc(zzan zzanVar) {
            return (zza) zzd.zzba(zzanVar);
        }

        public static zzan zzf() {
            return zzd;
        }

        public static zzan zzg(InputStream inputStream) throws IOException {
            return (zzan) zzgys.zzbk(zzd, inputStream);
        }

        public static zzan zzh(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzan) zzgys.zzbl(zzd, inputStream, zzgycVar);
        }

        public static zzan zzi(zzgxk zzgxkVar) throws zzgzh {
            return (zzan) zzgys.zzbm(zzd, zzgxkVar);
        }

        public static zzan zzj(zzgxq zzgxqVar) throws IOException {
            return (zzan) zzgys.zzbn(zzd, zzgxqVar);
        }

        public static zzan zzq(InputStream inputStream) throws IOException {
            return (zzan) zzgys.zzbo(zzd, inputStream);
        }

        public static zzan zzr(ByteBuffer byteBuffer) throws zzgzh {
            return (zzan) zzgys.zzbp(zzd, byteBuffer);
        }

        public static zzan zzs(byte[] bArr) throws zzgzh {
            return (zzan) zzgys.zzbq(zzd, bArr);
        }

        public static zzan zzt(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzan) zzgys.zzbr(zzd, zzgxkVar, zzgycVar);
        }

        public static zzan zzu(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzan) zzgys.zzbs(zzd, zzgxqVar, zzgycVar);
        }

        public static zzan zzv(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzan) zzgys.zzbu(zzd, inputStream, zzgycVar);
        }

        public static zzan zzw(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzan) zzgys.zzbv(zzd, byteBuffer, zzgycVar);
        }

        public static zzan zzx(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzan) zzgys.zzbx(zzd, bArr, zzgycVar);
        }

        public static zzhal<zzan> zzy() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzao
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzh);
            if (zzb2 == null) {
                return zzq.ENUM_FALSE;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzan> zzhalVar2 = zze;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzan.class) {
                                            try {
                                                zzhalVar = zze;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzd);
                                                    zze = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzd;
                        }
                        return new zza();
                    }
                    return new zzan();
                }
                return zzgys.zzbQ(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", "zzh", zzq.zze(), "zzi"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzao
        public zzap zzk() {
            zzap zzapVar = this.zzi;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzao
        public zzgxk zzl() {
            return zzgxk.zzw(this.zzg);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzao
        public String zzm() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzao
        public boolean zzn() {
            if ((this.zzf & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzao
        public boolean zzo() {
            if ((this.zzf & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzao
        public boolean zzp() {
            if ((this.zzf & 2) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzao extends zzhae {
        zzq zza();

        zzap zzk();

        zzgxk zzl();

        String zzm();

        boolean zzn();

        boolean zzo();

        boolean zzp();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzap extends zzgys<zzap, zza> implements zzaq {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzap zzc;
        private static volatile zzhal<zzap> zzd;
        private int zze;
        private int zzf;
        private int zzg;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzap, zza> implements zzaq {
            @Override // com.google.android.gms.internal.ads.zzbca.zzaq
            public int zza() {
                return ((zzap) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaq
            public int zzb() {
                return ((zzap) this.zza).zzb();
            }

            public zza zzc() {
                zzbu();
                ((zzap) this.zza).zzA();
                return this;
            }

            public zza zzd() {
                zzbu();
                ((zzap) this.zza).zzB();
                return this;
            }

            public zza zze(int i) {
                zzbu();
                ((zzap) this.zza).zzC(i);
                return this;
            }

            public zza zzf(int i) {
                zzbu();
                ((zzap) this.zza).zzD(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaq
            public boolean zzg() {
                return ((zzap) this.zza).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaq
            public boolean zzh() {
                return ((zzap) this.zza).zzh();
            }

            private zza() {
                super(zzap.zzc);
            }
        }

        static {
            zzap zzapVar = new zzap();
            zzc = zzapVar;
            zzgys.zzbZ(zzap.class, zzapVar);
        }

        private zzap() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzA() {
            this.zze &= -3;
            this.zzg = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzB() {
            this.zze &= -2;
            this.zzf = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzC(int i) {
            this.zze |= 2;
            this.zzg = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(int i) {
            this.zze |= 1;
            this.zzf = i;
        }

        public static zza zzc() {
            return (zza) zzc.zzaZ();
        }

        public static zza zzd(zzap zzapVar) {
            return (zza) zzc.zzba(zzapVar);
        }

        public static zzap zzi() {
            return zzc;
        }

        public static zzap zzj(InputStream inputStream) throws IOException {
            return (zzap) zzgys.zzbk(zzc, inputStream);
        }

        public static zzap zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzap) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzap zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzap) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzap zzm(zzgxq zzgxqVar) throws IOException {
            return (zzap) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzap zzn(InputStream inputStream) throws IOException {
            return (zzap) zzgys.zzbo(zzc, inputStream);
        }

        public static zzap zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzap) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzap zzp(byte[] bArr) throws zzgzh {
            return (zzap) zzgys.zzbq(zzc, bArr);
        }

        public static zzap zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzap) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzap zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzap) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzap zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzap) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzap zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzap) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzap zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzap) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzap> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaq
        public int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaq
        public int zzb() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzap> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzap.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zza();
                    }
                    return new zzap();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaq
        public boolean zzg() {
            if ((this.zze & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaq
        public boolean zzh() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzaq extends zzhae {
        int zza();

        int zzb();

        boolean zzg();

        boolean zzh();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzar extends zzgys<zzar, zza> implements zzas {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzar zzd;
        private static volatile zzhal<zzar> zze;
        private int zzf;
        private int zzg;
        private int zzh;
        private int zzi;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzar, zza> implements zzas {
            @Override // com.google.android.gms.internal.ads.zzbca.zzas
            public int zza() {
                return ((zzar) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzas
            public int zzb() {
                return ((zzar) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzas
            public int zzc() {
                return ((zzar) this.zza).zzc();
            }

            public zza zzd() {
                zzbu();
                ((zzar) this.zza).zzE();
                return this;
            }

            public zza zze() {
                zzbu();
                ((zzar) this.zza).zzF();
                return this;
            }

            public zza zzf() {
                zzbu();
                ((zzar) this.zza).zzG();
                return this;
            }

            public zza zzg(int i) {
                zzbu();
                ((zzar) this.zza).zzH(i);
                return this;
            }

            public zza zzh(int i) {
                zzbu();
                ((zzar) this.zza).zzI(i);
                return this;
            }

            public zza zzi(int i) {
                zzbu();
                ((zzar) this.zza).zzJ(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzas
            public boolean zzj() {
                return ((zzar) this.zza).zzj();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzas
            public boolean zzk() {
                return ((zzar) this.zza).zzk();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzas
            public boolean zzl() {
                return ((zzar) this.zza).zzl();
            }

            private zza() {
                super(zzar.zzd);
            }
        }

        static {
            zzar zzarVar = new zzar();
            zzd = zzarVar;
            zzgys.zzbZ(zzar.class, zzarVar);
        }

        private zzar() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzE() {
            this.zzf &= -2;
            this.zzg = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzF() {
            this.zzf &= -5;
            this.zzi = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzG() {
            this.zzf &= -3;
            this.zzh = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzH(int i) {
            this.zzf |= 1;
            this.zzg = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzI(int i) {
            this.zzf |= 4;
            this.zzi = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzJ(int i) {
            this.zzf |= 2;
            this.zzh = i;
        }

        public static zza zzd() {
            return (zza) zzd.zzaZ();
        }

        public static zza zzf(zzar zzarVar) {
            return (zza) zzd.zzba(zzarVar);
        }

        public static zzar zzh() {
            return zzd;
        }

        public static zzar zzi(InputStream inputStream) throws IOException {
            return (zzar) zzgys.zzbk(zzd, inputStream);
        }

        public static zzar zzm(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzar) zzgys.zzbl(zzd, inputStream, zzgycVar);
        }

        public static zzar zzn(zzgxk zzgxkVar) throws zzgzh {
            return (zzar) zzgys.zzbm(zzd, zzgxkVar);
        }

        public static zzar zzo(zzgxq zzgxqVar) throws IOException {
            return (zzar) zzgys.zzbn(zzd, zzgxqVar);
        }

        public static zzar zzp(InputStream inputStream) throws IOException {
            return (zzar) zzgys.zzbo(zzd, inputStream);
        }

        public static zzar zzq(ByteBuffer byteBuffer) throws zzgzh {
            return (zzar) zzgys.zzbp(zzd, byteBuffer);
        }

        public static zzar zzr(byte[] bArr) throws zzgzh {
            return (zzar) zzgys.zzbq(zzd, bArr);
        }

        public static zzar zzs(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzar) zzgys.zzbr(zzd, zzgxkVar, zzgycVar);
        }

        public static zzar zzt(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzar) zzgys.zzbs(zzd, zzgxqVar, zzgycVar);
        }

        public static zzar zzu(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzar) zzgys.zzbu(zzd, inputStream, zzgycVar);
        }

        public static zzar zzv(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzar) zzgys.zzbv(zzd, byteBuffer, zzgycVar);
        }

        public static zzar zzw(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzar) zzgys.zzbx(zzd, bArr, zzgycVar);
        }

        public static zzhal<zzar> zzx() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzas
        public int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzas
        public int zzb() {
            return this.zzi;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzas
        public int zzc() {
            return this.zzh;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzar> zzhalVar2 = zze;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzar.class) {
                                            try {
                                                zzhalVar = zze;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzd);
                                                    zze = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzd;
                        }
                        return new zza();
                    }
                    return new zzar();
                }
                return zzgys.zzbQ(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzas
        public boolean zzj() {
            if ((this.zzf & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzas
        public boolean zzk() {
            if ((this.zzf & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzas
        public boolean zzl() {
            if ((this.zzf & 2) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzas extends zzhae {
        int zza();

        int zzb();

        int zzc();

        boolean zzj();

        boolean zzk();

        boolean zzl();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzat extends zzgys<zzat, zza> implements zzbi {
        public static final int zza = 5;
        public static final int zzb = 6;
        public static final int zzc = 7;
        public static final int zzd = 8;
        public static final int zze = 9;
        public static final int zzf = 10;
        public static final int zzg = 11;
        public static final int zzh = 12;
        public static final int zzi = 13;
        public static final int zzj = 14;
        public static final int zzk = 15;
        public static final int zzl = 16;
        public static final int zzm = 17;
        public static final int zzn = 18;
        public static final int zzo = 19;
        public static final int zzp = 20;
        private static final zzat zzu;
        private static volatile zzhal<zzat> zzv;
        private zzbj zzA;
        private zzau zzB;
        private zzbc zzC;
        private zzay zzD;
        private int zzE;
        private int zzF;
        private zzap zzG;
        private int zzH;
        private int zzI;
        private int zzJ;
        private int zzK;
        private int zzL;
        private long zzM;
        private int zzw;
        private zzba zzx;
        private zzbe zzy;
        private zzbg zzz;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzat, zza> implements zzbi {
            public zza zzA(zzay zzayVar) {
                zzbu();
                ((zzat) this.zza).zzcw(zzayVar);
                return this;
            }

            public zza zzB(zzba zzbaVar) {
                zzbu();
                ((zzat) this.zza).zzcx(zzbaVar);
                return this;
            }

            public zza zzC(zzbc zzbcVar) {
                zzbu();
                ((zzat) this.zza).zzcy(zzbcVar);
                return this;
            }

            public zza zzD(zzbe zzbeVar) {
                zzbu();
                ((zzat) this.zza).zzcz(zzbeVar);
                return this;
            }

            public zza zzE(zzbg zzbgVar) {
                zzbu();
                ((zzat) this.zza).zzcA(zzbgVar);
                return this;
            }

            public zza zzF(zzap zzapVar) {
                zzbu();
                ((zzat) this.zza).zzcB(zzapVar);
                return this;
            }

            public zza zzG(zzbj zzbjVar) {
                zzbu();
                ((zzat) this.zza).zzcC(zzbjVar);
                return this;
            }

            public zza zzH(zzau.zza zzaVar) {
                zzbu();
                ((zzat) this.zza).zzcD(zzaVar.zzbr());
                return this;
            }

            public zza zzI(zzau zzauVar) {
                zzbu();
                ((zzat) this.zza).zzcD(zzauVar);
                return this;
            }

            public zza zzJ(zzay.zza zzaVar) {
                zzbu();
                ((zzat) this.zza).zzcE(zzaVar.zzbr());
                return this;
            }

            public zza zzK(zzay zzayVar) {
                zzbu();
                ((zzat) this.zza).zzcE(zzayVar);
                return this;
            }

            public zza zzL(zzba.zza zzaVar) {
                zzbu();
                ((zzat) this.zza).zzcF(zzaVar.zzbr());
                return this;
            }

            public zza zzM(zzba zzbaVar) {
                zzbu();
                ((zzat) this.zza).zzcF(zzbaVar);
                return this;
            }

            public zza zzN(zzbc.zza zzaVar) {
                zzbu();
                ((zzat) this.zza).zzcG(zzaVar.zzbr());
                return this;
            }

            public zza zzO(zzbc zzbcVar) {
                zzbu();
                ((zzat) this.zza).zzcG(zzbcVar);
                return this;
            }

            public zza zzP(zzbe.zza zzaVar) {
                zzbu();
                ((zzat) this.zza).zzcH(zzaVar.zzbr());
                return this;
            }

            public zza zzQ(zzbe zzbeVar) {
                zzbu();
                ((zzat) this.zza).zzcH(zzbeVar);
                return this;
            }

            public zza zzR(zzbg.zza zzaVar) {
                zzbu();
                ((zzat) this.zza).zzcI(zzaVar.zzbr());
                return this;
            }

            public zza zzS(zzbg zzbgVar) {
                zzbu();
                ((zzat) this.zza).zzcI(zzbgVar);
                return this;
            }

            public zza zzT(int i) {
                zzbu();
                ((zzat) this.zza).zzcJ(i);
                return this;
            }

            public zza zzU(int i) {
                zzbu();
                ((zzat) this.zza).zzcK(i);
                return this;
            }

            public zza zzV(int i) {
                zzbu();
                ((zzat) this.zza).zzcL(i);
                return this;
            }

            public zza zzW(int i) {
                zzbu();
                ((zzat) this.zza).zzcM(i);
                return this;
            }

            public zza zzX(int i) {
                zzbu();
                ((zzat) this.zza).zzcN(i);
                return this;
            }

            public zza zzY(int i) {
                zzbu();
                ((zzat) this.zza).zzcO(i);
                return this;
            }

            public zza zzZ(int i) {
                zzbu();
                ((zzat) this.zza).zzcP(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public int zza() {
                return ((zzat) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzaA() {
                return ((zzat) this.zza).zzaA();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzaB() {
                return ((zzat) this.zza).zzaB();
            }

            public zza zzaa(zzap.zza zzaVar) {
                zzbu();
                ((zzat) this.zza).zzcQ(zzaVar.zzbr());
                return this;
            }

            public zza zzab(zzap zzapVar) {
                zzbu();
                ((zzat) this.zza).zzcQ(zzapVar);
                return this;
            }

            public zza zzac(long j) {
                zzbu();
                ((zzat) this.zza).zzcR(j);
                return this;
            }

            public zza zzad(zzbj.zza zzaVar) {
                zzbu();
                ((zzat) this.zza).zzcS(zzaVar.zzbr());
                return this;
            }

            public zza zzae(zzbj zzbjVar) {
                zzbu();
                ((zzat) this.zza).zzcS(zzbjVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public zzau zzaf() {
                return ((zzat) this.zza).zzaf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public zzay zzag() {
                return ((zzat) this.zza).zzag();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public zzba zzah() {
                return ((zzat) this.zza).zzah();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public zzbc zzai() {
                return ((zzat) this.zza).zzai();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public zzbe zzaj() {
                return ((zzat) this.zza).zzaj();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public zzbg zzak() {
                return ((zzat) this.zza).zzak();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public zzbj zzal() {
                return ((zzat) this.zza).zzal();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzam() {
                return ((zzat) this.zza).zzam();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzan() {
                return ((zzat) this.zza).zzan();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzao() {
                return ((zzat) this.zza).zzao();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzap() {
                return ((zzat) this.zza).zzap();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzaq() {
                return ((zzat) this.zza).zzaq();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzar() {
                return ((zzat) this.zza).zzar();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzas() {
                return ((zzat) this.zza).zzas();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzat() {
                return ((zzat) this.zza).zzat();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzau() {
                return ((zzat) this.zza).zzau();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzav() {
                return ((zzat) this.zza).zzav();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzaw() {
                return ((zzat) this.zza).zzaw();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzax() {
                return ((zzat) this.zza).zzax();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzay() {
                return ((zzat) this.zza).zzay();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public boolean zzaz() {
                return ((zzat) this.zza).zzaz();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public int zzb() {
                return ((zzat) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public int zzc() {
                return ((zzat) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public int zzd() {
                return ((zzat) this.zza).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public int zze() {
                return ((zzat) this.zza).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public int zzf() {
                return ((zzat) this.zza).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public int zzg() {
                return ((zzat) this.zza).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public long zzh() {
                return ((zzat) this.zza).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbi
            public zzap zzi() {
                return ((zzat) this.zza).zzi();
            }

            public zza zzj() {
                zzbu();
                ((zzat) this.zza).zzcf();
                return this;
            }

            public zza zzk() {
                zzbu();
                ((zzat) this.zza).zzcg();
                return this;
            }

            public zza zzl() {
                zzbu();
                ((zzat) this.zza).zzch();
                return this;
            }

            public zza zzm() {
                zzbu();
                ((zzat) this.zza).zzci();
                return this;
            }

            public zza zzn() {
                zzbu();
                ((zzat) this.zza).zzcj();
                return this;
            }

            public zza zzo() {
                zzbu();
                ((zzat) this.zza).zzck();
                return this;
            }

            public zza zzp() {
                zzbu();
                ((zzat) this.zza).zzcl();
                return this;
            }

            public zza zzq() {
                zzbu();
                ((zzat) this.zza).zzcm();
                return this;
            }

            public zza zzr() {
                zzbu();
                ((zzat) this.zza).zzcn();
                return this;
            }

            public zza zzs() {
                zzbu();
                ((zzat) this.zza).zzco();
                return this;
            }

            public zza zzt() {
                zzbu();
                ((zzat) this.zza).zzcp();
                return this;
            }

            public zza zzu() {
                zzbu();
                ((zzat) this.zza).zzcq();
                return this;
            }

            public zza zzv() {
                zzbu();
                ((zzat) this.zza).zzcr();
                return this;
            }

            public zza zzw() {
                zzbu();
                ((zzat) this.zza).zzcs();
                return this;
            }

            public zza zzx() {
                zzbu();
                ((zzat) this.zza).zzct();
                return this;
            }

            public zza zzy() {
                zzbu();
                ((zzat) this.zza).zzcu();
                return this;
            }

            public zza zzz(zzau zzauVar) {
                zzbu();
                ((zzat) this.zza).zzcv(zzauVar);
                return this;
            }

            private zza() {
                super(zzat.zzu);
            }
        }

        static {
            zzat zzatVar = new zzat();
            zzu = zzatVar;
            zzgys.zzbZ(zzat.class, zzatVar);
        }

        private zzat() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcA(zzbg zzbgVar) {
            zzbgVar.getClass();
            zzbg zzbgVar2 = this.zzz;
            if (zzbgVar2 != null && zzbgVar2 != zzbg.zzh()) {
                zzbg.zza zzf2 = zzbg.zzf(zzbgVar2);
                zzf2.zzbj(zzbgVar);
                zzbgVar = zzf2.zzbs();
            }
            this.zzz = zzbgVar;
            this.zzw |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcB(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzG;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzG = zzapVar;
            this.zzw |= 512;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcC(zzbj zzbjVar) {
            zzbjVar.getClass();
            zzbj zzbjVar2 = this.zzA;
            if (zzbjVar2 != null && zzbjVar2 != zzbj.zzg()) {
                zzbj.zza zzd2 = zzbj.zzd(zzbjVar2);
                zzd2.zzbj(zzbjVar);
                zzbjVar = zzd2.zzbs();
            }
            this.zzA = zzbjVar;
            this.zzw |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcD(zzau zzauVar) {
            zzauVar.getClass();
            this.zzB = zzauVar;
            this.zzw |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcE(zzay zzayVar) {
            zzayVar.getClass();
            this.zzD = zzayVar;
            this.zzw |= 64;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcF(zzba zzbaVar) {
            zzbaVar.getClass();
            this.zzx = zzbaVar;
            this.zzw |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcG(zzbc zzbcVar) {
            zzbcVar.getClass();
            this.zzC = zzbcVar;
            this.zzw |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcH(zzbe zzbeVar) {
            zzbeVar.getClass();
            this.zzy = zzbeVar;
            this.zzw |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcI(zzbg zzbgVar) {
            zzbgVar.getClass();
            this.zzz = zzbgVar;
            this.zzw |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcJ(int i) {
            this.zzw |= 8192;
            this.zzK = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcK(int i) {
            this.zzw |= 16384;
            this.zzL = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcL(int i) {
            this.zzw |= 1024;
            this.zzH = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcM(int i) {
            this.zzw |= 128;
            this.zzE = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcN(int i) {
            this.zzw |= 256;
            this.zzF = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcO(int i) {
            this.zzw |= 2048;
            this.zzI = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcP(int i) {
            this.zzw |= 4096;
            this.zzJ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcQ(zzap zzapVar) {
            zzapVar.getClass();
            this.zzG = zzapVar;
            this.zzw |= 512;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcR(long j) {
            this.zzw |= 32768;
            this.zzM = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcS(zzbj zzbjVar) {
            zzbjVar.getClass();
            this.zzA = zzbjVar;
            this.zzw |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcf() {
            this.zzB = null;
            this.zzw &= -17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcg() {
            this.zzD = null;
            this.zzw &= -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzch() {
            this.zzx = null;
            this.zzw &= -2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzci() {
            this.zzC = null;
            this.zzw &= -33;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcj() {
            this.zzy = null;
            this.zzw &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzck() {
            this.zzz = null;
            this.zzw &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcl() {
            this.zzw &= -8193;
            this.zzK = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcm() {
            this.zzw &= -16385;
            this.zzL = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcn() {
            this.zzw &= -1025;
            this.zzH = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzco() {
            this.zzw &= -129;
            this.zzE = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcp() {
            this.zzw &= -257;
            this.zzF = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcq() {
            this.zzw &= -2049;
            this.zzI = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcr() {
            this.zzw &= -4097;
            this.zzJ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcs() {
            this.zzG = null;
            this.zzw &= -513;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzct() {
            this.zzw &= -32769;
            this.zzM = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcu() {
            this.zzA = null;
            this.zzw &= -9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcv(zzau zzauVar) {
            zzauVar.getClass();
            zzau zzauVar2 = this.zzB;
            if (zzauVar2 != null && zzauVar2 != zzau.zzg()) {
                zzau.zza zzd2 = zzau.zzd(zzauVar2);
                zzd2.zzbj(zzauVar);
                zzauVar = zzd2.zzbs();
            }
            this.zzB = zzauVar;
            this.zzw |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcw(zzay zzayVar) {
            zzayVar.getClass();
            zzay zzayVar2 = this.zzD;
            if (zzayVar2 != null && zzayVar2 != zzay.zzi()) {
                zzay.zza zzg2 = zzay.zzg(zzayVar2);
                zzg2.zzbj(zzayVar);
                zzayVar = zzg2.zzbs();
            }
            this.zzD = zzayVar;
            this.zzw |= 64;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcx(zzba zzbaVar) {
            zzbaVar.getClass();
            zzba zzbaVar2 = this.zzx;
            if (zzbaVar2 != null && zzbaVar2 != zzba.zzi()) {
                zzba.zza zzg2 = zzba.zzg(zzbaVar2);
                zzg2.zzbj(zzbaVar);
                zzbaVar = zzg2.zzbs();
            }
            this.zzx = zzbaVar;
            this.zzw |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcy(zzbc zzbcVar) {
            zzbcVar.getClass();
            zzbc zzbcVar2 = this.zzC;
            if (zzbcVar2 != null && zzbcVar2 != zzbc.zzh()) {
                zzbc.zza zzf2 = zzbc.zzf(zzbcVar2);
                zzf2.zzbj(zzbcVar);
                zzbcVar = zzf2.zzbs();
            }
            this.zzC = zzbcVar;
            this.zzw |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcz(zzbe zzbeVar) {
            zzbeVar.getClass();
            zzbe zzbeVar2 = this.zzy;
            if (zzbeVar2 != null && zzbeVar2 != zzbe.zzj()) {
                zzbe.zza zzh2 = zzbe.zzh(zzbeVar2);
                zzh2.zzbj(zzbeVar);
                zzbeVar = zzh2.zzbs();
            }
            this.zzy = zzbeVar;
            this.zzw |= 2;
        }

        public static zza zzj() {
            return (zza) zzu.zzaZ();
        }

        public static zza zzk(zzat zzatVar) {
            return (zza) zzu.zzba(zzatVar);
        }

        public static zzat zzm() {
            return zzu;
        }

        public static zzat zzn(InputStream inputStream) throws IOException {
            return (zzat) zzgys.zzbk(zzu, inputStream);
        }

        public static zzat zzo(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzat) zzgys.zzbl(zzu, inputStream, zzgycVar);
        }

        public static zzat zzp(zzgxk zzgxkVar) throws zzgzh {
            return (zzat) zzgys.zzbm(zzu, zzgxkVar);
        }

        public static zzat zzq(zzgxq zzgxqVar) throws IOException {
            return (zzat) zzgys.zzbn(zzu, zzgxqVar);
        }

        public static zzat zzr(InputStream inputStream) throws IOException {
            return (zzat) zzgys.zzbo(zzu, inputStream);
        }

        public static zzat zzs(ByteBuffer byteBuffer) throws zzgzh {
            return (zzat) zzgys.zzbp(zzu, byteBuffer);
        }

        public static zzat zzt(byte[] bArr) throws zzgzh {
            return (zzat) zzgys.zzbq(zzu, bArr);
        }

        public static zzat zzu(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzat) zzgys.zzbr(zzu, zzgxkVar, zzgycVar);
        }

        public static zzat zzv(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzat) zzgys.zzbs(zzu, zzgxqVar, zzgycVar);
        }

        public static zzat zzw(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzat) zzgys.zzbu(zzu, inputStream, zzgycVar);
        }

        public static zzat zzx(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzat) zzgys.zzbv(zzu, byteBuffer, zzgycVar);
        }

        public static zzat zzy(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzat) zzgys.zzbx(zzu, bArr, zzgycVar);
        }

        public static zzhal<zzat> zzz() {
            return zzu.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public int zza() {
            return this.zzK;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzaA() {
            if ((this.zzw & 32768) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzaB() {
            if ((this.zzw & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public zzau zzaf() {
            zzau zzauVar = this.zzB;
            if (zzauVar == null) {
                return zzau.zzg();
            }
            return zzauVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public zzay zzag() {
            zzay zzayVar = this.zzD;
            if (zzayVar == null) {
                return zzay.zzi();
            }
            return zzayVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public zzba zzah() {
            zzba zzbaVar = this.zzx;
            if (zzbaVar == null) {
                return zzba.zzi();
            }
            return zzbaVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public zzbc zzai() {
            zzbc zzbcVar = this.zzC;
            if (zzbcVar == null) {
                return zzbc.zzh();
            }
            return zzbcVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public zzbe zzaj() {
            zzbe zzbeVar = this.zzy;
            if (zzbeVar == null) {
                return zzbe.zzj();
            }
            return zzbeVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public zzbg zzak() {
            zzbg zzbgVar = this.zzz;
            if (zzbgVar == null) {
                return zzbg.zzh();
            }
            return zzbgVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public zzbj zzal() {
            zzbj zzbjVar = this.zzA;
            if (zzbjVar == null) {
                return zzbj.zzg();
            }
            return zzbjVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzam() {
            if ((this.zzw & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzan() {
            if ((this.zzw & 64) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzao() {
            if ((this.zzw & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzap() {
            if ((this.zzw & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzaq() {
            if ((this.zzw & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzar() {
            if ((this.zzw & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzas() {
            if ((this.zzw & 8192) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzat() {
            if ((this.zzw & 16384) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzau() {
            if ((this.zzw & 1024) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzav() {
            if ((this.zzw & 128) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzaw() {
            if ((this.zzw & 256) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzax() {
            if ((this.zzw & 2048) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzay() {
            if ((this.zzw & 4096) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public boolean zzaz() {
            if ((this.zzw & 512) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public int zzb() {
            return this.zzL;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public int zzc() {
            return this.zzH;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public int zzd() {
            return this.zzE;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzat> zzhalVar2 = zzv;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzat.class) {
                                            try {
                                                zzhalVar = zzv;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzu);
                                                    zzv = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzu;
                        }
                        return new zza();
                    }
                    return new zzat();
                }
                return zzgys.zzbQ(zzu, "\u0004\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005ဉ\u0000\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public int zze() {
            return this.zzF;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public int zzf() {
            return this.zzI;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public int zzg() {
            return this.zzJ;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public long zzh() {
            return this.zzM;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbi
        public zzap zzi() {
            zzap zzapVar = this.zzG;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzau extends zzgys<zzau, zza> implements zzav {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzau zzd;
        private static volatile zzhal<zzau> zze;
        private int zzf;
        private int zzg = 1000;
        private zzaw zzh;
        private zzap zzi;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzau, zza> implements zzav {
            @Override // com.google.android.gms.internal.ads.zzbca.zzav
            public zzq zza() {
                return ((zzau) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzav
            public zzap zzb() {
                return ((zzau) this.zza).zzb();
            }

            public zza zzc() {
                zzbu();
                ((zzau) this.zza).zzG();
                return this;
            }

            public zza zzd() {
                zzbu();
                ((zzau) this.zza).zzH();
                return this;
            }

            public zza zze() {
                zzbu();
                ((zzau) this.zza).zzI();
                return this;
            }

            public zza zzf(zzaw zzawVar) {
                zzbu();
                ((zzau) this.zza).zzJ(zzawVar);
                return this;
            }

            public zza zzg(zzap zzapVar) {
                zzbu();
                ((zzau) this.zza).zzK(zzapVar);
                return this;
            }

            public zza zzh(zzaw.zza zzaVar) {
                zzbu();
                ((zzau) this.zza).zzL(zzaVar.zzbr());
                return this;
            }

            public zza zzi(zzaw zzawVar) {
                zzbu();
                ((zzau) this.zza).zzL(zzawVar);
                return this;
            }

            public zza zzj(zzap.zza zzaVar) {
                zzbu();
                ((zzau) this.zza).zzM(zzaVar.zzbr());
                return this;
            }

            public zza zzk(zzap zzapVar) {
                zzbu();
                ((zzau) this.zza).zzM(zzapVar);
                return this;
            }

            public zza zzl(zzq zzqVar) {
                zzbu();
                ((zzau) this.zza).zzN(zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzav
            public zzaw zzm() {
                return ((zzau) this.zza).zzm();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzav
            public boolean zzn() {
                return ((zzau) this.zza).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzav
            public boolean zzo() {
                return ((zzau) this.zza).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzav
            public boolean zzp() {
                return ((zzau) this.zza).zzp();
            }

            private zza() {
                super(zzau.zzd);
            }
        }

        static {
            zzau zzauVar = new zzau();
            zzd = zzauVar;
            zzgys.zzbZ(zzau.class, zzauVar);
        }

        private zzau() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzG() {
            this.zzh = null;
            this.zzf &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzH() {
            this.zzi = null;
            this.zzf &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzI() {
            this.zzf &= -2;
            this.zzg = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzJ(zzaw zzawVar) {
            zzawVar.getClass();
            zzaw zzawVar2 = this.zzh;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            this.zzh = zzawVar;
            this.zzf |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzK(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzi;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzi = zzapVar;
            this.zzf |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzL(zzaw zzawVar) {
            zzawVar.getClass();
            this.zzh = zzawVar;
            this.zzf |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzM(zzap zzapVar) {
            zzapVar.getClass();
            this.zzi = zzapVar;
            this.zzf |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzN(zzq zzqVar) {
            this.zzg = zzqVar.zza();
            this.zzf |= 1;
        }

        public static zza zzc() {
            return (zza) zzd.zzaZ();
        }

        public static zza zzd(zzau zzauVar) {
            return (zza) zzd.zzba(zzauVar);
        }

        public static zzau zzg() {
            return zzd;
        }

        public static zzau zzh(InputStream inputStream) throws IOException {
            return (zzau) zzgys.zzbk(zzd, inputStream);
        }

        public static zzau zzi(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzau) zzgys.zzbl(zzd, inputStream, zzgycVar);
        }

        public static zzau zzj(zzgxk zzgxkVar) throws zzgzh {
            return (zzau) zzgys.zzbm(zzd, zzgxkVar);
        }

        public static zzau zzk(zzgxq zzgxqVar) throws IOException {
            return (zzau) zzgys.zzbn(zzd, zzgxqVar);
        }

        public static zzau zzl(InputStream inputStream) throws IOException {
            return (zzau) zzgys.zzbo(zzd, inputStream);
        }

        public static zzau zzq(ByteBuffer byteBuffer) throws zzgzh {
            return (zzau) zzgys.zzbp(zzd, byteBuffer);
        }

        public static zzau zzr(byte[] bArr) throws zzgzh {
            return (zzau) zzgys.zzbq(zzd, bArr);
        }

        public static zzau zzs(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzau) zzgys.zzbr(zzd, zzgxkVar, zzgycVar);
        }

        public static zzau zzt(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzau) zzgys.zzbs(zzd, zzgxqVar, zzgycVar);
        }

        public static zzau zzu(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzau) zzgys.zzbu(zzd, inputStream, zzgycVar);
        }

        public static zzau zzv(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzau) zzgys.zzbv(zzd, byteBuffer, zzgycVar);
        }

        public static zzau zzw(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzau) zzgys.zzbx(zzd, bArr, zzgycVar);
        }

        public static zzhal<zzau> zzx() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzav
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzg);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzav
        public zzap zzb() {
            zzap zzapVar = this.zzi;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzau> zzhalVar2 = zze;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzau.class) {
                                            try {
                                                zzhalVar = zze;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzd);
                                                    zze = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzd;
                        }
                        return new zza();
                    }
                    return new zzau();
                }
                return zzgys.zzbQ(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzq.zze(), "zzh", "zzi"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzav
        public zzaw zzm() {
            zzaw zzawVar = this.zzh;
            if (zzawVar == null) {
                return zzaw.zzg();
            }
            return zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzav
        public boolean zzn() {
            if ((this.zzf & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzav
        public boolean zzo() {
            if ((this.zzf & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzav
        public boolean zzp() {
            if ((this.zzf & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzav extends zzhae {
        zzq zza();

        zzap zzb();

        zzaw zzm();

        boolean zzn();

        boolean zzo();

        boolean zzp();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzaw extends zzgys<zzaw, zza> implements zzax {
        public static final int zza = 1;
        private static final zzaw zzb;
        private static volatile zzhal<zzaw> zzc;
        private int zzd;
        private int zze;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzaw, zza> implements zzax {
            public zza zza() {
                zzbu();
                ((zzaw) this.zza).zzw();
                return this;
            }

            public zza zzb(zzb zzbVar) {
                zzbu();
                ((zzaw) this.zza).zzx(zzbVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzax
            public zzb zzc() {
                return ((zzaw) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzax
            public boolean zzd() {
                return ((zzaw) this.zza).zzd();
            }

            private zza() {
                super(zzaw.zzb);
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public enum zzb implements zzgyw {
            VIDEO_ERROR_CODE_UNSPECIFIED(0),
            OPENGL_RENDERING_FAILED(1),
            CACHE_LOAD_FAILED(2),
            ANDROID_TARGET_API_TOO_LOW(3);
            
            public static final int zze = 0;
            public static final int zzf = 1;
            public static final int zzg = 2;
            public static final int zzh = 3;
            private static final zzgyx<zzb> zzi = new zzgyx<zzb>() { // from class: com.google.android.gms.internal.ads.zzbca.zzaw.zzb.1
                /* renamed from: zza */
                public zzb zzb(int i) {
                    return zzb.zzb(i);
                }
            };
            private final int zzk;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Proguard */
            /* loaded from: classes4.dex */
            public final class zza implements zzgyy {
                static final zzgyy zza = new zza();

                private zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzgyy
                public boolean zza(int i) {
                    if (zzb.zzb(i) != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzb(int i) {
                this.zzk = i;
            }

            public static zzb zzb(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return null;
                            }
                            return ANDROID_TARGET_API_TOO_LOW;
                        }
                        return CACHE_LOAD_FAILED;
                    }
                    return OPENGL_RENDERING_FAILED;
                }
                return VIDEO_ERROR_CODE_UNSPECIFIED;
            }

            public static zzgyx<zzb> zzd() {
                return zzi;
            }

            public static zzgyy zze() {
                return zza.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.zzk);
            }

            @Override // com.google.android.gms.internal.ads.zzgyw
            public final int zza() {
                return this.zzk;
            }
        }

        static {
            zzaw zzawVar = new zzaw();
            zzb = zzawVar;
            zzgys.zzbZ(zzaw.class, zzawVar);
        }

        private zzaw() {
        }

        public static zza zza() {
            return (zza) zzb.zzaZ();
        }

        public static zza zzb(zzaw zzawVar) {
            return (zza) zzb.zzba(zzawVar);
        }

        public static zzaw zzg() {
            return zzb;
        }

        public static zzaw zzh(InputStream inputStream) throws IOException {
            return (zzaw) zzgys.zzbk(zzb, inputStream);
        }

        public static zzaw zzi(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzaw) zzgys.zzbl(zzb, inputStream, zzgycVar);
        }

        public static zzaw zzj(zzgxk zzgxkVar) throws zzgzh {
            return (zzaw) zzgys.zzbm(zzb, zzgxkVar);
        }

        public static zzaw zzk(zzgxq zzgxqVar) throws IOException {
            return (zzaw) zzgys.zzbn(zzb, zzgxqVar);
        }

        public static zzaw zzl(InputStream inputStream) throws IOException {
            return (zzaw) zzgys.zzbo(zzb, inputStream);
        }

        public static zzaw zzm(ByteBuffer byteBuffer) throws zzgzh {
            return (zzaw) zzgys.zzbp(zzb, byteBuffer);
        }

        public static zzaw zzn(byte[] bArr) throws zzgzh {
            return (zzaw) zzgys.zzbq(zzb, bArr);
        }

        public static zzaw zzo(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzaw) zzgys.zzbr(zzb, zzgxkVar, zzgycVar);
        }

        public static zzaw zzp(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzaw) zzgys.zzbs(zzb, zzgxqVar, zzgycVar);
        }

        public static zzaw zzq(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzaw) zzgys.zzbu(zzb, inputStream, zzgycVar);
        }

        public static zzaw zzr(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzaw) zzgys.zzbv(zzb, byteBuffer, zzgycVar);
        }

        public static zzaw zzs(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzaw) zzgys.zzbx(zzb, bArr, zzgycVar);
        }

        public static zzhal<zzaw> zzt() {
            return zzb.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzw() {
            this.zzd &= -2;
            this.zze = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzx(zzb zzbVar) {
            this.zze = zzbVar.zza();
            this.zzd |= 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzax
        public zzb zzc() {
            zzb zzb2 = zzb.zzb(this.zze);
            if (zzb2 == null) {
                return zzb.VIDEO_ERROR_CODE_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzax
        public boolean zzd() {
            if ((this.zzd & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzaw> zzhalVar2 = zzc;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzaw.class) {
                                            try {
                                                zzhalVar = zzc;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzb);
                                                    zzc = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzb;
                        }
                        return new zza();
                    }
                    return new zzaw();
                }
                return zzgys.zzbQ(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzb.zze()});
            }
            return (byte) 1;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzax extends zzhae {
        zzaw.zzb zzc();

        boolean zzd();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzay extends zzgys<zzay, zza> implements zzaz {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzay zze;
        private static volatile zzhal<zzay> zzf;
        private int zzg;
        private zzar zzh;
        private int zzi = 1000;
        private zzaw zzj;
        private zzap zzk;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzay, zza> implements zzaz {
            @Override // com.google.android.gms.internal.ads.zzbca.zzaz
            public zzq zza() {
                return ((zzay) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaz
            public zzap zzb() {
                return ((zzay) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaz
            public zzar zzc() {
                return ((zzay) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaz
            public zzaw zzd() {
                return ((zzay) this.zza).zzd();
            }

            public zza zze() {
                zzbu();
                ((zzay) this.zza).zzL();
                return this;
            }

            public zza zzf() {
                zzbu();
                ((zzay) this.zza).zzM();
                return this;
            }

            public zza zzg() {
                zzbu();
                ((zzay) this.zza).zzN();
                return this;
            }

            public zza zzh() {
                zzbu();
                ((zzay) this.zza).zzO();
                return this;
            }

            public zza zzi(zzaw zzawVar) {
                zzbu();
                ((zzay) this.zza).zzP(zzawVar);
                return this;
            }

            public zza zzj(zzap zzapVar) {
                zzbu();
                ((zzay) this.zza).zzQ(zzapVar);
                return this;
            }

            public zza zzk(zzar zzarVar) {
                zzbu();
                ((zzay) this.zza).zzR(zzarVar);
                return this;
            }

            public zza zzl(zzaw.zza zzaVar) {
                zzbu();
                ((zzay) this.zza).zzS(zzaVar.zzbr());
                return this;
            }

            public zza zzm(zzaw zzawVar) {
                zzbu();
                ((zzay) this.zza).zzS(zzawVar);
                return this;
            }

            public zza zzn(zzap.zza zzaVar) {
                zzbu();
                ((zzay) this.zza).zzT(zzaVar.zzbr());
                return this;
            }

            public zza zzo(zzap zzapVar) {
                zzbu();
                ((zzay) this.zza).zzT(zzapVar);
                return this;
            }

            public zza zzp(zzq zzqVar) {
                zzbu();
                ((zzay) this.zza).zzU(zzqVar);
                return this;
            }

            public zza zzq(zzar.zza zzaVar) {
                zzbu();
                ((zzay) this.zza).zzV(zzaVar.zzbr());
                return this;
            }

            public zza zzr(zzar zzarVar) {
                zzbu();
                ((zzay) this.zza).zzV(zzarVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaz
            public boolean zzs() {
                return ((zzay) this.zza).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaz
            public boolean zzt() {
                return ((zzay) this.zza).zzt();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaz
            public boolean zzu() {
                return ((zzay) this.zza).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaz
            public boolean zzv() {
                return ((zzay) this.zza).zzv();
            }

            private zza() {
                super(zzay.zze);
            }
        }

        static {
            zzay zzayVar = new zzay();
            zze = zzayVar;
            zzgys.zzbZ(zzay.class, zzayVar);
        }

        private zzay() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzL() {
            this.zzj = null;
            this.zzg &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzM() {
            this.zzk = null;
            this.zzg &= -9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzN() {
            this.zzg &= -3;
            this.zzi = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzO() {
            this.zzh = null;
            this.zzg &= -2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzP(zzaw zzawVar) {
            zzawVar.getClass();
            zzaw zzawVar2 = this.zzj;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            this.zzj = zzawVar;
            this.zzg |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzQ(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzk;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzk = zzapVar;
            this.zzg |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzR(zzar zzarVar) {
            zzarVar.getClass();
            zzar zzarVar2 = this.zzh;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            this.zzh = zzarVar;
            this.zzg |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzS(zzaw zzawVar) {
            zzawVar.getClass();
            this.zzj = zzawVar;
            this.zzg |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzT(zzap zzapVar) {
            zzapVar.getClass();
            this.zzk = zzapVar;
            this.zzg |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzU(zzq zzqVar) {
            this.zzi = zzqVar.zza();
            this.zzg |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzV(zzar zzarVar) {
            zzarVar.getClass();
            this.zzh = zzarVar;
            this.zzg |= 1;
        }

        public static zza zzf() {
            return (zza) zze.zzaZ();
        }

        public static zza zzg(zzay zzayVar) {
            return (zza) zze.zzba(zzayVar);
        }

        public static zzay zzi() {
            return zze;
        }

        public static zzay zzj(InputStream inputStream) throws IOException {
            return (zzay) zzgys.zzbk(zze, inputStream);
        }

        public static zzay zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzay) zzgys.zzbl(zze, inputStream, zzgycVar);
        }

        public static zzay zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzay) zzgys.zzbm(zze, zzgxkVar);
        }

        public static zzay zzm(zzgxq zzgxqVar) throws IOException {
            return (zzay) zzgys.zzbn(zze, zzgxqVar);
        }

        public static zzay zzn(InputStream inputStream) throws IOException {
            return (zzay) zzgys.zzbo(zze, inputStream);
        }

        public static zzay zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzay) zzgys.zzbp(zze, byteBuffer);
        }

        public static zzay zzp(byte[] bArr) throws zzgzh {
            return (zzay) zzgys.zzbq(zze, bArr);
        }

        public static zzay zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzay) zzgys.zzbr(zze, zzgxkVar, zzgycVar);
        }

        public static zzay zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzay) zzgys.zzbs(zze, zzgxqVar, zzgycVar);
        }

        public static zzay zzw(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzay) zzgys.zzbu(zze, inputStream, zzgycVar);
        }

        public static zzay zzx(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzay) zzgys.zzbv(zze, byteBuffer, zzgycVar);
        }

        public static zzay zzy(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzay) zzgys.zzbx(zze, bArr, zzgycVar);
        }

        public static zzhal<zzay> zzz() {
            return zze.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaz
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzi);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaz
        public zzap zzb() {
            zzap zzapVar = this.zzk;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaz
        public zzar zzc() {
            zzar zzarVar = this.zzh;
            if (zzarVar == null) {
                return zzar.zzh();
            }
            return zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaz
        public zzaw zzd() {
            zzaw zzawVar = this.zzj;
            if (zzawVar == null) {
                return zzaw.zzg();
            }
            return zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzay> zzhalVar2 = zzf;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzay.class) {
                                            try {
                                                zzhalVar = zzf;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zze);
                                                    zzf = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zze;
                        }
                        return new zza();
                    }
                    return new zzay();
                }
                return zzgys.zzbQ(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzg", "zzh", "zzi", zzq.zze(), "zzj", "zzk"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaz
        public boolean zzs() {
            if ((this.zzg & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaz
        public boolean zzt() {
            if ((this.zzg & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaz
        public boolean zzu() {
            if ((this.zzg & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaz
        public boolean zzv() {
            if ((this.zzg & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzaz extends zzhae {
        zzq zza();

        zzap zzb();

        zzar zzc();

        zzaw zzd();

        boolean zzs();

        boolean zzt();

        boolean zzu();

        boolean zzv();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzb extends zzgys<zzb, zzc> implements zzc {
        public static final int zza = 1;
        private static final zzb zzb;
        private static volatile zzhal<zzb> zzc;
        private zzgze<zza> zzd = zzgys.zzbK();

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgys<zza, C0043zza> implements InterfaceC0044zzb {
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            private static final zza zzd;
            private static volatile zzhal<zza> zze;
            private int zzf;
            private int zzg;
            private zze zzh;
            private zzg zzi;

            /* compiled from: Proguard */
            /* renamed from: com.google.android.gms.internal.ads.zzbca$zzb$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public final class C0043zza extends zzgym<zza, C0043zza> implements InterfaceC0044zzb {
                public C0043zza zza() {
                    zzbu();
                    ((zza) this.zza).zzG();
                    return this;
                }

                public C0043zza zzb() {
                    zzbu();
                    ((zza) this.zza).zzH();
                    return this;
                }

                public C0043zza zzc() {
                    zzbu();
                    ((zza) this.zza).zzI();
                    return this;
                }

                public C0043zza zzd(zze zzeVar) {
                    zzbu();
                    ((zza) this.zza).zzJ(zzeVar);
                    return this;
                }

                public C0043zza zze(zzg zzgVar) {
                    zzbu();
                    ((zza) this.zza).zzK(zzgVar);
                    return this;
                }

                public C0043zza zzf(zzd zzdVar) {
                    zzbu();
                    ((zza) this.zza).zzL(zzdVar);
                    return this;
                }

                public C0043zza zzg(zze.zza zzaVar) {
                    zzbu();
                    ((zza) this.zza).zzM(zzaVar.zzbr());
                    return this;
                }

                public C0043zza zzh(zze zzeVar) {
                    zzbu();
                    ((zza) this.zza).zzM(zzeVar);
                    return this;
                }

                public C0043zza zzi(zzg.zza zzaVar) {
                    zzbu();
                    ((zza) this.zza).zzN(zzaVar.zzbr());
                    return this;
                }

                public C0043zza zzj(zzg zzgVar) {
                    zzbu();
                    ((zza) this.zza).zzN(zzgVar);
                    return this;
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
                public zzd zzk() {
                    return ((zza) this.zza).zzk();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
                public zze zzl() {
                    return ((zza) this.zza).zzl();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
                public zzg zzm() {
                    return ((zza) this.zza).zzm();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
                public boolean zzn() {
                    return ((zza) this.zza).zzn();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
                public boolean zzo() {
                    return ((zza) this.zza).zzo();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
                public boolean zzp() {
                    return ((zza) this.zza).zzp();
                }

                private C0043zza() {
                    super(zza.zzd);
                }
            }

            static {
                zza zzaVar = new zza();
                zzd = zzaVar;
                zzgys.zzbZ(zza.class, zzaVar);
            }

            private zza() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzG() {
                this.zzf &= -2;
                this.zzg = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzH() {
                this.zzh = null;
                this.zzf &= -3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzI() {
                this.zzi = null;
                this.zzf &= -5;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzJ(zze zzeVar) {
                zzeVar.getClass();
                zze zzeVar2 = this.zzh;
                if (zzeVar2 != null && zzeVar2 != zze.zzi()) {
                    zze.zza zzc2 = zze.zzc(zzeVar2);
                    zzc2.zzbj(zzeVar);
                    zzeVar = zzc2.zzbs();
                }
                this.zzh = zzeVar;
                this.zzf |= 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzK(zzg zzgVar) {
                zzgVar.getClass();
                zzg zzgVar2 = this.zzi;
                if (zzgVar2 != null && zzgVar2 != zzg.zzf()) {
                    zzg.zza zzc2 = zzg.zzc(zzgVar2);
                    zzc2.zzbj(zzgVar);
                    zzgVar = zzc2.zzbs();
                }
                this.zzi = zzgVar;
                this.zzf |= 4;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzL(zzd zzdVar) {
                this.zzg = zzdVar.zza();
                this.zzf |= 1;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzM(zze zzeVar) {
                zzeVar.getClass();
                this.zzh = zzeVar;
                this.zzf |= 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzN(zzg zzgVar) {
                zzgVar.getClass();
                this.zzi = zzgVar;
                this.zzf |= 4;
            }

            public static C0043zza zza() {
                return (C0043zza) zzd.zzaZ();
            }

            public static C0043zza zzb(zza zzaVar) {
                return (C0043zza) zzd.zzba(zzaVar);
            }

            public static zza zzd() {
                return zzd;
            }

            public static zza zzf(InputStream inputStream) throws IOException {
                return (zza) zzgys.zzbk(zzd, inputStream);
            }

            public static zza zzg(InputStream inputStream, zzgyc zzgycVar) throws IOException {
                return (zza) zzgys.zzbl(zzd, inputStream, zzgycVar);
            }

            public static zza zzh(zzgxk zzgxkVar) throws zzgzh {
                return (zza) zzgys.zzbm(zzd, zzgxkVar);
            }

            public static zza zzi(zzgxq zzgxqVar) throws IOException {
                return (zza) zzgys.zzbn(zzd, zzgxqVar);
            }

            public static zza zzj(InputStream inputStream) throws IOException {
                return (zza) zzgys.zzbo(zzd, inputStream);
            }

            public static zza zzq(ByteBuffer byteBuffer) throws zzgzh {
                return (zza) zzgys.zzbp(zzd, byteBuffer);
            }

            public static zza zzr(byte[] bArr) throws zzgzh {
                return (zza) zzgys.zzbq(zzd, bArr);
            }

            public static zza zzs(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
                return (zza) zzgys.zzbr(zzd, zzgxkVar, zzgycVar);
            }

            public static zza zzt(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
                return (zza) zzgys.zzbs(zzd, zzgxqVar, zzgycVar);
            }

            public static zza zzu(InputStream inputStream, zzgyc zzgycVar) throws IOException {
                return (zza) zzgys.zzbu(zzd, inputStream, zzgycVar);
            }

            public static zza zzv(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
                return (zza) zzgys.zzbv(zzd, byteBuffer, zzgycVar);
            }

            public static zza zzw(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
                return (zza) zzgys.zzbx(zzd, bArr, zzgycVar);
            }

            public static zzhal<zza> zzx() {
                return zzd.zzbN();
            }

            @Override // com.google.android.gms.internal.ads.zzgys
            public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
                zzhal zzhalVar;
                int ordinal = zzgyrVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal != 5) {
                                    if (ordinal == 6) {
                                        zzhal<zza> zzhalVar2 = zze;
                                        if (zzhalVar2 == null) {
                                            synchronized (zza.class) {
                                                try {
                                                    zzhalVar = zze;
                                                    if (zzhalVar == null) {
                                                        zzhalVar = new zzgyn(zzd);
                                                        zze = zzhalVar;
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            return zzhalVar;
                                        }
                                        return zzhalVar2;
                                    }
                                    throw null;
                                }
                                return zzd;
                            }
                            return new C0043zza();
                        }
                        return new zza();
                    }
                    return zzgys.zzbQ(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzd.zze(), "zzh", "zzi"});
                }
                return (byte) 1;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
            public zzd zzk() {
                zzd zzb2 = zzd.zzb(this.zzg);
                if (zzb2 == null) {
                    return zzd.UNSPECIFIED;
                }
                return zzb2;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
            public zze zzl() {
                zze zzeVar = this.zzh;
                if (zzeVar == null) {
                    return zze.zzi();
                }
                return zzeVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
            public zzg zzm() {
                zzg zzgVar = this.zzi;
                if (zzgVar == null) {
                    return zzg.zzf();
                }
                return zzgVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
            public boolean zzn() {
                if ((this.zzf & 1) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
            public boolean zzo() {
                if ((this.zzf & 2) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.InterfaceC0044zzb
            public boolean zzp() {
                if ((this.zzf & 4) != 0) {
                    return true;
                }
                return false;
            }
        }

        /* compiled from: Proguard */
        /* renamed from: com.google.android.gms.internal.ads.zzbca$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public interface InterfaceC0044zzb extends zzhae {
            zzd zzk();

            zze zzl();

            zzg zzm();

            boolean zzn();

            boolean zzo();

            boolean zzp();
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zzc extends zzgym<zzb, zzc> implements zzc {
            @Override // com.google.android.gms.internal.ads.zzbca.zzc
            public int zza() {
                return ((zzb) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzc
            public zza zzb(int i) {
                return ((zzb) this.zza).zzb(i);
            }

            public zzc zzc(Iterable<? extends zza> iterable) {
                zzbu();
                ((zzb) this.zza).zzD(iterable);
                return this;
            }

            public zzc zzd(zza.C0043zza c0043zza) {
                zzbu();
                ((zzb) this.zza).zzE(c0043zza.zzbr());
                return this;
            }

            public zzc zze(zza zzaVar) {
                zzbu();
                ((zzb) this.zza).zzE(zzaVar);
                return this;
            }

            public zzc zzf(int i, zza.C0043zza c0043zza) {
                zzbu();
                ((zzb) this.zza).zzF(i, c0043zza.zzbr());
                return this;
            }

            public zzc zzg(int i, zza zzaVar) {
                zzbu();
                ((zzb) this.zza).zzF(i, zzaVar);
                return this;
            }

            public zzc zzh() {
                zzbu();
                ((zzb) this.zza).zzG();
                return this;
            }

            public zzc zzi(int i) {
                zzbu();
                ((zzb) this.zza).zzI(i);
                return this;
            }

            public zzc zzj(int i, zza.C0043zza c0043zza) {
                zzbu();
                ((zzb) this.zza).zzJ(i, c0043zza.zzbr());
                return this;
            }

            public zzc zzk(int i, zza zzaVar) {
                zzbu();
                ((zzb) this.zza).zzJ(i, zzaVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzc
            public List<zza> zzl() {
                return Collections.unmodifiableList(((zzb) this.zza).zzl());
            }

            private zzc() {
                super(zzb.zzb);
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public enum zzd implements zzgyw {
            UNSPECIFIED(0),
            IN_MEMORY(1);
            
            public static final int zzc = 0;
            public static final int zzd = 1;
            private static final zzgyx<zzd> zze = new zzgyx<zzd>() { // from class: com.google.android.gms.internal.ads.zzbca.zzb.zzd.1
                /* renamed from: zza */
                public zzd zzb(int i) {
                    return zzd.zzb(i);
                }
            };
            private final int zzg;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Proguard */
            /* loaded from: classes4.dex */
            public final class zza implements zzgyy {
                static final zzgyy zza = new zza();

                private zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzgyy
                public boolean zza(int i) {
                    if (zzd.zzb(i) != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzd(int i) {
                this.zzg = i;
            }

            public static zzd zzb(int i) {
                if (i != 0) {
                    if (i != 1) {
                        return null;
                    }
                    return IN_MEMORY;
                }
                return UNSPECIFIED;
            }

            public static zzgyx<zzd> zzd() {
                return zze;
            }

            public static zzgyy zze() {
                return zza.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.zzg);
            }

            @Override // com.google.android.gms.internal.ads.zzgyw
            public final int zza() {
                return this.zzg;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zze extends zzgys<zze, zza> implements zzf {
            public static final int zza = 1;
            public static final int zzb = 2;
            private static final zze zzc;
            private static volatile zzhal<zze> zzd;
            private int zze;
            private boolean zzf;
            private int zzg;

            /* compiled from: Proguard */
            /* loaded from: classes4.dex */
            public final class zza extends zzgym<zze, zza> implements zzf {
                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzf
                public int zza() {
                    return ((zze) this.zza).zza();
                }

                public zza zzb() {
                    zzbu();
                    ((zze) this.zza).zzA();
                    return this;
                }

                public zza zzc() {
                    zzbu();
                    ((zze) this.zza).zzB();
                    return this;
                }

                public zza zzd(boolean z) {
                    zzbu();
                    ((zze) this.zza).zzC(z);
                    return this;
                }

                public zza zze(int i) {
                    zzbu();
                    ((zze) this.zza).zzD(i);
                    return this;
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzf
                public boolean zzf() {
                    return ((zze) this.zza).zzf();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzf
                public boolean zzg() {
                    return ((zze) this.zza).zzg();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzf
                public boolean zzh() {
                    return ((zze) this.zza).zzh();
                }

                private zza() {
                    super(zze.zzc);
                }
            }

            static {
                zze zzeVar = new zze();
                zzc = zzeVar;
                zzgys.zzbZ(zze.class, zzeVar);
            }

            private zze() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzA() {
                this.zze &= -2;
                this.zzf = false;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzB() {
                this.zze &= -3;
                this.zzg = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzC(boolean z) {
                this.zze |= 1;
                this.zzf = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzD(int i) {
                this.zze |= 2;
                this.zzg = i;
            }

            public static zza zzb() {
                return (zza) zzc.zzaZ();
            }

            public static zza zzc(zze zzeVar) {
                return (zza) zzc.zzba(zzeVar);
            }

            public static zze zzi() {
                return zzc;
            }

            public static zze zzj(InputStream inputStream) throws IOException {
                return (zze) zzgys.zzbk(zzc, inputStream);
            }

            public static zze zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
                return (zze) zzgys.zzbl(zzc, inputStream, zzgycVar);
            }

            public static zze zzl(zzgxk zzgxkVar) throws zzgzh {
                return (zze) zzgys.zzbm(zzc, zzgxkVar);
            }

            public static zze zzm(zzgxq zzgxqVar) throws IOException {
                return (zze) zzgys.zzbn(zzc, zzgxqVar);
            }

            public static zze zzn(InputStream inputStream) throws IOException {
                return (zze) zzgys.zzbo(zzc, inputStream);
            }

            public static zze zzo(ByteBuffer byteBuffer) throws zzgzh {
                return (zze) zzgys.zzbp(zzc, byteBuffer);
            }

            public static zze zzp(byte[] bArr) throws zzgzh {
                return (zze) zzgys.zzbq(zzc, bArr);
            }

            public static zze zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
                return (zze) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
            }

            public static zze zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
                return (zze) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
            }

            public static zze zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
                return (zze) zzgys.zzbu(zzc, inputStream, zzgycVar);
            }

            public static zze zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
                return (zze) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
            }

            public static zze zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
                return (zze) zzgys.zzbx(zzc, bArr, zzgycVar);
            }

            public static zzhal<zze> zzv() {
                return zzc.zzbN();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzf
            public int zza() {
                return this.zzg;
            }

            @Override // com.google.android.gms.internal.ads.zzgys
            public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
                zzhal zzhalVar;
                int ordinal = zzgyrVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal != 5) {
                                    if (ordinal == 6) {
                                        zzhal<zze> zzhalVar2 = zzd;
                                        if (zzhalVar2 == null) {
                                            synchronized (zze.class) {
                                                try {
                                                    zzhalVar = zzd;
                                                    if (zzhalVar == null) {
                                                        zzhalVar = new zzgyn(zzc);
                                                        zzd = zzhalVar;
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            return zzhalVar;
                                        }
                                        return zzhalVar2;
                                    }
                                    throw null;
                                }
                                return zzc;
                            }
                            return new zza();
                        }
                        return new zze();
                    }
                    return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{"zze", "zzf", "zzg"});
                }
                return (byte) 1;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzf
            public boolean zzf() {
                return this.zzf;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzf
            public boolean zzg() {
                if ((this.zze & 1) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzf
            public boolean zzh() {
                if ((this.zze & 2) != 0) {
                    return true;
                }
                return false;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public interface zzf extends zzhae {
            int zza();

            boolean zzf();

            boolean zzg();

            boolean zzh();
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zzg extends zzgys<zzg, zza> implements zzh {
            public static final int zza = 1;
            public static final int zzb = 2;
            public static final int zzc = 3;
            private static final zzg zzd;
            private static volatile zzhal<zzg> zze;
            private int zzf;
            private boolean zzg;
            private boolean zzh;
            private int zzi;

            /* compiled from: Proguard */
            /* loaded from: classes4.dex */
            public final class zza extends zzgym<zzg, zza> implements zzh {
                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
                public int zza() {
                    return ((zzg) this.zza).zza();
                }

                public zza zzb() {
                    zzbu();
                    ((zzg) this.zza).zzE();
                    return this;
                }

                public zza zzc() {
                    zzbu();
                    ((zzg) this.zza).zzF();
                    return this;
                }

                public zza zzd() {
                    zzbu();
                    ((zzg) this.zza).zzG();
                    return this;
                }

                public zza zze(boolean z) {
                    zzbu();
                    ((zzg) this.zza).zzH(z);
                    return this;
                }

                public zza zzf(boolean z) {
                    zzbu();
                    ((zzg) this.zza).zzI(z);
                    return this;
                }

                public zza zzg(int i) {
                    zzbu();
                    ((zzg) this.zza).zzJ(i);
                    return this;
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
                public boolean zzh() {
                    return ((zzg) this.zza).zzh();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
                public boolean zzi() {
                    return ((zzg) this.zza).zzi();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
                public boolean zzj() {
                    return ((zzg) this.zza).zzj();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
                public boolean zzk() {
                    return ((zzg) this.zza).zzk();
                }

                @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
                public boolean zzl() {
                    return ((zzg) this.zza).zzl();
                }

                private zza() {
                    super(zzg.zzd);
                }
            }

            static {
                zzg zzgVar = new zzg();
                zzd = zzgVar;
                zzgys.zzbZ(zzg.class, zzgVar);
            }

            private zzg() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzE() {
                this.zzf &= -2;
                this.zzg = false;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzF() {
                this.zzf &= -3;
                this.zzh = false;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzG() {
                this.zzf &= -5;
                this.zzi = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzH(boolean z) {
                this.zzf |= 1;
                this.zzg = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzI(boolean z) {
                this.zzf |= 2;
                this.zzh = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void zzJ(int i) {
                this.zzf |= 4;
                this.zzi = i;
            }

            public static zza zzb() {
                return (zza) zzd.zzaZ();
            }

            public static zza zzc(zzg zzgVar) {
                return (zza) zzd.zzba(zzgVar);
            }

            public static zzg zzf() {
                return zzd;
            }

            public static zzg zzg(InputStream inputStream) throws IOException {
                return (zzg) zzgys.zzbk(zzd, inputStream);
            }

            public static zzg zzm(InputStream inputStream, zzgyc zzgycVar) throws IOException {
                return (zzg) zzgys.zzbl(zzd, inputStream, zzgycVar);
            }

            public static zzg zzn(zzgxk zzgxkVar) throws zzgzh {
                return (zzg) zzgys.zzbm(zzd, zzgxkVar);
            }

            public static zzg zzo(zzgxq zzgxqVar) throws IOException {
                return (zzg) zzgys.zzbn(zzd, zzgxqVar);
            }

            public static zzg zzp(InputStream inputStream) throws IOException {
                return (zzg) zzgys.zzbo(zzd, inputStream);
            }

            public static zzg zzq(ByteBuffer byteBuffer) throws zzgzh {
                return (zzg) zzgys.zzbp(zzd, byteBuffer);
            }

            public static zzg zzr(byte[] bArr) throws zzgzh {
                return (zzg) zzgys.zzbq(zzd, bArr);
            }

            public static zzg zzs(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
                return (zzg) zzgys.zzbr(zzd, zzgxkVar, zzgycVar);
            }

            public static zzg zzt(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
                return (zzg) zzgys.zzbs(zzd, zzgxqVar, zzgycVar);
            }

            public static zzg zzu(InputStream inputStream, zzgyc zzgycVar) throws IOException {
                return (zzg) zzgys.zzbu(zzd, inputStream, zzgycVar);
            }

            public static zzg zzv(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
                return (zzg) zzgys.zzbv(zzd, byteBuffer, zzgycVar);
            }

            public static zzg zzw(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
                return (zzg) zzgys.zzbx(zzd, bArr, zzgycVar);
            }

            public static zzhal<zzg> zzx() {
                return zzd.zzbN();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
            public int zza() {
                return this.zzi;
            }

            @Override // com.google.android.gms.internal.ads.zzgys
            public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
                zzhal zzhalVar;
                int ordinal = zzgyrVar.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal != 5) {
                                    if (ordinal == 6) {
                                        zzhal<zzg> zzhalVar2 = zze;
                                        if (zzhalVar2 == null) {
                                            synchronized (zzg.class) {
                                                try {
                                                    zzhalVar = zze;
                                                    if (zzhalVar == null) {
                                                        zzhalVar = new zzgyn(zzd);
                                                        zze = zzhalVar;
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            return zzhalVar;
                                        }
                                        return zzhalVar2;
                                    }
                                    throw null;
                                }
                                return zzd;
                            }
                            return new zza();
                        }
                        return new zzg();
                    }
                    return zzgys.zzbQ(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
                }
                return (byte) 1;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
            public boolean zzh() {
                return this.zzg;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
            public boolean zzi() {
                return this.zzh;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
            public boolean zzj() {
                if ((this.zzf & 1) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
            public boolean zzk() {
                if ((this.zzf & 2) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzb.zzh
            public boolean zzl() {
                if ((this.zzf & 4) != 0) {
                    return true;
                }
                return false;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public interface zzh extends zzhae {
            int zza();

            boolean zzh();

            boolean zzi();

            boolean zzj();

            boolean zzk();

            boolean zzl();
        }

        static {
            zzb zzbVar = new zzb();
            zzb = zzbVar;
            zzgys.zzbZ(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(Iterable<? extends zza> iterable) {
            zzH();
            zzgwt.zzaQ(iterable, this.zzd);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzE(zza zzaVar) {
            zzaVar.getClass();
            zzH();
            this.zzd.add(zzaVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzF(int i, zza zzaVar) {
            zzaVar.getClass();
            zzH();
            this.zzd.add(i, zzaVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzG() {
            this.zzd = zzgys.zzbK();
        }

        private void zzH() {
            zzgze<zza> zzgzeVar = this.zzd;
            if (!zzgzeVar.zzc()) {
                this.zzd = zzgys.zzbL(zzgzeVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzI(int i) {
            zzH();
            this.zzd.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzJ(int i, zza zzaVar) {
            zzaVar.getClass();
            zzH();
            this.zzd.set(i, zzaVar);
        }

        public static zzc zzd() {
            return (zzc) zzb.zzaZ();
        }

        public static zzc zzf(zzb zzbVar) {
            return (zzc) zzb.zzba(zzbVar);
        }

        public static zzb zzh() {
            return zzb;
        }

        public static zzb zzi(InputStream inputStream) throws IOException {
            return (zzb) zzgys.zzbk(zzb, inputStream);
        }

        public static zzb zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzb) zzgys.zzbl(zzb, inputStream, zzgycVar);
        }

        public static zzb zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzb) zzgys.zzbm(zzb, zzgxkVar);
        }

        public static zzb zzm(zzgxq zzgxqVar) throws IOException {
            return (zzb) zzgys.zzbn(zzb, zzgxqVar);
        }

        public static zzb zzn(InputStream inputStream) throws IOException {
            return (zzb) zzgys.zzbo(zzb, inputStream);
        }

        public static zzb zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzb) zzgys.zzbp(zzb, byteBuffer);
        }

        public static zzb zzp(byte[] bArr) throws zzgzh {
            return (zzb) zzgys.zzbq(zzb, bArr);
        }

        public static zzb zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzb) zzgys.zzbr(zzb, zzgxkVar, zzgycVar);
        }

        public static zzb zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzb) zzgys.zzbs(zzb, zzgxqVar, zzgycVar);
        }

        public static zzb zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzb) zzgys.zzbu(zzb, inputStream, zzgycVar);
        }

        public static zzb zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzb) zzgys.zzbv(zzb, byteBuffer, zzgycVar);
        }

        public static zzb zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzb) zzgys.zzbx(zzb, bArr, zzgycVar);
        }

        public static zzhal<zzb> zzv() {
            return zzb.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzc
        public int zza() {
            return this.zzd.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzc
        public zza zzb(int i) {
            return this.zzd.get(i);
        }

        public InterfaceC0044zzb zzc(int i) {
            return this.zzd.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzb> zzhalVar2 = zzc;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzb.class) {
                                            try {
                                                zzhalVar = zzc;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzb);
                                                    zzc = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzb;
                        }
                        return new zzc();
                    }
                    return new zzb();
                }
                return zzgys.zzbQ(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zza.class});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzc
        public List<zza> zzl() {
            return this.zzd;
        }

        public List<? extends InterfaceC0044zzb> zzw() {
            return this.zzd;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzba extends zzgys<zzba, zza> implements zzbb {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        private static final zzba zzf;
        private static volatile zzhal<zzba> zzg;
        private int zzh;
        private int zzi = 1000;
        private zzaw zzj;
        private int zzk;
        private int zzl;
        private int zzm;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzba, zza> implements zzbb {
            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public int zza() {
                return ((zzba) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public int zzb() {
                return ((zzba) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public int zzc() {
                return ((zzba) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public zzq zzd() {
                return ((zzba) this.zza).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public zzaw zze() {
                return ((zzba) this.zza).zze();
            }

            public zza zzf() {
                zzbu();
                ((zzba) this.zza).zzM();
                return this;
            }

            public zza zzg() {
                zzbu();
                ((zzba) this.zza).zzN();
                return this;
            }

            public zza zzh() {
                zzbu();
                ((zzba) this.zza).zzO();
                return this;
            }

            public zza zzi() {
                zzbu();
                ((zzba) this.zza).zzP();
                return this;
            }

            public zza zzj() {
                zzbu();
                ((zzba) this.zza).zzQ();
                return this;
            }

            public zza zzk(zzaw zzawVar) {
                zzbu();
                ((zzba) this.zza).zzR(zzawVar);
                return this;
            }

            public zza zzl(zzaw.zza zzaVar) {
                zzbu();
                ((zzba) this.zza).zzS(zzaVar.zzbr());
                return this;
            }

            public zza zzm(zzaw zzawVar) {
                zzbu();
                ((zzba) this.zza).zzS(zzawVar);
                return this;
            }

            public zza zzn(zzq zzqVar) {
                zzbu();
                ((zzba) this.zza).zzT(zzqVar);
                return this;
            }

            public zza zzo(int i) {
                zzbu();
                ((zzba) this.zza).zzU(i);
                return this;
            }

            public zza zzp(int i) {
                zzbu();
                ((zzba) this.zza).zzV(i);
                return this;
            }

            public zza zzq(int i) {
                zzbu();
                ((zzba) this.zza).zzW(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public boolean zzr() {
                return ((zzba) this.zza).zzr();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public boolean zzs() {
                return ((zzba) this.zza).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public boolean zzt() {
                return ((zzba) this.zza).zzt();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public boolean zzu() {
                return ((zzba) this.zza).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbb
            public boolean zzv() {
                return ((zzba) this.zza).zzv();
            }

            private zza() {
                super(zzba.zzf);
            }
        }

        static {
            zzba zzbaVar = new zzba();
            zzf = zzbaVar;
            zzgys.zzbZ(zzba.class, zzbaVar);
        }

        private zzba() {
        }

        public static zzhal<zzba> zzA() {
            return zzf.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzM() {
            this.zzj = null;
            this.zzh &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzN() {
            this.zzh &= -2;
            this.zzi = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzO() {
            this.zzh &= -17;
            this.zzm = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzP() {
            this.zzh &= -5;
            this.zzk = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzQ() {
            this.zzh &= -9;
            this.zzl = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzR(zzaw zzawVar) {
            zzawVar.getClass();
            zzaw zzawVar2 = this.zzj;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            this.zzj = zzawVar;
            this.zzh |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzS(zzaw zzawVar) {
            zzawVar.getClass();
            this.zzj = zzawVar;
            this.zzh |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzT(zzq zzqVar) {
            this.zzi = zzqVar.zza();
            this.zzh |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzU(int i) {
            this.zzh |= 16;
            this.zzm = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzV(int i) {
            this.zzh |= 4;
            this.zzk = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzW(int i) {
            this.zzh |= 8;
            this.zzl = i;
        }

        public static zza zzf() {
            return (zza) zzf.zzaZ();
        }

        public static zza zzg(zzba zzbaVar) {
            return (zza) zzf.zzba(zzbaVar);
        }

        public static zzba zzi() {
            return zzf;
        }

        public static zzba zzj(InputStream inputStream) throws IOException {
            return (zzba) zzgys.zzbk(zzf, inputStream);
        }

        public static zzba zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzba) zzgys.zzbl(zzf, inputStream, zzgycVar);
        }

        public static zzba zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzba) zzgys.zzbm(zzf, zzgxkVar);
        }

        public static zzba zzm(zzgxq zzgxqVar) throws IOException {
            return (zzba) zzgys.zzbn(zzf, zzgxqVar);
        }

        public static zzba zzn(InputStream inputStream) throws IOException {
            return (zzba) zzgys.zzbo(zzf, inputStream);
        }

        public static zzba zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzba) zzgys.zzbp(zzf, byteBuffer);
        }

        public static zzba zzp(byte[] bArr) throws zzgzh {
            return (zzba) zzgys.zzbq(zzf, bArr);
        }

        public static zzba zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzba) zzgys.zzbr(zzf, zzgxkVar, zzgycVar);
        }

        public static zzba zzw(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzba) zzgys.zzbs(zzf, zzgxqVar, zzgycVar);
        }

        public static zzba zzx(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzba) zzgys.zzbu(zzf, inputStream, zzgycVar);
        }

        public static zzba zzy(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzba) zzgys.zzbv(zzf, byteBuffer, zzgycVar);
        }

        public static zzba zzz(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzba) zzgys.zzbx(zzf, bArr, zzgycVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public int zza() {
            return this.zzm;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public int zzb() {
            return this.zzk;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public int zzc() {
            return this.zzl;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public zzq zzd() {
            zzq zzb2 = zzq.zzb(this.zzi);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzba> zzhalVar2 = zzg;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzba.class) {
                                            try {
                                                zzhalVar = zzg;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzf);
                                                    zzg = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zza();
                    }
                    return new zzba();
                }
                return zzgys.zzbQ(zzf, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzh", "zzi", zzq.zze(), "zzj", "zzk", "zzl", "zzm"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public zzaw zze() {
            zzaw zzawVar = this.zzj;
            if (zzawVar == null) {
                return zzaw.zzg();
            }
            return zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public boolean zzr() {
            if ((this.zzh & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public boolean zzs() {
            if ((this.zzh & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public boolean zzt() {
            if ((this.zzh & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public boolean zzu() {
            if ((this.zzh & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbb
        public boolean zzv() {
            if ((this.zzh & 8) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzbb extends zzhae {
        int zza();

        int zzb();

        int zzc();

        zzq zzd();

        zzaw zze();

        boolean zzr();

        boolean zzs();

        boolean zzt();

        boolean zzu();

        boolean zzv();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzbc extends zzgys<zzbc, zza> implements zzbd {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzbc zzd;
        private static volatile zzhal<zzbc> zze;
        private int zzf;
        private int zzg = 1000;
        private zzaw zzh;
        private zzap zzi;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzbc, zza> implements zzbd {
            @Override // com.google.android.gms.internal.ads.zzbca.zzbd
            public zzq zza() {
                return ((zzbc) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbd
            public zzap zzb() {
                return ((zzbc) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbd
            public zzaw zzc() {
                return ((zzbc) this.zza).zzc();
            }

            public zza zzd() {
                zzbu();
                ((zzbc) this.zza).zzG();
                return this;
            }

            public zza zze() {
                zzbu();
                ((zzbc) this.zza).zzH();
                return this;
            }

            public zza zzf() {
                zzbu();
                ((zzbc) this.zza).zzI();
                return this;
            }

            public zza zzg(zzaw zzawVar) {
                zzbu();
                ((zzbc) this.zza).zzJ(zzawVar);
                return this;
            }

            public zza zzh(zzap zzapVar) {
                zzbu();
                ((zzbc) this.zza).zzK(zzapVar);
                return this;
            }

            public zza zzi(zzaw.zza zzaVar) {
                zzbu();
                ((zzbc) this.zza).zzL(zzaVar.zzbr());
                return this;
            }

            public zza zzj(zzaw zzawVar) {
                zzbu();
                ((zzbc) this.zza).zzL(zzawVar);
                return this;
            }

            public zza zzk(zzap.zza zzaVar) {
                zzbu();
                ((zzbc) this.zza).zzM(zzaVar.zzbr());
                return this;
            }

            public zza zzl(zzap zzapVar) {
                zzbu();
                ((zzbc) this.zza).zzM(zzapVar);
                return this;
            }

            public zza zzm(zzq zzqVar) {
                zzbu();
                ((zzbc) this.zza).zzN(zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbd
            public boolean zzn() {
                return ((zzbc) this.zza).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbd
            public boolean zzo() {
                return ((zzbc) this.zza).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbd
            public boolean zzp() {
                return ((zzbc) this.zza).zzp();
            }

            private zza() {
                super(zzbc.zzd);
            }
        }

        static {
            zzbc zzbcVar = new zzbc();
            zzd = zzbcVar;
            zzgys.zzbZ(zzbc.class, zzbcVar);
        }

        private zzbc() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzG() {
            this.zzh = null;
            this.zzf &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzH() {
            this.zzi = null;
            this.zzf &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzI() {
            this.zzf &= -2;
            this.zzg = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzJ(zzaw zzawVar) {
            zzawVar.getClass();
            zzaw zzawVar2 = this.zzh;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            this.zzh = zzawVar;
            this.zzf |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzK(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzi;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzi = zzapVar;
            this.zzf |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzL(zzaw zzawVar) {
            zzawVar.getClass();
            this.zzh = zzawVar;
            this.zzf |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzM(zzap zzapVar) {
            zzapVar.getClass();
            this.zzi = zzapVar;
            this.zzf |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzN(zzq zzqVar) {
            this.zzg = zzqVar.zza();
            this.zzf |= 1;
        }

        public static zza zzd() {
            return (zza) zzd.zzaZ();
        }

        public static zza zzf(zzbc zzbcVar) {
            return (zza) zzd.zzba(zzbcVar);
        }

        public static zzbc zzh() {
            return zzd;
        }

        public static zzbc zzi(InputStream inputStream) throws IOException {
            return (zzbc) zzgys.zzbk(zzd, inputStream);
        }

        public static zzbc zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbc) zzgys.zzbl(zzd, inputStream, zzgycVar);
        }

        public static zzbc zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzbc) zzgys.zzbm(zzd, zzgxkVar);
        }

        public static zzbc zzl(zzgxq zzgxqVar) throws IOException {
            return (zzbc) zzgys.zzbn(zzd, zzgxqVar);
        }

        public static zzbc zzm(InputStream inputStream) throws IOException {
            return (zzbc) zzgys.zzbo(zzd, inputStream);
        }

        public static zzbc zzq(ByteBuffer byteBuffer) throws zzgzh {
            return (zzbc) zzgys.zzbp(zzd, byteBuffer);
        }

        public static zzbc zzr(byte[] bArr) throws zzgzh {
            return (zzbc) zzgys.zzbq(zzd, bArr);
        }

        public static zzbc zzs(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzbc) zzgys.zzbr(zzd, zzgxkVar, zzgycVar);
        }

        public static zzbc zzt(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzbc) zzgys.zzbs(zzd, zzgxqVar, zzgycVar);
        }

        public static zzbc zzu(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbc) zzgys.zzbu(zzd, inputStream, zzgycVar);
        }

        public static zzbc zzv(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzbc) zzgys.zzbv(zzd, byteBuffer, zzgycVar);
        }

        public static zzbc zzw(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzbc) zzgys.zzbx(zzd, bArr, zzgycVar);
        }

        public static zzhal<zzbc> zzx() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbd
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzg);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbd
        public zzap zzb() {
            zzap zzapVar = this.zzi;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbd
        public zzaw zzc() {
            zzaw zzawVar = this.zzh;
            if (zzawVar == null) {
                return zzaw.zzg();
            }
            return zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzbc> zzhalVar2 = zze;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzbc.class) {
                                            try {
                                                zzhalVar = zze;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzd);
                                                    zze = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzd;
                        }
                        return new zza();
                    }
                    return new zzbc();
                }
                return zzgys.zzbQ(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzq.zze(), "zzh", "zzi"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbd
        public boolean zzn() {
            if ((this.zzf & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbd
        public boolean zzo() {
            if ((this.zzf & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbd
        public boolean zzp() {
            if ((this.zzf & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzbd extends zzhae {
        zzq zza();

        zzap zzb();

        zzaw zzc();

        boolean zzn();

        boolean zzo();

        boolean zzp();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzbe extends zzgys<zzbe, zza> implements zzbf {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        private static final zzbe zzg;
        private static volatile zzhal<zzbe> zzh;
        private int zzi;
        private int zzj = 1000;
        private zzaw zzk;
        private int zzl;
        private int zzm;
        private int zzn;
        private long zzo;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzbe, zza> implements zzbf {
            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public int zza() {
                return ((zzbe) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public int zzb() {
                return ((zzbe) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public int zzc() {
                return ((zzbe) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public long zzd() {
                return ((zzbe) this.zza).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public zzq zze() {
                return ((zzbe) this.zza).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public zzaw zzf() {
                return ((zzbe) this.zza).zzf();
            }

            public zza zzg() {
                zzbu();
                ((zzbe) this.zza).zzQ();
                return this;
            }

            public zza zzh() {
                zzbu();
                ((zzbe) this.zza).zzR();
                return this;
            }

            public zza zzi() {
                zzbu();
                ((zzbe) this.zza).zzS();
                return this;
            }

            public zza zzj() {
                zzbu();
                ((zzbe) this.zza).zzT();
                return this;
            }

            public zza zzk() {
                zzbu();
                ((zzbe) this.zza).zzU();
                return this;
            }

            public zza zzl() {
                zzbu();
                ((zzbe) this.zza).zzV();
                return this;
            }

            public zza zzm(zzaw zzawVar) {
                zzbu();
                ((zzbe) this.zza).zzW(zzawVar);
                return this;
            }

            public zza zzn(long j) {
                zzbu();
                ((zzbe) this.zza).zzX(j);
                return this;
            }

            public zza zzo(zzaw.zza zzaVar) {
                zzbu();
                ((zzbe) this.zza).zzY(zzaVar.zzbr());
                return this;
            }

            public zza zzp(zzaw zzawVar) {
                zzbu();
                ((zzbe) this.zza).zzY(zzawVar);
                return this;
            }

            public zza zzq(zzq zzqVar) {
                zzbu();
                ((zzbe) this.zza).zzZ(zzqVar);
                return this;
            }

            public zza zzr(int i) {
                zzbu();
                ((zzbe) this.zza).zzaa(i);
                return this;
            }

            public zza zzs(int i) {
                zzbu();
                ((zzbe) this.zza).zzab(i);
                return this;
            }

            public zza zzt(int i) {
                zzbu();
                ((zzbe) this.zza).zzac(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public boolean zzu() {
                return ((zzbe) this.zza).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public boolean zzv() {
                return ((zzbe) this.zza).zzv();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public boolean zzw() {
                return ((zzbe) this.zza).zzw();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public boolean zzx() {
                return ((zzbe) this.zza).zzx();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public boolean zzy() {
                return ((zzbe) this.zza).zzy();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbf
            public boolean zzz() {
                return ((zzbe) this.zza).zzz();
            }

            private zza() {
                super(zzbe.zzg);
            }
        }

        static {
            zzbe zzbeVar = new zzbe();
            zzg = zzbeVar;
            zzgys.zzbZ(zzbe.class, zzbeVar);
        }

        private zzbe() {
        }

        public static zzbe zzA(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzbe) zzgys.zzbv(zzg, byteBuffer, zzgycVar);
        }

        public static zzbe zzB(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzbe) zzgys.zzbx(zzg, bArr, zzgycVar);
        }

        public static zzhal<zzbe> zzC() {
            return zzg.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzQ() {
            this.zzi &= -33;
            this.zzo = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzR() {
            this.zzk = null;
            this.zzi &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzS() {
            this.zzi &= -2;
            this.zzj = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzT() {
            this.zzi &= -17;
            this.zzn = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzU() {
            this.zzi &= -5;
            this.zzl = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzV() {
            this.zzi &= -9;
            this.zzm = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzW(zzaw zzawVar) {
            zzawVar.getClass();
            zzaw zzawVar2 = this.zzk;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            this.zzk = zzawVar;
            this.zzi |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzX(long j) {
            this.zzi |= 32;
            this.zzo = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzY(zzaw zzawVar) {
            zzawVar.getClass();
            this.zzk = zzawVar;
            this.zzi |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzZ(zzq zzqVar) {
            this.zzj = zzqVar.zza();
            this.zzi |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaa(int i) {
            this.zzi |= 16;
            this.zzn = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzab(int i) {
            this.zzi |= 4;
            this.zzl = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzac(int i) {
            this.zzi |= 8;
            this.zzm = i;
        }

        public static zza zzg() {
            return (zza) zzg.zzaZ();
        }

        public static zza zzh(zzbe zzbeVar) {
            return (zza) zzg.zzba(zzbeVar);
        }

        public static zzbe zzj() {
            return zzg;
        }

        public static zzbe zzk(InputStream inputStream) throws IOException {
            return (zzbe) zzgys.zzbk(zzg, inputStream);
        }

        public static zzbe zzl(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbe) zzgys.zzbl(zzg, inputStream, zzgycVar);
        }

        public static zzbe zzm(zzgxk zzgxkVar) throws zzgzh {
            return (zzbe) zzgys.zzbm(zzg, zzgxkVar);
        }

        public static zzbe zzn(zzgxq zzgxqVar) throws IOException {
            return (zzbe) zzgys.zzbn(zzg, zzgxqVar);
        }

        public static zzbe zzo(InputStream inputStream) throws IOException {
            return (zzbe) zzgys.zzbo(zzg, inputStream);
        }

        public static zzbe zzp(ByteBuffer byteBuffer) throws zzgzh {
            return (zzbe) zzgys.zzbp(zzg, byteBuffer);
        }

        public static zzbe zzq(byte[] bArr) throws zzgzh {
            return (zzbe) zzgys.zzbq(zzg, bArr);
        }

        public static zzbe zzr(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzbe) zzgys.zzbr(zzg, zzgxkVar, zzgycVar);
        }

        public static zzbe zzs(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzbe) zzgys.zzbs(zzg, zzgxqVar, zzgycVar);
        }

        public static zzbe zzt(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbe) zzgys.zzbu(zzg, inputStream, zzgycVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public int zza() {
            return this.zzn;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public int zzb() {
            return this.zzl;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public int zzc() {
            return this.zzm;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public long zzd() {
            return this.zzo;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzbe> zzhalVar2 = zzh;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzbe.class) {
                                            try {
                                                zzhalVar = zzh;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzg);
                                                    zzh = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzg;
                        }
                        return new zza();
                    }
                    return new zzbe();
                }
                return zzgys.zzbQ(zzg, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzi", "zzj", zzq.zze(), "zzk", "zzl", "zzm", "zzn", "zzo"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public zzq zze() {
            zzq zzb2 = zzq.zzb(this.zzj);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public zzaw zzf() {
            zzaw zzawVar = this.zzk;
            if (zzawVar == null) {
                return zzaw.zzg();
            }
            return zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public boolean zzu() {
            if ((this.zzi & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public boolean zzv() {
            if ((this.zzi & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public boolean zzw() {
            if ((this.zzi & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public boolean zzx() {
            if ((this.zzi & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public boolean zzy() {
            if ((this.zzi & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbf
        public boolean zzz() {
            if ((this.zzi & 8) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzbf extends zzhae {
        int zza();

        int zzb();

        int zzc();

        long zzd();

        zzq zze();

        zzaw zzf();

        boolean zzu();

        boolean zzv();

        boolean zzw();

        boolean zzx();

        boolean zzy();

        boolean zzz();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzbg extends zzgys<zzbg, zza> implements zzbh {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzbg zzd;
        private static volatile zzhal<zzbg> zze;
        private int zzf;
        private int zzg = 1000;
        private zzaw zzh;
        private zzap zzi;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzbg, zza> implements zzbh {
            @Override // com.google.android.gms.internal.ads.zzbca.zzbh
            public zzq zza() {
                return ((zzbg) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbh
            public zzap zzb() {
                return ((zzbg) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbh
            public zzaw zzc() {
                return ((zzbg) this.zza).zzc();
            }

            public zza zzd() {
                zzbu();
                ((zzbg) this.zza).zzG();
                return this;
            }

            public zza zze() {
                zzbu();
                ((zzbg) this.zza).zzH();
                return this;
            }

            public zza zzf() {
                zzbu();
                ((zzbg) this.zza).zzI();
                return this;
            }

            public zza zzg(zzaw zzawVar) {
                zzbu();
                ((zzbg) this.zza).zzJ(zzawVar);
                return this;
            }

            public zza zzh(zzap zzapVar) {
                zzbu();
                ((zzbg) this.zza).zzK(zzapVar);
                return this;
            }

            public zza zzi(zzaw.zza zzaVar) {
                zzbu();
                ((zzbg) this.zza).zzL(zzaVar.zzbr());
                return this;
            }

            public zza zzj(zzaw zzawVar) {
                zzbu();
                ((zzbg) this.zza).zzL(zzawVar);
                return this;
            }

            public zza zzk(zzap.zza zzaVar) {
                zzbu();
                ((zzbg) this.zza).zzM(zzaVar.zzbr());
                return this;
            }

            public zza zzl(zzap zzapVar) {
                zzbu();
                ((zzbg) this.zza).zzM(zzapVar);
                return this;
            }

            public zza zzm(zzq zzqVar) {
                zzbu();
                ((zzbg) this.zza).zzN(zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbh
            public boolean zzn() {
                return ((zzbg) this.zza).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbh
            public boolean zzo() {
                return ((zzbg) this.zza).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbh
            public boolean zzp() {
                return ((zzbg) this.zza).zzp();
            }

            private zza() {
                super(zzbg.zzd);
            }
        }

        static {
            zzbg zzbgVar = new zzbg();
            zzd = zzbgVar;
            zzgys.zzbZ(zzbg.class, zzbgVar);
        }

        private zzbg() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzG() {
            this.zzh = null;
            this.zzf &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzH() {
            this.zzi = null;
            this.zzf &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzI() {
            this.zzf &= -2;
            this.zzg = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzJ(zzaw zzawVar) {
            zzawVar.getClass();
            zzaw zzawVar2 = this.zzh;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            this.zzh = zzawVar;
            this.zzf |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzK(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzi;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzi = zzapVar;
            this.zzf |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzL(zzaw zzawVar) {
            zzawVar.getClass();
            this.zzh = zzawVar;
            this.zzf |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzM(zzap zzapVar) {
            zzapVar.getClass();
            this.zzi = zzapVar;
            this.zzf |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzN(zzq zzqVar) {
            this.zzg = zzqVar.zza();
            this.zzf |= 1;
        }

        public static zza zzd() {
            return (zza) zzd.zzaZ();
        }

        public static zza zzf(zzbg zzbgVar) {
            return (zza) zzd.zzba(zzbgVar);
        }

        public static zzbg zzh() {
            return zzd;
        }

        public static zzbg zzi(InputStream inputStream) throws IOException {
            return (zzbg) zzgys.zzbk(zzd, inputStream);
        }

        public static zzbg zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbg) zzgys.zzbl(zzd, inputStream, zzgycVar);
        }

        public static zzbg zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzbg) zzgys.zzbm(zzd, zzgxkVar);
        }

        public static zzbg zzl(zzgxq zzgxqVar) throws IOException {
            return (zzbg) zzgys.zzbn(zzd, zzgxqVar);
        }

        public static zzbg zzm(InputStream inputStream) throws IOException {
            return (zzbg) zzgys.zzbo(zzd, inputStream);
        }

        public static zzbg zzq(ByteBuffer byteBuffer) throws zzgzh {
            return (zzbg) zzgys.zzbp(zzd, byteBuffer);
        }

        public static zzbg zzr(byte[] bArr) throws zzgzh {
            return (zzbg) zzgys.zzbq(zzd, bArr);
        }

        public static zzbg zzs(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzbg) zzgys.zzbr(zzd, zzgxkVar, zzgycVar);
        }

        public static zzbg zzt(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzbg) zzgys.zzbs(zzd, zzgxqVar, zzgycVar);
        }

        public static zzbg zzu(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbg) zzgys.zzbu(zzd, inputStream, zzgycVar);
        }

        public static zzbg zzv(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzbg) zzgys.zzbv(zzd, byteBuffer, zzgycVar);
        }

        public static zzbg zzw(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzbg) zzgys.zzbx(zzd, bArr, zzgycVar);
        }

        public static zzhal<zzbg> zzx() {
            return zzd.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbh
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzg);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbh
        public zzap zzb() {
            zzap zzapVar = this.zzi;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbh
        public zzaw zzc() {
            zzaw zzawVar = this.zzh;
            if (zzawVar == null) {
                return zzaw.zzg();
            }
            return zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzbg> zzhalVar2 = zze;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzbg.class) {
                                            try {
                                                zzhalVar = zze;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzd);
                                                    zze = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzd;
                        }
                        return new zza();
                    }
                    return new zzbg();
                }
                return zzgys.zzbQ(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzq.zze(), "zzh", "zzi"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbh
        public boolean zzn() {
            if ((this.zzf & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbh
        public boolean zzo() {
            if ((this.zzf & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbh
        public boolean zzp() {
            if ((this.zzf & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzbh extends zzhae {
        zzq zza();

        zzap zzb();

        zzaw zzc();

        boolean zzn();

        boolean zzo();

        boolean zzp();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzbi extends zzhae {
        int zza();

        boolean zzaA();

        boolean zzaB();

        zzau zzaf();

        zzay zzag();

        zzba zzah();

        zzbc zzai();

        zzbe zzaj();

        zzbg zzak();

        zzbj zzal();

        boolean zzam();

        boolean zzan();

        boolean zzao();

        boolean zzap();

        boolean zzaq();

        boolean zzar();

        boolean zzas();

        boolean zzat();

        boolean zzau();

        boolean zzav();

        boolean zzaw();

        boolean zzax();

        boolean zzay();

        boolean zzaz();

        int zzb();

        int zzc();

        int zzd();

        int zze();

        int zzf();

        int zzg();

        long zzh();

        zzap zzi();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzbj extends zzgys<zzbj, zza> implements zzbk {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzbj zzc;
        private static volatile zzhal<zzbj> zzd;
        private int zze;
        private int zzf = 1000;
        private zzaw zzg;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzbj, zza> implements zzbk {
            @Override // com.google.android.gms.internal.ads.zzbca.zzbk
            public zzq zza() {
                return ((zzbj) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbk
            public zzaw zzb() {
                return ((zzbj) this.zza).zzb();
            }

            public zza zzc() {
                zzbu();
                ((zzbj) this.zza).zzB();
                return this;
            }

            public zza zzd() {
                zzbu();
                ((zzbj) this.zza).zzC();
                return this;
            }

            public zza zze(zzaw zzawVar) {
                zzbu();
                ((zzbj) this.zza).zzD(zzawVar);
                return this;
            }

            public zza zzf(zzaw.zza zzaVar) {
                zzbu();
                ((zzbj) this.zza).zzE(zzaVar.zzbr());
                return this;
            }

            public zza zzg(zzaw zzawVar) {
                zzbu();
                ((zzbj) this.zza).zzE(zzawVar);
                return this;
            }

            public zza zzh(zzq zzqVar) {
                zzbu();
                ((zzbj) this.zza).zzF(zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbk
            public boolean zzi() {
                return ((zzbj) this.zza).zzi();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbk
            public boolean zzj() {
                return ((zzbj) this.zza).zzj();
            }

            private zza() {
                super(zzbj.zzc);
            }
        }

        static {
            zzbj zzbjVar = new zzbj();
            zzc = zzbjVar;
            zzgys.zzbZ(zzbj.class, zzbjVar);
        }

        private zzbj() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzB() {
            this.zzg = null;
            this.zze &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzC() {
            this.zze &= -2;
            this.zzf = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(zzaw zzawVar) {
            zzawVar.getClass();
            zzaw zzawVar2 = this.zzg;
            if (zzawVar2 != null && zzawVar2 != zzaw.zzg()) {
                zzaw.zza zzb2 = zzaw.zzb(zzawVar2);
                zzb2.zzbj(zzawVar);
                zzawVar = zzb2.zzbs();
            }
            this.zzg = zzawVar;
            this.zze |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzE(zzaw zzawVar) {
            zzawVar.getClass();
            this.zzg = zzawVar;
            this.zze |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzF(zzq zzqVar) {
            this.zzf = zzqVar.zza();
            this.zze |= 1;
        }

        public static zza zzc() {
            return (zza) zzc.zzaZ();
        }

        public static zza zzd(zzbj zzbjVar) {
            return (zza) zzc.zzba(zzbjVar);
        }

        public static zzbj zzg() {
            return zzc;
        }

        public static zzbj zzh(InputStream inputStream) throws IOException {
            return (zzbj) zzgys.zzbk(zzc, inputStream);
        }

        public static zzbj zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbj) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzbj zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzbj) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzbj zzm(zzgxq zzgxqVar) throws IOException {
            return (zzbj) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzbj zzn(InputStream inputStream) throws IOException {
            return (zzbj) zzgys.zzbo(zzc, inputStream);
        }

        public static zzbj zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzbj) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzbj zzp(byte[] bArr) throws zzgzh {
            return (zzbj) zzgys.zzbq(zzc, bArr);
        }

        public static zzbj zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzbj) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzbj zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzbj) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzbj zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbj) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzbj zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzbj) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzbj zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzbj) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzbj> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbk
        public zzq zza() {
            zzq zzb2 = zzq.zzb(this.zzf);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbk
        public zzaw zzb() {
            zzaw zzawVar = this.zzg;
            if (zzawVar == null) {
                return zzaw.zzg();
            }
            return zzawVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzbj> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzbj.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zza();
                    }
                    return new zzbj();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", zzq.zze(), "zzg"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbk
        public boolean zzi() {
            if ((this.zze & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbk
        public boolean zzj() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzbk extends zzhae {
        zzq zza();

        zzaw zzb();

        boolean zzi();

        boolean zzj();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzbl extends zzgys<zzbl, zza> implements zzbm {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzbl zzc;
        private static volatile zzhal<zzbl> zzd;
        private int zze;
        private boolean zzf;
        private int zzg;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzbl, zza> implements zzbm {
            @Override // com.google.android.gms.internal.ads.zzbca.zzbm
            public int zza() {
                return ((zzbl) this.zza).zza();
            }

            public zza zzb() {
                zzbu();
                ((zzbl) this.zza).zzA();
                return this;
            }

            public zza zzc() {
                zzbu();
                ((zzbl) this.zza).zzB();
                return this;
            }

            public zza zzd(boolean z) {
                zzbu();
                ((zzbl) this.zza).zzC(z);
                return this;
            }

            public zza zze(int i) {
                zzbu();
                ((zzbl) this.zza).zzD(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbm
            public boolean zzf() {
                return ((zzbl) this.zza).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbm
            public boolean zzg() {
                return ((zzbl) this.zza).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzbm
            public boolean zzh() {
                return ((zzbl) this.zza).zzh();
            }

            private zza() {
                super(zzbl.zzc);
            }
        }

        static {
            zzbl zzblVar = new zzbl();
            zzc = zzblVar;
            zzgys.zzbZ(zzbl.class, zzblVar);
        }

        private zzbl() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzA() {
            this.zze &= -2;
            this.zzf = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzB() {
            this.zze &= -3;
            this.zzg = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzC(boolean z) {
            this.zze |= 1;
            this.zzf = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(int i) {
            this.zze |= 2;
            this.zzg = i;
        }

        public static zza zzb() {
            return (zza) zzc.zzaZ();
        }

        public static zza zzc(zzbl zzblVar) {
            return (zza) zzc.zzba(zzblVar);
        }

        public static zzbl zzi() {
            return zzc;
        }

        public static zzbl zzj(InputStream inputStream) throws IOException {
            return (zzbl) zzgys.zzbk(zzc, inputStream);
        }

        public static zzbl zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbl) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzbl zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzbl) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzbl zzm(zzgxq zzgxqVar) throws IOException {
            return (zzbl) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzbl zzn(InputStream inputStream) throws IOException {
            return (zzbl) zzgys.zzbo(zzc, inputStream);
        }

        public static zzbl zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzbl) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzbl zzp(byte[] bArr) throws zzgzh {
            return (zzbl) zzgys.zzbq(zzc, bArr);
        }

        public static zzbl zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzbl) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzbl zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzbl) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzbl zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzbl) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzbl zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzbl) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzbl zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzbl) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzbl> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbm
        public int zza() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzbl> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzbl.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zza();
                    }
                    return new zzbl();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbm
        public boolean zzf() {
            return this.zzf;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbm
        public boolean zzg() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzbm
        public boolean zzh() {
            if ((this.zze & 2) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzbm extends zzhae {
        int zza();

        boolean zzf();

        boolean zzg();

        boolean zzh();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzc extends zzhae {
        int zza();

        zzb.zza zzb(int i);

        List<zzb.zza> zzl();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzd extends zzgys<zzd, zzb> implements zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzd zzc;
        private static volatile zzhal<zzd> zzd;
        private int zze;
        private int zzf;
        private zzal zzg;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public enum zza implements zzgyw {
            AD_FORMAT_TYPE_UNSPECIFIED(0),
            BANNER(1),
            INTERSTITIAL(2),
            NATIVE_EXPRESS(3),
            NATIVE_CONTENT(4),
            NATIVE_APP_INSTALL(5),
            NATIVE_CUSTOM_TEMPLATE(6),
            DFP_BANNER(7),
            DFP_INTERSTITIAL(8),
            REWARD_BASED_VIDEO_AD(9),
            BANNER_SEARCH_ADS(10);
            
            public static final int zzl = 0;
            public static final int zzm = 1;
            public static final int zzn = 2;
            public static final int zzo = 3;
            public static final int zzp = 4;
            public static final int zzq = 5;
            public static final int zzr = 6;
            public static final int zzs = 7;
            public static final int zzt = 8;
            public static final int zzu = 9;
            public static final int zzv = 10;
            private static final zzgyx<zza> zzw = new zzgyx<zza>() { // from class: com.google.android.gms.internal.ads.zzbca.zzd.zza.1
                /* renamed from: zza */
                public zza zzb(int i) {
                    return zza.zzb(i);
                }
            };
            private final int zzy;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Proguard */
            /* renamed from: com.google.android.gms.internal.ads.zzbca$zzd$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public final class C0045zza implements zzgyy {
                static final zzgyy zza = new C0045zza();

                private C0045zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzgyy
                public boolean zza(int i) {
                    if (zza.zzb(i) != null) {
                        return true;
                    }
                    return false;
                }
            }

            zza(int i) {
                this.zzy = i;
            }

            public static zza zzb(int i) {
                switch (i) {
                    case 0:
                        return AD_FORMAT_TYPE_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return INTERSTITIAL;
                    case 3:
                        return NATIVE_EXPRESS;
                    case 4:
                        return NATIVE_CONTENT;
                    case 5:
                        return NATIVE_APP_INSTALL;
                    case 6:
                        return NATIVE_CUSTOM_TEMPLATE;
                    case 7:
                        return DFP_BANNER;
                    case 8:
                        return DFP_INTERSTITIAL;
                    case 9:
                        return REWARD_BASED_VIDEO_AD;
                    case 10:
                        return BANNER_SEARCH_ADS;
                    default:
                        return null;
                }
            }

            public static zzgyx<zza> zzd() {
                return zzw;
            }

            public static zzgyy zze() {
                return C0045zza.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.zzy);
            }

            @Override // com.google.android.gms.internal.ads.zzgyw
            public final int zza() {
                return this.zzy;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zzb extends zzgym<zzd, zzb> implements zze {
            @Override // com.google.android.gms.internal.ads.zzbca.zze
            public zza zza() {
                return ((zzd) this.zza).zza();
            }

            public zzb zzb() {
                zzbu();
                ((zzd) this.zza).zzB();
                return this;
            }

            public zzb zzc() {
                zzbu();
                ((zzd) this.zza).zzC();
                return this;
            }

            public zzb zzd(zzal zzalVar) {
                zzbu();
                ((zzd) this.zza).zzD(zzalVar);
                return this;
            }

            public zzb zze(zzal.zza zzaVar) {
                zzbu();
                ((zzd) this.zza).zzE(zzaVar.zzbr());
                return this;
            }

            public zzb zzf(zzal zzalVar) {
                zzbu();
                ((zzd) this.zza).zzE(zzalVar);
                return this;
            }

            public zzb zzg(zza zzaVar) {
                zzbu();
                ((zzd) this.zza).zzF(zzaVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zze
            public zzal zzh() {
                return ((zzd) this.zza).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zze
            public boolean zzi() {
                return ((zzd) this.zza).zzi();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zze
            public boolean zzj() {
                return ((zzd) this.zza).zzj();
            }

            private zzb() {
                super(zzd.zzc);
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzc = zzdVar;
            zzgys.zzbZ(zzd.class, zzdVar);
        }

        private zzd() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzB() {
            this.zzg = null;
            this.zze &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzC() {
            this.zze &= -2;
            this.zzf = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(zzal zzalVar) {
            zzalVar.getClass();
            zzal zzalVar2 = this.zzg;
            if (zzalVar2 != null && zzalVar2 != zzal.zzi()) {
                zzal.zza zzd2 = zzal.zzd(zzalVar2);
                zzd2.zzbj(zzalVar);
                zzalVar = zzd2.zzbs();
            }
            this.zzg = zzalVar;
            this.zze |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzE(zzal zzalVar) {
            zzalVar.getClass();
            this.zzg = zzalVar;
            this.zze |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzF(zza zzaVar) {
            this.zzf = zzaVar.zza();
            this.zze |= 1;
        }

        public static zzb zzb() {
            return (zzb) zzc.zzaZ();
        }

        public static zzb zzc(zzd zzdVar) {
            return (zzb) zzc.zzba(zzdVar);
        }

        public static zzd zzf() {
            return zzc;
        }

        public static zzd zzg(InputStream inputStream) throws IOException {
            return (zzd) zzgys.zzbk(zzc, inputStream);
        }

        public static zzd zzk(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzd) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzd zzl(zzgxk zzgxkVar) throws zzgzh {
            return (zzd) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzd zzm(zzgxq zzgxqVar) throws IOException {
            return (zzd) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzd zzn(InputStream inputStream) throws IOException {
            return (zzd) zzgys.zzbo(zzc, inputStream);
        }

        public static zzd zzo(ByteBuffer byteBuffer) throws zzgzh {
            return (zzd) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzd zzp(byte[] bArr) throws zzgzh {
            return (zzd) zzgys.zzbq(zzc, bArr);
        }

        public static zzd zzq(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzd) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzd zzr(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzd) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzd zzs(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzd) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzd zzt(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzd) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzd zzu(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzd) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzd> zzv() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zze
        public zza zza() {
            zza zzb2 = zza.zzb(this.zzf);
            if (zzb2 == null) {
                return zza.AD_FORMAT_TYPE_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzd> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzd.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zzb();
                    }
                    return new zzd();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", zza.zze(), "zzg"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zze
        public zzal zzh() {
            zzal zzalVar = this.zzg;
            if (zzalVar == null) {
                return zzal.zzi();
            }
            return zzalVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zze
        public boolean zzi() {
            if ((this.zze & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zze
        public boolean zzj() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zze extends zzhae {
        zzd.zza zza();

        zzal zzh();

        boolean zzi();

        boolean zzj();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzf extends zzhae {
        int zza();

        zzd zzab(int i);

        zzg zzac();

        zzi zzad();

        zzk zzae();

        zzq zzaf();

        zzx zzag();

        zzz zzah();

        zzac zzai();

        zzah zzaj();

        zzat zzak(int i);

        List<zzd> zzal();

        List<zzat> zzam();

        boolean zzan();

        boolean zzao();

        boolean zzap();

        boolean zzaq();

        boolean zzar();

        boolean zzas();

        boolean zzat();

        boolean zzau();

        boolean zzav();

        int zzb();

        zza.EnumC0040zza zzc();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzg extends zzgys<zzg, zza> implements zzh {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        private static final zzg zzd;
        private static volatile zzhal<zzg> zze;
        private int zzf;
        private String zzg = "";
        private zzgze<zzd> zzh = zzgys.zzbK();
        private int zzi;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzg, zza> implements zzh {
            @Override // com.google.android.gms.internal.ads.zzbca.zzh
            public int zza() {
                return ((zzg) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzh
            public zzd zzb(int i) {
                return ((zzg) this.zza).zzb(i);
            }

            public zza zzc(Iterable<? extends zzd> iterable) {
                zzbu();
                ((zzg) this.zza).zzN(iterable);
                return this;
            }

            public zza zzd(zzd.zzb zzbVar) {
                zzbu();
                ((zzg) this.zza).zzO(zzbVar.zzbr());
                return this;
            }

            public zza zze(zzd zzdVar) {
                zzbu();
                ((zzg) this.zza).zzO(zzdVar);
                return this;
            }

            public zza zzf(int i, zzd.zzb zzbVar) {
                zzbu();
                ((zzg) this.zza).zzP(i, zzbVar.zzbr());
                return this;
            }

            public zza zzg(int i, zzd zzdVar) {
                zzbu();
                ((zzg) this.zza).zzP(i, zzdVar);
                return this;
            }

            public zza zzh() {
                zzbu();
                ((zzg) this.zza).zzQ();
                return this;
            }

            public zza zzi() {
                zzbu();
                ((zzg) this.zza).zzR();
                return this;
            }

            public zza zzj() {
                zzbu();
                ((zzg) this.zza).zzS();
                return this;
            }

            public zza zzk(int i) {
                zzbu();
                ((zzg) this.zza).zzU(i);
                return this;
            }

            public zza zzl(String str) {
                zzbu();
                ((zzg) this.zza).zzV(str);
                return this;
            }

            public zza zzm(zzgxk zzgxkVar) {
                zzbu();
                ((zzg) this.zza).zzW(zzgxkVar);
                return this;
            }

            public zza zzn(zzq zzqVar) {
                zzbu();
                ((zzg) this.zza).zzX(zzqVar);
                return this;
            }

            public zza zzo(int i, zzd.zzb zzbVar) {
                zzbu();
                ((zzg) this.zza).zzY(i, zzbVar.zzbr());
                return this;
            }

            public zza zzp(int i, zzd zzdVar) {
                zzbu();
                ((zzg) this.zza).zzY(i, zzdVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzh
            public zzq zzq() {
                return ((zzg) this.zza).zzq();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzh
            public zzgxk zzr() {
                return ((zzg) this.zza).zzr();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzh
            public String zzs() {
                return ((zzg) this.zza).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzh
            public List<zzd> zzt() {
                return Collections.unmodifiableList(((zzg) this.zza).zzt());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzh
            public boolean zzu() {
                return ((zzg) this.zza).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzh
            public boolean zzv() {
                return ((zzg) this.zza).zzv();
            }

            private zza() {
                super(zzg.zzd);
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzd = zzgVar;
            zzgys.zzbZ(zzg.class, zzgVar);
        }

        private zzg() {
        }

        public static zzhal<zzg> zzA() {
            return zzd.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzN(Iterable<? extends zzd> iterable) {
            zzT();
            zzgwt.zzaQ(iterable, this.zzh);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzO(zzd zzdVar) {
            zzdVar.getClass();
            zzT();
            this.zzh.add(zzdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzP(int i, zzd zzdVar) {
            zzdVar.getClass();
            zzT();
            this.zzh.add(i, zzdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzQ() {
            this.zzf &= -2;
            this.zzg = zzh().zzs();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzR() {
            this.zzf &= -3;
            this.zzi = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzS() {
            this.zzh = zzgys.zzbK();
        }

        private void zzT() {
            zzgze<zzd> zzgzeVar = this.zzh;
            if (!zzgzeVar.zzc()) {
                this.zzh = zzgys.zzbL(zzgzeVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzU(int i) {
            zzT();
            this.zzh.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzV(String str) {
            str.getClass();
            this.zzf |= 1;
            this.zzg = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzW(zzgxk zzgxkVar) {
            this.zzg = zzgxkVar.zzx();
            this.zzf |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzX(zzq zzqVar) {
            this.zzi = zzqVar.zza();
            this.zzf |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzY(int i, zzd zzdVar) {
            zzdVar.getClass();
            zzT();
            this.zzh.set(i, zzdVar);
        }

        public static zza zzd() {
            return (zza) zzd.zzaZ();
        }

        public static zza zzf(zzg zzgVar) {
            return (zza) zzd.zzba(zzgVar);
        }

        public static zzg zzh() {
            return zzd;
        }

        public static zzg zzi(InputStream inputStream) throws IOException {
            return (zzg) zzgys.zzbk(zzd, inputStream);
        }

        public static zzg zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzg) zzgys.zzbl(zzd, inputStream, zzgycVar);
        }

        public static zzg zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzg) zzgys.zzbm(zzd, zzgxkVar);
        }

        public static zzg zzl(zzgxq zzgxqVar) throws IOException {
            return (zzg) zzgys.zzbn(zzd, zzgxqVar);
        }

        public static zzg zzm(InputStream inputStream) throws IOException {
            return (zzg) zzgys.zzbo(zzd, inputStream);
        }

        public static zzg zzn(ByteBuffer byteBuffer) throws zzgzh {
            return (zzg) zzgys.zzbp(zzd, byteBuffer);
        }

        public static zzg zzo(byte[] bArr) throws zzgzh {
            return (zzg) zzgys.zzbq(zzd, bArr);
        }

        public static zzg zzp(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzg) zzgys.zzbr(zzd, zzgxkVar, zzgycVar);
        }

        public static zzg zzw(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzg) zzgys.zzbs(zzd, zzgxqVar, zzgycVar);
        }

        public static zzg zzx(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzg) zzgys.zzbu(zzd, inputStream, zzgycVar);
        }

        public static zzg zzy(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzg) zzgys.zzbv(zzd, byteBuffer, zzgycVar);
        }

        public static zzg zzz(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzg) zzgys.zzbx(zzd, bArr, zzgycVar);
        }

        public List<? extends zze> zzB() {
            return this.zzh;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzh
        public int zza() {
            return this.zzh.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzh
        public zzd zzb(int i) {
            return this.zzh.get(i);
        }

        public zze zzc(int i) {
            return this.zzh.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzg> zzhalVar2 = zze;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzg.class) {
                                            try {
                                                zzhalVar = zze;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzd);
                                                    zze = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzd;
                        }
                        return new zza();
                    }
                    return new zzg();
                }
                return zzgys.zzbQ(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001", new Object[]{"zzf", "zzg", "zzh", zzd.class, "zzi", zzq.zze()});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzh
        public zzq zzq() {
            zzq zzb2 = zzq.zzb(this.zzi);
            if (zzb2 == null) {
                return zzq.ENUM_FALSE;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzh
        public zzgxk zzr() {
            return zzgxk.zzw(this.zzg);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzh
        public String zzs() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzh
        public List<zzd> zzt() {
            return this.zzh;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzh
        public boolean zzu() {
            if ((this.zzf & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzh
        public boolean zzv() {
            if ((this.zzf & 2) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzh extends zzhae {
        int zza();

        zzd zzb(int i);

        zzq zzq();

        zzgxk zzr();

        String zzs();

        List<zzd> zzt();

        boolean zzu();

        boolean zzv();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzi extends zzgys<zzi, zza> implements zzj {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        private static final zzi zzf;
        private static volatile zzhal<zzi> zzg;
        private int zzh;
        private String zzi = "";
        private zzgze<zzd> zzj = zzgys.zzbK();
        private int zzk = 1000;
        private int zzl = 1000;
        private int zzm = 1000;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzi, zza> implements zzj {
            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public boolean zzA() {
                return ((zzi) this.zza).zzA();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public boolean zzB() {
                return ((zzi) this.zza).zzB();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public boolean zzC() {
                return ((zzi) this.zza).zzC();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public boolean zzD() {
                return ((zzi) this.zza).zzD();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public int zza() {
                return ((zzi) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public zzd zzb(int i) {
                return ((zzi) this.zza).zzb(i);
            }

            public zza zzc(Iterable<? extends zzd> iterable) {
                zzbu();
                ((zzi) this.zza).zzV(iterable);
                return this;
            }

            public zza zzd(zzd.zzb zzbVar) {
                zzbu();
                ((zzi) this.zza).zzW(zzbVar.zzbr());
                return this;
            }

            public zza zze(zzd zzdVar) {
                zzbu();
                ((zzi) this.zza).zzW(zzdVar);
                return this;
            }

            public zza zzf(int i, zzd.zzb zzbVar) {
                zzbu();
                ((zzi) this.zza).zzX(i, zzbVar.zzbr());
                return this;
            }

            public zza zzg(int i, zzd zzdVar) {
                zzbu();
                ((zzi) this.zza).zzX(i, zzdVar);
                return this;
            }

            public zza zzh() {
                zzbu();
                ((zzi) this.zza).zzY();
                return this;
            }

            public zza zzi() {
                zzbu();
                ((zzi) this.zza).zzZ();
                return this;
            }

            public zza zzj() {
                zzbu();
                ((zzi) this.zza).zzaa();
                return this;
            }

            public zza zzk() {
                zzbu();
                ((zzi) this.zza).zzab();
                return this;
            }

            public zza zzl() {
                zzbu();
                ((zzi) this.zza).zzac();
                return this;
            }

            public zza zzm(int i) {
                zzbu();
                ((zzi) this.zza).zzae(i);
                return this;
            }

            public zza zzn(zzq zzqVar) {
                zzbu();
                ((zzi) this.zza).zzaf(zzqVar);
                return this;
            }

            public zza zzo(String str) {
                zzbu();
                ((zzi) this.zza).zzag(str);
                return this;
            }

            public zza zzp(zzgxk zzgxkVar) {
                zzbu();
                ((zzi) this.zza).zzah(zzgxkVar);
                return this;
            }

            public zza zzq(zzq zzqVar) {
                zzbu();
                ((zzi) this.zza).zzai(zzqVar);
                return this;
            }

            public zza zzr(zzq zzqVar) {
                zzbu();
                ((zzi) this.zza).zzaj(zzqVar);
                return this;
            }

            public zza zzs(int i, zzd.zzb zzbVar) {
                zzbu();
                ((zzi) this.zza).zzak(i, zzbVar.zzbr());
                return this;
            }

            public zza zzt(int i, zzd zzdVar) {
                zzbu();
                ((zzi) this.zza).zzak(i, zzdVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public zzq zzu() {
                return ((zzi) this.zza).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public zzq zzv() {
                return ((zzi) this.zza).zzv();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public zzq zzw() {
                return ((zzi) this.zza).zzw();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public zzgxk zzx() {
                return ((zzi) this.zza).zzx();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public String zzy() {
                return ((zzi) this.zza).zzy();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzj
            public List<zzd> zzz() {
                return Collections.unmodifiableList(((zzi) this.zza).zzz());
            }

            private zza() {
                super(zzi.zzf);
            }
        }

        static {
            zzi zziVar = new zzi();
            zzf = zziVar;
            zzgys.zzbZ(zzi.class, zziVar);
        }

        private zzi() {
        }

        public static zzhal<zzi> zzE() {
            return zzf.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzV(Iterable<? extends zzd> iterable) {
            zzad();
            zzgwt.zzaQ(iterable, this.zzj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzW(zzd zzdVar) {
            zzdVar.getClass();
            zzad();
            this.zzj.add(zzdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzX(int i, zzd zzdVar) {
            zzdVar.getClass();
            zzad();
            this.zzj.add(i, zzdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzY() {
            this.zzh &= -9;
            this.zzm = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzZ() {
            this.zzh &= -2;
            this.zzi = zzh().zzy();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaa() {
            this.zzh &= -5;
            this.zzl = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzab() {
            this.zzh &= -3;
            this.zzk = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzac() {
            this.zzj = zzgys.zzbK();
        }

        private void zzad() {
            zzgze<zzd> zzgzeVar = this.zzj;
            if (!zzgzeVar.zzc()) {
                this.zzj = zzgys.zzbL(zzgzeVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzae(int i) {
            zzad();
            this.zzj.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaf(zzq zzqVar) {
            this.zzm = zzqVar.zza();
            this.zzh |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzag(String str) {
            str.getClass();
            this.zzh |= 1;
            this.zzi = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzah(zzgxk zzgxkVar) {
            this.zzi = zzgxkVar.zzx();
            this.zzh |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzai(zzq zzqVar) {
            this.zzl = zzqVar.zza();
            this.zzh |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaj(zzq zzqVar) {
            this.zzk = zzqVar.zza();
            this.zzh |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzak(int i, zzd zzdVar) {
            zzdVar.getClass();
            zzad();
            this.zzj.set(i, zzdVar);
        }

        public static zza zzd() {
            return (zza) zzf.zzaZ();
        }

        public static zza zzf(zzi zziVar) {
            return (zza) zzf.zzba(zziVar);
        }

        public static zzi zzh() {
            return zzf;
        }

        public static zzi zzi(InputStream inputStream) throws IOException {
            return (zzi) zzgys.zzbk(zzf, inputStream);
        }

        public static zzi zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzi) zzgys.zzbl(zzf, inputStream, zzgycVar);
        }

        public static zzi zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzi) zzgys.zzbm(zzf, zzgxkVar);
        }

        public static zzi zzl(zzgxq zzgxqVar) throws IOException {
            return (zzi) zzgys.zzbn(zzf, zzgxqVar);
        }

        public static zzi zzm(InputStream inputStream) throws IOException {
            return (zzi) zzgys.zzbo(zzf, inputStream);
        }

        public static zzi zzn(ByteBuffer byteBuffer) throws zzgzh {
            return (zzi) zzgys.zzbp(zzf, byteBuffer);
        }

        public static zzi zzo(byte[] bArr) throws zzgzh {
            return (zzi) zzgys.zzbq(zzf, bArr);
        }

        public static zzi zzp(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzi) zzgys.zzbr(zzf, zzgxkVar, zzgycVar);
        }

        public static zzi zzq(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzi) zzgys.zzbs(zzf, zzgxqVar, zzgycVar);
        }

        public static zzi zzr(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzi) zzgys.zzbu(zzf, inputStream, zzgycVar);
        }

        public static zzi zzs(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzi) zzgys.zzbv(zzf, byteBuffer, zzgycVar);
        }

        public static zzi zzt(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzi) zzgys.zzbx(zzf, bArr, zzgycVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public boolean zzA() {
            if ((this.zzh & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public boolean zzB() {
            if ((this.zzh & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public boolean zzC() {
            if ((this.zzh & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public boolean zzD() {
            if ((this.zzh & 2) != 0) {
                return true;
            }
            return false;
        }

        public List<? extends zze> zzF() {
            return this.zzj;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public int zza() {
            return this.zzj.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public zzd zzb(int i) {
            return this.zzj.get(i);
        }

        public zze zzc(int i) {
            return this.zzj.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzi> zzhalVar2 = zzg;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzi.class) {
                                            try {
                                                zzhalVar = zzg;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzf);
                                                    zzg = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzf;
                        }
                        return new zza();
                    }
                    return new zzi();
                }
                return zzgys.zzbQ(zzf, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001\u0004᠌\u0002\u0005᠌\u0003", new Object[]{"zzh", "zzi", "zzj", zzd.class, "zzk", zzq.zze(), "zzl", zzq.zze(), "zzm", zzq.zze()});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public zzq zzu() {
            zzq zzb2 = zzq.zzb(this.zzm);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public zzq zzv() {
            zzq zzb2 = zzq.zzb(this.zzl);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public zzq zzw() {
            zzq zzb2 = zzq.zzb(this.zzk);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public zzgxk zzx() {
            return zzgxk.zzw(this.zzi);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public String zzy() {
            return this.zzi;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzj
        public List<zzd> zzz() {
            return this.zzj;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzj extends zzhae {
        boolean zzA();

        boolean zzB();

        boolean zzC();

        boolean zzD();

        int zza();

        zzd zzb(int i);

        zzq zzu();

        zzq zzv();

        zzq zzw();

        zzgxk zzx();

        String zzy();

        List<zzd> zzz();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzk extends zzgys<zzk, zza> implements zzl {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        private static final zzk zzg;
        private static volatile zzhal<zzk> zzh;
        private int zzi;
        private int zzj;
        private zzap zzk;
        private zzap zzl;
        private zzap zzm;
        private zzgze<zzap> zzn = zzgys.zzbK();
        private int zzo;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzk, zza> implements zzl {
            public zza zzA(zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzas(zzapVar);
                return this;
            }

            public zza zzB(int i) {
                zzbu();
                ((zzk) this.zza).zzat(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public zzap zzC() {
                return ((zzk) this.zza).zzC();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public zzap zzD() {
                return ((zzk) this.zza).zzD();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public zzap zzE(int i) {
                return ((zzk) this.zza).zzE(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public zzap zzF() {
                return ((zzk) this.zza).zzF();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public List<zzap> zzG() {
                return Collections.unmodifiableList(((zzk) this.zza).zzG());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public boolean zzH() {
                return ((zzk) this.zza).zzH();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public boolean zzI() {
                return ((zzk) this.zza).zzI();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public boolean zzJ() {
                return ((zzk) this.zza).zzJ();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public boolean zzK() {
                return ((zzk) this.zza).zzK();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public boolean zzL() {
                return ((zzk) this.zza).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public int zza() {
                return ((zzk) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public int zzb() {
                return ((zzk) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzl
            public int zzc() {
                return ((zzk) this.zza).zzc();
            }

            public zza zzd(zzap.zza zzaVar) {
                zzbu();
                ((zzk) this.zza).zzaa(zzaVar.zzbr());
                return this;
            }

            public zza zze(zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzaa(zzapVar);
                return this;
            }

            public zza zzf(int i, zzap.zza zzaVar) {
                zzbu();
                ((zzk) this.zza).zzab(i, zzaVar.zzbr());
                return this;
            }

            public zza zzg(int i, zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzab(i, zzapVar);
                return this;
            }

            public zza zzh(Iterable<? extends zzap> iterable) {
                zzbu();
                ((zzk) this.zza).zzac(iterable);
                return this;
            }

            public zza zzi() {
                zzbu();
                ((zzk) this.zza).zzad();
                return this;
            }

            public zza zzj() {
                zzbu();
                ((zzk) this.zza).zzae();
                return this;
            }

            public zza zzk() {
                zzbu();
                ((zzk) this.zza).zzaf();
                return this;
            }

            public zza zzl() {
                zzbu();
                ((zzk) this.zza).zzag();
                return this;
            }

            public zza zzm() {
                zzbu();
                ((zzk) this.zza).zzah();
                return this;
            }

            public zza zzn() {
                zzbu();
                ((zzk) this.zza).zzai();
                return this;
            }

            public zza zzo(zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzak(zzapVar);
                return this;
            }

            public zza zzp(zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzal(zzapVar);
                return this;
            }

            public zza zzq(zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzam(zzapVar);
                return this;
            }

            public zza zzr(int i) {
                zzbu();
                ((zzk) this.zza).zzan(i);
                return this;
            }

            public zza zzs(int i) {
                zzbu();
                ((zzk) this.zza).zzao(i);
                return this;
            }

            public zza zzt(zzap.zza zzaVar) {
                zzbu();
                ((zzk) this.zza).zzap(zzaVar.zzbr());
                return this;
            }

            public zza zzu(zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzap(zzapVar);
                return this;
            }

            public zza zzv(zzap.zza zzaVar) {
                zzbu();
                ((zzk) this.zza).zzaq(zzaVar.zzbr());
                return this;
            }

            public zza zzw(zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzaq(zzapVar);
                return this;
            }

            public zza zzx(int i, zzap.zza zzaVar) {
                zzbu();
                ((zzk) this.zza).zzar(i, zzaVar.zzbr());
                return this;
            }

            public zza zzy(int i, zzap zzapVar) {
                zzbu();
                ((zzk) this.zza).zzar(i, zzapVar);
                return this;
            }

            public zza zzz(zzap.zza zzaVar) {
                zzbu();
                ((zzk) this.zza).zzas(zzaVar.zzbr());
                return this;
            }

            private zza() {
                super(zzk.zzg);
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzg = zzkVar;
            zzgys.zzbZ(zzk.class, zzkVar);
        }

        private zzk() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaa(zzap zzapVar) {
            zzapVar.getClass();
            zzaj();
            this.zzn.add(zzapVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzab(int i, zzap zzapVar) {
            zzapVar.getClass();
            zzaj();
            this.zzn.add(i, zzapVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzac(Iterable<? extends zzap> iterable) {
            zzaj();
            zzgwt.zzaQ(iterable, this.zzn);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzad() {
            this.zzi &= -2;
            this.zzj = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzae() {
            this.zzl = null;
            this.zzi &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaf() {
            this.zzk = null;
            this.zzi &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzag() {
            this.zzn = zzgys.zzbK();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzah() {
            this.zzm = null;
            this.zzi &= -9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzai() {
            this.zzi &= -17;
            this.zzo = 0;
        }

        private void zzaj() {
            zzgze<zzap> zzgzeVar = this.zzn;
            if (!zzgzeVar.zzc()) {
                this.zzn = zzgys.zzbL(zzgzeVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzak(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzl;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzl = zzapVar;
            this.zzi |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzal(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzk;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzk = zzapVar;
            this.zzi |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzam(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzm;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzm = zzapVar;
            this.zzi |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzan(int i) {
            zzaj();
            this.zzn.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzao(int i) {
            this.zzi |= 1;
            this.zzj = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzap(zzap zzapVar) {
            zzapVar.getClass();
            this.zzl = zzapVar;
            this.zzi |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaq(zzap zzapVar) {
            zzapVar.getClass();
            this.zzk = zzapVar;
            this.zzi |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzar(int i, zzap zzapVar) {
            zzapVar.getClass();
            zzaj();
            this.zzn.set(i, zzapVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzas(zzap zzapVar) {
            zzapVar.getClass();
            this.zzm = zzapVar;
            this.zzi |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzat(int i) {
            this.zzi |= 16;
            this.zzo = i;
        }

        public static zza zzd() {
            return (zza) zzg.zzaZ();
        }

        public static zza zzf(zzk zzkVar) {
            return (zza) zzg.zzba(zzkVar);
        }

        public static zzk zzh() {
            return zzg;
        }

        public static zzk zzi(InputStream inputStream) throws IOException {
            return (zzk) zzgys.zzbk(zzg, inputStream);
        }

        public static zzk zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzk) zzgys.zzbl(zzg, inputStream, zzgycVar);
        }

        public static zzk zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzk) zzgys.zzbm(zzg, zzgxkVar);
        }

        public static zzk zzl(zzgxq zzgxqVar) throws IOException {
            return (zzk) zzgys.zzbn(zzg, zzgxqVar);
        }

        public static zzk zzm(InputStream inputStream) throws IOException {
            return (zzk) zzgys.zzbo(zzg, inputStream);
        }

        public static zzk zzn(ByteBuffer byteBuffer) throws zzgzh {
            return (zzk) zzgys.zzbp(zzg, byteBuffer);
        }

        public static zzk zzo(byte[] bArr) throws zzgzh {
            return (zzk) zzgys.zzbq(zzg, bArr);
        }

        public static zzk zzp(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzk) zzgys.zzbr(zzg, zzgxkVar, zzgycVar);
        }

        public static zzk zzq(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzk) zzgys.zzbs(zzg, zzgxqVar, zzgycVar);
        }

        public static zzk zzr(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzk) zzgys.zzbu(zzg, inputStream, zzgycVar);
        }

        public static zzk zzs(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzk) zzgys.zzbv(zzg, byteBuffer, zzgycVar);
        }

        public static zzk zzt(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzk) zzgys.zzbx(zzg, bArr, zzgycVar);
        }

        public static zzhal<zzk> zzv() {
            return zzg.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public zzap zzC() {
            zzap zzapVar = this.zzl;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public zzap zzD() {
            zzap zzapVar = this.zzk;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public zzap zzE(int i) {
            return this.zzn.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public zzap zzF() {
            zzap zzapVar = this.zzm;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public List<zzap> zzG() {
            return this.zzn;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public boolean zzH() {
            if ((this.zzi & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public boolean zzI() {
            if ((this.zzi & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public boolean zzJ() {
            if ((this.zzi & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public boolean zzK() {
            if ((this.zzi & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public boolean zzL() {
            if ((this.zzi & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public int zza() {
            return this.zzj;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public int zzb() {
            return this.zzn.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzl
        public int zzc() {
            return this.zzo;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzk> zzhalVar2 = zzh;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzk.class) {
                                            try {
                                                zzhalVar = zzh;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzg);
                                                    zzh = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzg;
                        }
                        return new zza();
                    }
                    return new zzk();
                }
                return zzgys.zzbQ(zzg, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzi", "zzj", "zzk", "zzl", "zzm", "zzn", zzap.class, "zzo"});
            }
            return (byte) 1;
        }

        public zzaq zzu(int i) {
            return this.zzn.get(i);
        }

        public List<? extends zzaq> zzw() {
            return this.zzn;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzl extends zzhae {
        zzap zzC();

        zzap zzD();

        zzap zzE(int i);

        zzap zzF();

        List<zzap> zzG();

        boolean zzH();

        boolean zzI();

        boolean zzJ();

        boolean zzK();

        boolean zzL();

        int zza();

        int zzb();

        int zzc();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzm extends zzgys<zzm, zza> implements zzn {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        public static final int zzh = 8;
        private static final zzm zzi;
        private static volatile zzhal<zzm> zzj;
        private int zzk;
        private zzap zzm;
        private int zzn;
        private zzar zzo;
        private int zzp;
        private String zzl = "";
        private int zzu = 1000;
        private int zzv = 1000;
        private int zzw = 1000;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzm, zza> implements zzn {
            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public zzap zzA() {
                return ((zzm) this.zza).zzA();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public zzar zzB() {
                return ((zzm) this.zza).zzB();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public zzgxk zzC() {
                return ((zzm) this.zza).zzC();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public String zzD() {
                return ((zzm) this.zza).zzD();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public boolean zzE() {
                return ((zzm) this.zza).zzE();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public boolean zzF() {
                return ((zzm) this.zza).zzF();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public boolean zzG() {
                return ((zzm) this.zza).zzG();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public boolean zzH() {
                return ((zzm) this.zza).zzH();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public boolean zzI() {
                return ((zzm) this.zza).zzI();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public boolean zzJ() {
                return ((zzm) this.zza).zzJ();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public boolean zzK() {
                return ((zzm) this.zza).zzK();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public boolean zzL() {
                return ((zzm) this.zza).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public int zza() {
                return ((zzm) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public int zzb() {
                return ((zzm) this.zza).zzb();
            }

            public zza zzc() {
                zzbu();
                ((zzm) this.zza).zzac();
                return this;
            }

            public zza zzd() {
                zzbu();
                ((zzm) this.zza).zzad();
                return this;
            }

            public zza zze() {
                zzbu();
                ((zzm) this.zza).zzae();
                return this;
            }

            public zza zzf() {
                zzbu();
                ((zzm) this.zza).zzaf();
                return this;
            }

            public zza zzg() {
                zzbu();
                ((zzm) this.zza).zzag();
                return this;
            }

            public zza zzh() {
                zzbu();
                ((zzm) this.zza).zzah();
                return this;
            }

            public zza zzi() {
                zzbu();
                ((zzm) this.zza).zzai();
                return this;
            }

            public zza zzj() {
                zzbu();
                ((zzm) this.zza).zzaj();
                return this;
            }

            public zza zzk(zzap zzapVar) {
                zzbu();
                ((zzm) this.zza).zzak(zzapVar);
                return this;
            }

            public zza zzl(zzar zzarVar) {
                zzbu();
                ((zzm) this.zza).zzal(zzarVar);
                return this;
            }

            public zza zzm(String str) {
                zzbu();
                ((zzm) this.zza).zzam(str);
                return this;
            }

            public zza zzn(zzgxk zzgxkVar) {
                zzbu();
                ((zzm) this.zza).zzan(zzgxkVar);
                return this;
            }

            public zza zzo(zzq zzqVar) {
                zzbu();
                ((zzm) this.zza).zzao(zzqVar);
                return this;
            }

            public zza zzp(zzq zzqVar) {
                zzbu();
                ((zzm) this.zza).zzap(zzqVar);
                return this;
            }

            public zza zzq(zzq zzqVar) {
                zzbu();
                ((zzm) this.zza).zzaq(zzqVar);
                return this;
            }

            public zza zzr(zzap.zza zzaVar) {
                zzbu();
                ((zzm) this.zza).zzar(zzaVar.zzbr());
                return this;
            }

            public zza zzs(zzap zzapVar) {
                zzbu();
                ((zzm) this.zza).zzar(zzapVar);
                return this;
            }

            public zza zzt(int i) {
                zzbu();
                ((zzm) this.zza).zzas(i);
                return this;
            }

            public zza zzu(int i) {
                zzbu();
                ((zzm) this.zza).zzat(i);
                return this;
            }

            public zza zzv(zzar.zza zzaVar) {
                zzbu();
                ((zzm) this.zza).zzau(zzaVar.zzbr());
                return this;
            }

            public zza zzw(zzar zzarVar) {
                zzbu();
                ((zzm) this.zza).zzau(zzarVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public zzq zzx() {
                return ((zzm) this.zza).zzx();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public zzq zzy() {
                return ((zzm) this.zza).zzy();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzn
            public zzq zzz() {
                return ((zzm) this.zza).zzz();
            }

            private zza() {
                super(zzm.zzi);
            }
        }

        static {
            zzm zzmVar = new zzm();
            zzi = zzmVar;
            zzgys.zzbZ(zzm.class, zzmVar);
        }

        private zzm() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzac() {
            this.zzk &= -2;
            this.zzl = zzg().zzD();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzad() {
            this.zzk &= -33;
            this.zzu = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzae() {
            this.zzk &= -65;
            this.zzv = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaf() {
            this.zzk &= -129;
            this.zzw = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzag() {
            this.zzm = null;
            this.zzk &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzah() {
            this.zzk &= -17;
            this.zzp = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzai() {
            this.zzk &= -5;
            this.zzn = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaj() {
            this.zzo = null;
            this.zzk &= -9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzak(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzm;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzm = zzapVar;
            this.zzk |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzal(zzar zzarVar) {
            zzarVar.getClass();
            zzar zzarVar2 = this.zzo;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            this.zzo = zzarVar;
            this.zzk |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzam(String str) {
            str.getClass();
            this.zzk |= 1;
            this.zzl = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzan(zzgxk zzgxkVar) {
            this.zzl = zzgxkVar.zzx();
            this.zzk |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzao(zzq zzqVar) {
            this.zzu = zzqVar.zza();
            this.zzk |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzap(zzq zzqVar) {
            this.zzv = zzqVar.zza();
            this.zzk |= 64;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaq(zzq zzqVar) {
            this.zzw = zzqVar.zza();
            this.zzk |= 128;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzar(zzap zzapVar) {
            zzapVar.getClass();
            this.zzm = zzapVar;
            this.zzk |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzas(int i) {
            this.zzk |= 16;
            this.zzp = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzat(int i) {
            this.zzk |= 4;
            this.zzn = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzau(zzar zzarVar) {
            zzarVar.getClass();
            this.zzo = zzarVar;
            this.zzk |= 8;
        }

        public static zza zzc() {
            return (zza) zzi.zzaZ();
        }

        public static zza zzd(zzm zzmVar) {
            return (zza) zzi.zzba(zzmVar);
        }

        public static zzm zzg() {
            return zzi;
        }

        public static zzm zzh(InputStream inputStream) throws IOException {
            return (zzm) zzgys.zzbk(zzi, inputStream);
        }

        public static zzm zzi(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzm) zzgys.zzbl(zzi, inputStream, zzgycVar);
        }

        public static zzm zzj(zzgxk zzgxkVar) throws zzgzh {
            return (zzm) zzgys.zzbm(zzi, zzgxkVar);
        }

        public static zzm zzk(zzgxq zzgxqVar) throws IOException {
            return (zzm) zzgys.zzbn(zzi, zzgxqVar);
        }

        public static zzm zzl(InputStream inputStream) throws IOException {
            return (zzm) zzgys.zzbo(zzi, inputStream);
        }

        public static zzm zzm(ByteBuffer byteBuffer) throws zzgzh {
            return (zzm) zzgys.zzbp(zzi, byteBuffer);
        }

        public static zzm zzn(byte[] bArr) throws zzgzh {
            return (zzm) zzgys.zzbq(zzi, bArr);
        }

        public static zzm zzo(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzm) zzgys.zzbr(zzi, zzgxkVar, zzgycVar);
        }

        public static zzm zzp(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzm) zzgys.zzbs(zzi, zzgxqVar, zzgycVar);
        }

        public static zzm zzq(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzm) zzgys.zzbu(zzi, inputStream, zzgycVar);
        }

        public static zzm zzr(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzm) zzgys.zzbv(zzi, byteBuffer, zzgycVar);
        }

        public static zzm zzs(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzm) zzgys.zzbx(zzi, bArr, zzgycVar);
        }

        public static zzhal<zzm> zzt() {
            return zzi.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public zzap zzA() {
            zzap zzapVar = this.zzm;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public zzar zzB() {
            zzar zzarVar = this.zzo;
            if (zzarVar == null) {
                return zzar.zzh();
            }
            return zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public zzgxk zzC() {
            return zzgxk.zzw(this.zzl);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public String zzD() {
            return this.zzl;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public boolean zzE() {
            if ((this.zzk & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public boolean zzF() {
            if ((this.zzk & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public boolean zzG() {
            if ((this.zzk & 64) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public boolean zzH() {
            if ((this.zzk & 128) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public boolean zzI() {
            if ((this.zzk & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public boolean zzJ() {
            if ((this.zzk & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public boolean zzK() {
            if ((this.zzk & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public boolean zzL() {
            if ((this.zzk & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public int zza() {
            return this.zzp;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public int zzb() {
            return this.zzn;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzm> zzhalVar2 = zzj;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzm.class) {
                                            try {
                                                zzhalVar = zzj;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzi);
                                                    zzj = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzi;
                        }
                        return new zza();
                    }
                    return new zzm();
                }
                return zzgys.zzbQ(zzi, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007", new Object[]{"zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", zzq.zze(), "zzv", zzq.zze(), "zzw", zzq.zze()});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public zzq zzx() {
            zzq zzb2 = zzq.zzb(this.zzu);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public zzq zzy() {
            zzq zzb2 = zzq.zzb(this.zzv);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzn
        public zzq zzz() {
            zzq zzb2 = zzq.zzb(this.zzw);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzn extends zzhae {
        zzap zzA();

        zzar zzB();

        zzgxk zzC();

        String zzD();

        boolean zzE();

        boolean zzF();

        boolean zzG();

        boolean zzH();

        boolean zzI();

        boolean zzJ();

        boolean zzK();

        boolean zzL();

        int zza();

        int zzb();

        zzq zzx();

        zzq zzy();

        zzq zzz();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzo extends zzgys<zzo, zza> implements zzp {
        public static final int zza = 5;
        public static final int zzb = 6;
        public static final int zzc = 7;
        public static final int zzd = 8;
        private static final zzo zze;
        private static volatile zzhal<zzo> zzf;
        private int zzg;
        private int zzh;
        private zzar zzi;
        private String zzj = "";
        private String zzk = "";

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzo, zza> implements zzp {
            public zza zza() {
                zzbu();
                ((zzo) this.zza).zzN();
                return this;
            }

            public zza zzb() {
                zzbu();
                ((zzo) this.zza).zzO();
                return this;
            }

            public zza zzc() {
                zzbu();
                ((zzo) this.zza).zzP();
                return this;
            }

            public zza zzd() {
                zzbu();
                ((zzo) this.zza).zzQ();
                return this;
            }

            public zza zze(zzar zzarVar) {
                zzbu();
                ((zzo) this.zza).zzR(zzarVar);
                return this;
            }

            public zza zzf(String str) {
                zzbu();
                ((zzo) this.zza).zzS(str);
                return this;
            }

            public zza zzg(zzgxk zzgxkVar) {
                zzbu();
                ((zzo) this.zza).zzT(zzgxkVar);
                return this;
            }

            public zza zzh(zzar.zza zzaVar) {
                zzbu();
                ((zzo) this.zza).zzU(zzaVar.zzbr());
                return this;
            }

            public zza zzi(zzar zzarVar) {
                zzbu();
                ((zzo) this.zza).zzU(zzarVar);
                return this;
            }

            public zza zzj(zzb zzbVar) {
                zzbu();
                ((zzo) this.zza).zzV(zzbVar);
                return this;
            }

            public zza zzk(String str) {
                zzbu();
                ((zzo) this.zza).zzW(str);
                return this;
            }

            public zza zzl(zzgxk zzgxkVar) {
                zzbu();
                ((zzo) this.zza).zzX(zzgxkVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public zzb zzm() {
                return ((zzo) this.zza).zzm();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public zzar zzn() {
                return ((zzo) this.zza).zzn();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public zzgxk zzo() {
                return ((zzo) this.zza).zzo();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public zzgxk zzp() {
                return ((zzo) this.zza).zzp();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public String zzq() {
                return ((zzo) this.zza).zzq();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public String zzr() {
                return ((zzo) this.zza).zzr();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public boolean zzs() {
                return ((zzo) this.zza).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public boolean zzt() {
                return ((zzo) this.zza).zzt();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public boolean zzu() {
                return ((zzo) this.zza).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzp
            public boolean zzv() {
                return ((zzo) this.zza).zzv();
            }

            private zza() {
                super(zzo.zze);
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public enum zzb implements zzgyw {
            PLATFORM_UNSPECIFIED(0),
            IOS(1),
            ANDROID(2);
            
            public static final int zzd = 0;
            public static final int zze = 1;
            public static final int zzf = 2;
            private static final zzgyx<zzb> zzg = new zzgyx<zzb>() { // from class: com.google.android.gms.internal.ads.zzbca.zzo.zzb.1
                /* renamed from: zza */
                public zzb zzb(int i) {
                    return zzb.zzb(i);
                }
            };
            private final int zzi;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Proguard */
            /* loaded from: classes4.dex */
            public final class zza implements zzgyy {
                static final zzgyy zza = new zza();

                private zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzgyy
                public boolean zza(int i) {
                    if (zzb.zzb(i) != null) {
                        return true;
                    }
                    return false;
                }
            }

            zzb(int i) {
                this.zzi = i;
            }

            public static zzb zzb(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return ANDROID;
                    }
                    return IOS;
                }
                return PLATFORM_UNSPECIFIED;
            }

            public static zzgyx<zzb> zzd() {
                return zzg;
            }

            public static zzgyy zze() {
                return zza.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return Integer.toString(this.zzi);
            }

            @Override // com.google.android.gms.internal.ads.zzgyw
            public final int zza() {
                return this.zzi;
            }
        }

        static {
            zzo zzoVar = new zzo();
            zze = zzoVar;
            zzgys.zzbZ(zzo.class, zzoVar);
        }

        private zzo() {
        }

        public static zzo zzA(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzo) zzgys.zzbx(zze, bArr, zzgycVar);
        }

        public static zzhal<zzo> zzB() {
            return zze.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzN() {
            this.zzg &= -5;
            this.zzj = zzd().zzq();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzO() {
            this.zzi = null;
            this.zzg &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzP() {
            this.zzg &= -2;
            this.zzh = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzQ() {
            this.zzg &= -9;
            this.zzk = zzd().zzr();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzR(zzar zzarVar) {
            zzarVar.getClass();
            zzar zzarVar2 = this.zzi;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            this.zzi = zzarVar;
            this.zzg |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzS(String str) {
            str.getClass();
            this.zzg |= 4;
            this.zzj = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzT(zzgxk zzgxkVar) {
            this.zzj = zzgxkVar.zzx();
            this.zzg |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzU(zzar zzarVar) {
            zzarVar.getClass();
            this.zzi = zzarVar;
            this.zzg |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzV(zzb zzbVar) {
            this.zzh = zzbVar.zza();
            this.zzg |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzW(String str) {
            str.getClass();
            this.zzg |= 8;
            this.zzk = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzX(zzgxk zzgxkVar) {
            this.zzk = zzgxkVar.zzx();
            this.zzg |= 8;
        }

        public static zza zza() {
            return (zza) zze.zzaZ();
        }

        public static zza zzb(zzo zzoVar) {
            return (zza) zze.zzba(zzoVar);
        }

        public static zzo zzd() {
            return zze;
        }

        public static zzo zzf(InputStream inputStream) throws IOException {
            return (zzo) zzgys.zzbk(zze, inputStream);
        }

        public static zzo zzg(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzo) zzgys.zzbl(zze, inputStream, zzgycVar);
        }

        public static zzo zzh(zzgxk zzgxkVar) throws zzgzh {
            return (zzo) zzgys.zzbm(zze, zzgxkVar);
        }

        public static zzo zzi(zzgxq zzgxqVar) throws IOException {
            return (zzo) zzgys.zzbn(zze, zzgxqVar);
        }

        public static zzo zzj(InputStream inputStream) throws IOException {
            return (zzo) zzgys.zzbo(zze, inputStream);
        }

        public static zzo zzk(ByteBuffer byteBuffer) throws zzgzh {
            return (zzo) zzgys.zzbp(zze, byteBuffer);
        }

        public static zzo zzl(byte[] bArr) throws zzgzh {
            return (zzo) zzgys.zzbq(zze, bArr);
        }

        public static zzo zzw(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzo) zzgys.zzbr(zze, zzgxkVar, zzgycVar);
        }

        public static zzo zzx(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzo) zzgys.zzbs(zze, zzgxqVar, zzgycVar);
        }

        public static zzo zzy(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzo) zzgys.zzbu(zze, inputStream, zzgycVar);
        }

        public static zzo zzz(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzo) zzgys.zzbv(zze, byteBuffer, zzgycVar);
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzo> zzhalVar2 = zzf;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzo.class) {
                                            try {
                                                zzhalVar = zzf;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zze);
                                                    zzf = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zze;
                        }
                        return new zza();
                    }
                    return new zzo();
                }
                return zzgys.zzbQ(zze, "\u0004\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0000\u0005᠌\u0000\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzg", "zzh", zzb.zze(), "zzi", "zzj", "zzk"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public zzb zzm() {
            zzb zzb2 = zzb.zzb(this.zzh);
            if (zzb2 == null) {
                return zzb.PLATFORM_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public zzar zzn() {
            zzar zzarVar = this.zzi;
            if (zzarVar == null) {
                return zzar.zzh();
            }
            return zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public zzgxk zzo() {
            return zzgxk.zzw(this.zzj);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public zzgxk zzp() {
            return zzgxk.zzw(this.zzk);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public String zzq() {
            return this.zzj;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public String zzr() {
            return this.zzk;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public boolean zzs() {
            if ((this.zzg & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public boolean zzt() {
            if ((this.zzg & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public boolean zzu() {
            if ((this.zzg & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzp
        public boolean zzv() {
            if ((this.zzg & 8) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzp extends zzhae {
        zzo.zzb zzm();

        zzar zzn();

        zzgxk zzo();

        zzgxk zzp();

        String zzq();

        String zzr();

        boolean zzs();

        boolean zzt();

        boolean zzu();

        boolean zzv();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public enum zzq implements zzgyw {
        ENUM_FALSE(0),
        ENUM_TRUE(1),
        ENUM_UNKNOWN(1000);
        
        public static final int zzd = 0;
        public static final int zze = 1;
        public static final int zzf = 1000;
        private static final zzgyx<zzq> zzg = new zzgyx<zzq>() { // from class: com.google.android.gms.internal.ads.zzbca.zzq.1
            /* renamed from: zza */
            public zzq zzb(int i) {
                return zzq.zzb(i);
            }
        };
        private final int zzi;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza implements zzgyy {
            static final zzgyy zza = new zza();

            private zza() {
            }

            @Override // com.google.android.gms.internal.ads.zzgyy
            public boolean zza(int i) {
                if (zzq.zzb(i) != null) {
                    return true;
                }
                return false;
            }
        }

        zzq(int i) {
            this.zzi = i;
        }

        public static zzq zzb(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 1000) {
                        return null;
                    }
                    return ENUM_UNKNOWN;
                }
                return ENUM_TRUE;
            }
            return ENUM_FALSE;
        }

        public static zzgyx<zzq> zzd() {
            return zzg;
        }

        public static zzgyy zze() {
            return zza.zza;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return Integer.toString(this.zzi);
        }

        @Override // com.google.android.gms.internal.ads.zzgyw
        public final int zza() {
            return this.zzi;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzr extends zzgys<zzr, zza> implements zzs {
        public static final int zza = 7;
        public static final int zzb = 8;
        public static final int zzc = 9;
        public static final int zzd = 10;
        public static final int zze = 11;
        public static final int zzf = 12;
        public static final int zzg = 13;
        public static final int zzh = 14;
        public static final int zzi = 15;
        public static final int zzj = 16;
        private static final zzgzb<zzd.zza> zzk = new zzgzb<zzd.zza>() { // from class: com.google.android.gms.internal.ads.zzbca.zzr.1
            @Override // com.google.android.gms.internal.ads.zzgzb
            /* renamed from: zza */
            public zzd.zza zzb(int i) {
                zzd.zza zzb2 = zzd.zza.zzb(i);
                if (zzb2 == null) {
                    return zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED;
                }
                return zzb2;
            }
        };
        private static final zzgzb<zzd.zza> zzl = new zzgzb<zzd.zza>() { // from class: com.google.android.gms.internal.ads.zzbca.zzr.2
            @Override // com.google.android.gms.internal.ads.zzgzb
            /* renamed from: zza */
            public zzd.zza zzb(int i) {
                zzd.zza zzb2 = zzd.zza.zzb(i);
                if (zzb2 == null) {
                    return zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED;
                }
                return zzb2;
            }
        };
        private static final zzr zzm;
        private static volatile zzhal<zzr> zzn;
        private int zzA;
        private int zzo;
        private int zzp;
        private zzar zzv;
        private int zzw;
        private int zzz;
        private String zzu = "";
        private String zzx = "";
        private String zzy = "";
        private zzgza zzB = zzgys.zzbG();
        private zzgza zzC = zzgys.zzbG();

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzr, zza> implements zzs {
            public zza zzA(String str) {
                zzbu();
                ((zzr) this.zza).zzch(str);
                return this;
            }

            public zza zzB(zzgxk zzgxkVar) {
                zzbu();
                ((zzr) this.zza).zzci(zzgxkVar);
                return this;
            }

            public zza zzC(String str) {
                zzbu();
                ((zzr) this.zza).zzcj(str);
                return this;
            }

            public zza zzD(zzgxk zzgxkVar) {
                zzbu();
                ((zzr) this.zza).zzck(zzgxkVar);
                return this;
            }

            public zza zzE(int i) {
                zzbu();
                ((zzr) this.zza).zzcl(i);
                return this;
            }

            public zza zzF(zzar.zza zzaVar) {
                zzbu();
                ((zzr) this.zza).zzcm(zzaVar.zzbr());
                return this;
            }

            public zza zzG(zzar zzarVar) {
                zzbu();
                ((zzr) this.zza).zzcm(zzarVar);
                return this;
            }

            public zza zzH(zzo.zzb zzbVar) {
                zzbu();
                ((zzr) this.zza).zzcn(zzbVar);
                return this;
            }

            public zza zzI(int i, zzd.zza zzaVar) {
                zzbu();
                ((zzr) this.zza).zzco(i, zzaVar);
                return this;
            }

            public zza zzJ(int i, zzd.zza zzaVar) {
                zzbu();
                ((zzr) this.zza).zzcp(i, zzaVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zzab.zzc zzK() {
                return ((zzr) this.zza).zzK();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zzar zzL() {
                return ((zzr) this.zza).zzL();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zzgxk zzM() {
                return ((zzr) this.zza).zzM();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zzgxk zzN() {
                return ((zzr) this.zza).zzN();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zzgxk zzO() {
                return ((zzr) this.zza).zzO();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public String zzP() {
                return ((zzr) this.zza).zzP();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public String zzQ() {
                return ((zzr) this.zza).zzQ();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public String zzR() {
                return ((zzr) this.zza).zzR();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public List<zzd.zza> zzS() {
                return ((zzr) this.zza).zzS();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public List<zzd.zza> zzT() {
                return ((zzr) this.zza).zzT();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public boolean zzU() {
                return ((zzr) this.zza).zzU();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public boolean zzV() {
                return ((zzr) this.zza).zzV();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public boolean zzW() {
                return ((zzr) this.zza).zzW();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public boolean zzX() {
                return ((zzr) this.zza).zzX();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public boolean zzY() {
                return ((zzr) this.zza).zzY();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public boolean zzZ() {
                return ((zzr) this.zza).zzZ();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public int zza() {
                return ((zzr) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public boolean zzaa() {
                return ((zzr) this.zza).zzaa();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public boolean zzab() {
                return ((zzr) this.zza).zzab();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public int zzb() {
                return ((zzr) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public int zzc() {
                return ((zzr) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zza.EnumC0040zza zzd() {
                return ((zzr) this.zza).zzd();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zzd.zza zze(int i) {
                return ((zzr) this.zza).zze(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zzd.zza zzf(int i) {
                return ((zzr) this.zza).zzf(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzs
            public zzo.zzb zzg() {
                return ((zzr) this.zza).zzg();
            }

            public zza zzh(Iterable<? extends zzd.zza> iterable) {
                zzbu();
                ((zzr) this.zza).zzas(iterable);
                return this;
            }

            public zza zzi(Iterable<? extends zzd.zza> iterable) {
                zzbu();
                ((zzr) this.zza).zzat(iterable);
                return this;
            }

            public zza zzj(zzd.zza zzaVar) {
                zzbu();
                ((zzr) this.zza).zzau(zzaVar);
                return this;
            }

            public zza zzk(zzd.zza zzaVar) {
                zzbu();
                ((zzr) this.zza).zzav(zzaVar);
                return this;
            }

            public zza zzl() {
                zzbu();
                ((zzr) this.zza).zzaw();
                return this;
            }

            public zza zzm() {
                zzbu();
                ((zzr) this.zza).zzax();
                return this;
            }

            public zza zzn() {
                zzbu();
                ((zzr) this.zza).zzay();
                return this;
            }

            public zza zzo() {
                zzbu();
                ((zzr) this.zza).zzaz();
                return this;
            }

            public zza zzp() {
                zzbu();
                ((zzr) this.zza).zzaA();
                return this;
            }

            public zza zzq() {
                zzbu();
                ((zzr) this.zza).zzaB();
                return this;
            }

            public zza zzr() {
                zzbu();
                ((zzr) this.zza).zzaC();
                return this;
            }

            public zza zzs() {
                zzbu();
                ((zzr) this.zza).zzaD();
                return this;
            }

            public zza zzt() {
                zzbu();
                ((zzr) this.zza).zzaE();
                return this;
            }

            public zza zzu() {
                zzbu();
                ((zzr) this.zza).zzaF();
                return this;
            }

            public zza zzv(zzar zzarVar) {
                zzbu();
                ((zzr) this.zza).zzaI(zzarVar);
                return this;
            }

            public zza zzw(zza.EnumC0040zza enumC0040zza) {
                zzbu();
                ((zzr) this.zza).zzaJ(enumC0040zza);
                return this;
            }

            public zza zzx(String str) {
                zzbu();
                ((zzr) this.zza).zzaK(str);
                return this;
            }

            public zza zzy(zzgxk zzgxkVar) {
                zzbu();
                ((zzr) this.zza).zzcf(zzgxkVar);
                return this;
            }

            public zza zzz(zzab.zzc zzcVar) {
                zzbu();
                ((zzr) this.zza).zzcg(zzcVar);
                return this;
            }

            private zza() {
                super(zzr.zzm);
            }
        }

        static {
            zzr zzrVar = new zzr();
            zzm = zzrVar;
            zzgys.zzbZ(zzr.class, zzrVar);
        }

        private zzr() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaA() {
            this.zzo &= -3;
            this.zzu = zzk().zzR();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaB() {
            this.zzo &= -2;
            this.zzp = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaC() {
            this.zzv = null;
            this.zzo &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaD() {
            this.zzo &= -9;
            this.zzw = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaE() {
            this.zzC = zzgys.zzbG();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaF() {
            this.zzB = zzgys.zzbG();
        }

        private void zzaG() {
            zzgza zzgzaVar = this.zzC;
            if (!zzgzaVar.zzc()) {
                this.zzC = zzgys.zzbH(zzgzaVar);
            }
        }

        private void zzaH() {
            zzgza zzgzaVar = this.zzB;
            if (!zzgzaVar.zzc()) {
                this.zzB = zzgys.zzbH(zzgzaVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaI(zzar zzarVar) {
            zzarVar.getClass();
            zzar zzarVar2 = this.zzv;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            this.zzv = zzarVar;
            this.zzo |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaJ(zza.EnumC0040zza enumC0040zza) {
            this.zzA = enumC0040zza.zza();
            this.zzo |= 128;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaK(String str) {
            str.getClass();
            this.zzo |= 16;
            this.zzx = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzas(Iterable<? extends zzd.zza> iterable) {
            zzaG();
            for (zzd.zza zzaVar : iterable) {
                this.zzC.zzi(zzaVar.zza());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzat(Iterable<? extends zzd.zza> iterable) {
            zzaH();
            for (zzd.zza zzaVar : iterable) {
                this.zzB.zzi(zzaVar.zza());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzau(zzd.zza zzaVar) {
            zzaVar.getClass();
            zzaG();
            this.zzC.zzi(zzaVar.zza());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzav(zzd.zza zzaVar) {
            zzaVar.getClass();
            zzaH();
            this.zzB.zzi(zzaVar.zza());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaw() {
            this.zzo &= -129;
            this.zzA = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzax() {
            this.zzo &= -17;
            this.zzx = zzk().zzP();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzay() {
            this.zzo &= -65;
            this.zzz = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaz() {
            this.zzo &= -33;
            this.zzy = zzk().zzQ();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcf(zzgxk zzgxkVar) {
            this.zzx = zzgxkVar.zzx();
            this.zzo |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcg(zzab.zzc zzcVar) {
            this.zzz = zzcVar.zza();
            this.zzo |= 64;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzch(String str) {
            str.getClass();
            this.zzo |= 32;
            this.zzy = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzci(zzgxk zzgxkVar) {
            this.zzy = zzgxkVar.zzx();
            this.zzo |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcj(String str) {
            str.getClass();
            this.zzo |= 2;
            this.zzu = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzck(zzgxk zzgxkVar) {
            this.zzu = zzgxkVar.zzx();
            this.zzo |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcl(int i) {
            this.zzo |= 1;
            this.zzp = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcm(zzar zzarVar) {
            zzarVar.getClass();
            this.zzv = zzarVar;
            this.zzo |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcn(zzo.zzb zzbVar) {
            this.zzw = zzbVar.zza();
            this.zzo |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzco(int i, zzd.zza zzaVar) {
            zzaVar.getClass();
            zzaG();
            this.zzC.zze(i, zzaVar.zza());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcp(int i, zzd.zza zzaVar) {
            zzaVar.getClass();
            zzaH();
            this.zzB.zze(i, zzaVar.zza());
        }

        public static zza zzh() {
            return (zza) zzm.zzaZ();
        }

        public static zza zzi(zzr zzrVar) {
            return (zza) zzm.zzba(zzrVar);
        }

        public static zzr zzk() {
            return zzm;
        }

        public static zzr zzl(InputStream inputStream) throws IOException {
            return (zzr) zzgys.zzbk(zzm, inputStream);
        }

        public static zzr zzm(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzr) zzgys.zzbl(zzm, inputStream, zzgycVar);
        }

        public static zzr zzn(zzgxk zzgxkVar) throws zzgzh {
            return (zzr) zzgys.zzbm(zzm, zzgxkVar);
        }

        public static zzr zzo(zzgxq zzgxqVar) throws IOException {
            return (zzr) zzgys.zzbn(zzm, zzgxqVar);
        }

        public static zzr zzp(InputStream inputStream) throws IOException {
            return (zzr) zzgys.zzbo(zzm, inputStream);
        }

        public static zzr zzq(ByteBuffer byteBuffer) throws zzgzh {
            return (zzr) zzgys.zzbp(zzm, byteBuffer);
        }

        public static zzr zzr(byte[] bArr) throws zzgzh {
            return (zzr) zzgys.zzbq(zzm, bArr);
        }

        public static zzr zzs(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzr) zzgys.zzbr(zzm, zzgxkVar, zzgycVar);
        }

        public static zzr zzt(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzr) zzgys.zzbs(zzm, zzgxqVar, zzgycVar);
        }

        public static zzr zzu(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzr) zzgys.zzbu(zzm, inputStream, zzgycVar);
        }

        public static zzr zzv(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzr) zzgys.zzbv(zzm, byteBuffer, zzgycVar);
        }

        public static zzr zzw(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzr) zzgys.zzbx(zzm, bArr, zzgycVar);
        }

        public static zzhal<zzr> zzx() {
            return zzm.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zzab.zzc zzK() {
            zzab.zzc zzb2 = zzab.zzc.zzb(this.zzz);
            if (zzb2 == null) {
                return zzab.zzc.NETWORKTYPE_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zzar zzL() {
            zzar zzarVar = this.zzv;
            if (zzarVar == null) {
                return zzar.zzh();
            }
            return zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zzgxk zzM() {
            return zzgxk.zzw(this.zzx);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zzgxk zzN() {
            return zzgxk.zzw(this.zzy);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zzgxk zzO() {
            return zzgxk.zzw(this.zzu);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public String zzP() {
            return this.zzx;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public String zzQ() {
            return this.zzy;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public String zzR() {
            return this.zzu;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public List<zzd.zza> zzS() {
            return new zzgzc(this.zzC, zzl);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public List<zzd.zza> zzT() {
            return new zzgzc(this.zzB, zzk);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public boolean zzU() {
            if ((this.zzo & 128) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public boolean zzV() {
            if ((this.zzo & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public boolean zzW() {
            if ((this.zzo & 64) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public boolean zzX() {
            if ((this.zzo & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public boolean zzY() {
            if ((this.zzo & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public boolean zzZ() {
            if ((this.zzo & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public int zza() {
            return this.zzp;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public boolean zzaa() {
            if ((this.zzo & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public boolean zzab() {
            if ((this.zzo & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public int zzb() {
            return this.zzC.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public int zzc() {
            return this.zzB.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zza.EnumC0040zza zzd() {
            zza.EnumC0040zza zzb2 = zza.EnumC0040zza.zzb(this.zzA);
            if (zzb2 == null) {
                return zza.EnumC0040zza.AD_INITIATER_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzr> zzhalVar2 = zzn;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzr.class) {
                                            try {
                                                zzhalVar = zzn;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzm);
                                                    zzn = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzm;
                        }
                        return new zza();
                    }
                    return new zzr();
                }
                return zzgys.zzbQ(zzm, "\u0004\n\u0000\u0001\u0007\u0010\n\u0000\u0002\u0000\u0007င\u0000\bဈ\u0001\tဉ\u0002\n᠌\u0003\u000bဈ\u0004\fဈ\u0005\r᠌\u0006\u000e᠌\u0007\u000fࠞ\u0010ࠞ", new Object[]{"zzo", "zzp", "zzu", "zzv", "zzw", zzo.zzb.zze(), "zzx", "zzy", "zzz", zzab.zzc.zze(), "zzA", zza.EnumC0040zza.zze(), "zzB", zzd.zza.zze(), "zzC", zzd.zza.zze()});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zzd.zza zze(int i) {
            zzd.zza zzb2 = zzd.zza.zzb(this.zzC.zzd(i));
            if (zzb2 == null) {
                return zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zzd.zza zzf(int i) {
            zzd.zza zzb2 = zzd.zza.zzb(this.zzB.zzd(i));
            if (zzb2 == null) {
                return zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzs
        public zzo.zzb zzg() {
            zzo.zzb zzb2 = zzo.zzb.zzb(this.zzw);
            if (zzb2 == null) {
                return zzo.zzb.PLATFORM_UNSPECIFIED;
            }
            return zzb2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzs extends zzhae {
        zzab.zzc zzK();

        zzar zzL();

        zzgxk zzM();

        zzgxk zzN();

        zzgxk zzO();

        String zzP();

        String zzQ();

        String zzR();

        List<zzd.zza> zzS();

        List<zzd.zza> zzT();

        boolean zzU();

        boolean zzV();

        boolean zzW();

        boolean zzX();

        boolean zzY();

        boolean zzZ();

        int zza();

        boolean zzaa();

        boolean zzab();

        int zzb();

        int zzc();

        zza.EnumC0040zza zzd();

        zzd.zza zze(int i);

        zzd.zza zzf(int i);

        zzo.zzb zzg();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzt extends zzgys<zzt, zza> implements zzu {
        public static final int zza = 9;
        public static final int zzb = 10;
        public static final int zzc = 11;
        public static final int zzd = 12;
        public static final int zze = 13;
        public static final int zzf = 14;
        public static final int zzg = 15;
        public static final int zzh = 16;
        public static final int zzi = 17;
        public static final int zzj = 18;
        public static final int zzk = 19;
        public static final int zzl = 20;
        public static final int zzm = 21;
        private static final zzt zzn;
        private static volatile zzhal<zzt> zzo;
        private zzm zzA;
        private zzo zzB;
        private zzab zzC;
        private zza zzD;
        private zzaf zzE;
        private zzbl zzF;
        private zzb zzG;
        private int zzp;
        private int zzu;
        private int zzw;
        private zzar zzy;
        private String zzv = "";
        private int zzx = 1000;
        private zzgzd zzz = zzgys.zzbI();

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzt, zza> implements zzu {
            public zza zzA(zzm zzmVar) {
                zzbu();
                ((zzt) this.zza).zzcq(zzmVar);
                return this;
            }

            public zza zzB(zzo zzoVar) {
                zzbu();
                ((zzt) this.zza).zzcr(zzoVar);
                return this;
            }

            public zza zzC(zzab zzabVar) {
                zzbu();
                ((zzt) this.zza).zzcs(zzabVar);
                return this;
            }

            public zza zzD(zzaf zzafVar) {
                zzbu();
                ((zzt) this.zza).zzct(zzafVar);
                return this;
            }

            public zza zzE(zzar zzarVar) {
                zzbu();
                ((zzt) this.zza).zzcu(zzarVar);
                return this;
            }

            public zza zzF(zzbl zzblVar) {
                zzbu();
                ((zzt) this.zza).zzcv(zzblVar);
                return this;
            }

            public zza zzG(zza.zzb zzbVar) {
                zzbu();
                ((zzt) this.zza).zzcw(zzbVar.zzbr());
                return this;
            }

            public zza zzH(zza zzaVar) {
                zzbu();
                ((zzt) this.zza).zzcw(zzaVar);
                return this;
            }

            public zza zzI(zzb.zzc zzcVar) {
                zzbu();
                ((zzt) this.zza).zzcx(zzcVar.zzbr());
                return this;
            }

            public zza zzJ(zzb zzbVar) {
                zzbu();
                ((zzt) this.zza).zzcx(zzbVar);
                return this;
            }

            public zza zzK(zzm.zza zzaVar) {
                zzbu();
                ((zzt) this.zza).zzcy(zzaVar.zzbr());
                return this;
            }

            public zza zzL(zzm zzmVar) {
                zzbu();
                ((zzt) this.zza).zzcy(zzmVar);
                return this;
            }

            public zza zzM(zzo.zza zzaVar) {
                zzbu();
                ((zzt) this.zza).zzcz(zzaVar.zzbr());
                return this;
            }

            public zza zzN(zzo zzoVar) {
                zzbu();
                ((zzt) this.zza).zzcz(zzoVar);
                return this;
            }

            public zza zzO(String str) {
                zzbu();
                ((zzt) this.zza).zzcA(str);
                return this;
            }

            public zza zzP(zzgxk zzgxkVar) {
                zzbu();
                ((zzt) this.zza).zzcB(zzgxkVar);
                return this;
            }

            public zza zzQ(int i, long j) {
                zzbu();
                ((zzt) this.zza).zzcC(i, j);
                return this;
            }

            public zza zzR(zzq zzqVar) {
                zzbu();
                ((zzt) this.zza).zzcD(zzqVar);
                return this;
            }

            public zza zzS(int i) {
                zzbu();
                ((zzt) this.zza).zzcE(i);
                return this;
            }

            public zza zzT(zzab.zza zzaVar) {
                zzbu();
                ((zzt) this.zza).zzcF(zzaVar.zzbr());
                return this;
            }

            public zza zzU(zzab zzabVar) {
                zzbu();
                ((zzt) this.zza).zzcF(zzabVar);
                return this;
            }

            public zza zzV(zzaf.zzc zzcVar) {
                zzbu();
                ((zzt) this.zza).zzcG(zzcVar.zzbr());
                return this;
            }

            public zza zzW(zzaf zzafVar) {
                zzbu();
                ((zzt) this.zza).zzcG(zzafVar);
                return this;
            }

            public zza zzX(zzar.zza zzaVar) {
                zzbu();
                ((zzt) this.zza).zzcH(zzaVar.zzbr());
                return this;
            }

            public zza zzY(zzar zzarVar) {
                zzbu();
                ((zzt) this.zza).zzcH(zzarVar);
                return this;
            }

            public zza zzZ(int i) {
                zzbu();
                ((zzt) this.zza).zzcI(i);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public int zza() {
                return ((zzt) this.zza).zza();
            }

            public zza zzaa(zzbl.zza zzaVar) {
                zzbu();
                ((zzt) this.zza).zzcJ(zzaVar.zzbr());
                return this;
            }

            public zza zzab(zzbl zzblVar) {
                zzbu();
                ((zzt) this.zza).zzcJ(zzblVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzab zzac() {
                return ((zzt) this.zza).zzac();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzaf zzad() {
                return ((zzt) this.zza).zzad();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzar zzae() {
                return ((zzt) this.zza).zzae();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzbl zzaf() {
                return ((zzt) this.zza).zzaf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzgxk zzag() {
                return ((zzt) this.zza).zzag();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public String zzah() {
                return ((zzt) this.zza).zzah();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public List<Long> zzai() {
                return Collections.unmodifiableList(((zzt) this.zza).zzai());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzaj() {
                return ((zzt) this.zza).zzaj();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzak() {
                return ((zzt) this.zza).zzak();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzal() {
                return ((zzt) this.zza).zzal();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzam() {
                return ((zzt) this.zza).zzam();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzan() {
                return ((zzt) this.zza).zzan();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzao() {
                return ((zzt) this.zza).zzao();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzap() {
                return ((zzt) this.zza).zzap();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzaq() {
                return ((zzt) this.zza).zzaq();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzar() {
                return ((zzt) this.zza).zzar();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzas() {
                return ((zzt) this.zza).zzas();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzat() {
                return ((zzt) this.zza).zzat();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public boolean zzau() {
                return ((zzt) this.zza).zzau();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public int zzb() {
                return ((zzt) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public int zzc() {
                return ((zzt) this.zza).zzc();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public long zzd(int i) {
                return ((zzt) this.zza).zzd(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zza zze() {
                return ((zzt) this.zza).zze();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzb zzf() {
                return ((zzt) this.zza).zzf();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzm zzg() {
                return ((zzt) this.zza).zzg();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzo zzh() {
                return ((zzt) this.zza).zzh();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzu
            public zzq zzi() {
                return ((zzt) this.zza).zzi();
            }

            public zza zzj(Iterable<? extends Long> iterable) {
                zzbu();
                ((zzt) this.zza).zzaE(iterable);
                return this;
            }

            public zza zzk(long j) {
                zzbu();
                ((zzt) this.zza).zzaF(j);
                return this;
            }

            public zza zzl() {
                zzbu();
                ((zzt) this.zza).zzaG();
                return this;
            }

            public zza zzm() {
                zzbu();
                ((zzt) this.zza).zzaH();
                return this;
            }

            public zza zzn() {
                zzbu();
                ((zzt) this.zza).zzaI();
                return this;
            }

            public zza zzo() {
                zzbu();
                ((zzt) this.zza).zzaJ();
                return this;
            }

            public zza zzp() {
                zzbu();
                ((zzt) this.zza).zzaK();
                return this;
            }

            public zza zzq() {
                zzbu();
                ((zzt) this.zza).zzcf();
                return this;
            }

            public zza zzr() {
                zzbu();
                ((zzt) this.zza).zzcg();
                return this;
            }

            public zza zzs() {
                zzbu();
                ((zzt) this.zza).zzch();
                return this;
            }

            public zza zzt() {
                zzbu();
                ((zzt) this.zza).zzci();
                return this;
            }

            public zza zzu() {
                zzbu();
                ((zzt) this.zza).zzcj();
                return this;
            }

            public zza zzv() {
                zzbu();
                ((zzt) this.zza).zzck();
                return this;
            }

            public zza zzw() {
                zzbu();
                ((zzt) this.zza).zzcl();
                return this;
            }

            public zza zzx() {
                zzbu();
                ((zzt) this.zza).zzcm();
                return this;
            }

            public zza zzy(zza zzaVar) {
                zzbu();
                ((zzt) this.zza).zzco(zzaVar);
                return this;
            }

            public zza zzz(zzb zzbVar) {
                zzbu();
                ((zzt) this.zza).zzcp(zzbVar);
                return this;
            }

            private zza() {
                super(zzt.zzn);
            }
        }

        static {
            zzt zztVar = new zzt();
            zzn = zztVar;
            zzgys.zzbZ(zzt.class, zztVar);
        }

        private zzt() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaE(Iterable<? extends Long> iterable) {
            zzcn();
            zzgwt.zzaQ(iterable, this.zzz);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaF(long j) {
            zzcn();
            this.zzz.zzg(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaG() {
            this.zzD = null;
            this.zzp &= -257;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaH() {
            this.zzG = null;
            this.zzp &= -2049;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaI() {
            this.zzA = null;
            this.zzp &= -33;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaJ() {
            this.zzB = null;
            this.zzp &= -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaK() {
            this.zzp &= -3;
            this.zzv = zzm().zzah();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcA(String str) {
            str.getClass();
            this.zzp |= 2;
            this.zzv = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcB(zzgxk zzgxkVar) {
            this.zzv = zzgxkVar.zzx();
            this.zzp |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcC(int i, long j) {
            zzcn();
            this.zzz.zzd(i, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcD(zzq zzqVar) {
            this.zzx = zzqVar.zza();
            this.zzp |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcE(int i) {
            this.zzp |= 1;
            this.zzu = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcF(zzab zzabVar) {
            zzabVar.getClass();
            this.zzC = zzabVar;
            this.zzp |= 128;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcG(zzaf zzafVar) {
            zzafVar.getClass();
            this.zzE = zzafVar;
            this.zzp |= 512;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcH(zzar zzarVar) {
            zzarVar.getClass();
            this.zzy = zzarVar;
            this.zzp |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcI(int i) {
            this.zzp |= 4;
            this.zzw = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcJ(zzbl zzblVar) {
            zzblVar.getClass();
            this.zzF = zzblVar;
            this.zzp |= 1024;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcf() {
            this.zzz = zzgys.zzbI();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcg() {
            this.zzp &= -9;
            this.zzx = 1000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzch() {
            this.zzp &= -2;
            this.zzu = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzci() {
            this.zzC = null;
            this.zzp &= -129;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcj() {
            this.zzE = null;
            this.zzp &= -513;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzck() {
            this.zzy = null;
            this.zzp &= -17;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcl() {
            this.zzp &= -5;
            this.zzw = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcm() {
            this.zzF = null;
            this.zzp &= -1025;
        }

        private void zzcn() {
            zzgzd zzgzdVar = this.zzz;
            if (!zzgzdVar.zzc()) {
                this.zzz = zzgys.zzbJ(zzgzdVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzco(zza zzaVar) {
            zzaVar.getClass();
            zza zzaVar2 = this.zzD;
            if (zzaVar2 != null && zzaVar2 != zza.zzh()) {
                zza.zzb zzf2 = zza.zzf(zzaVar2);
                zzf2.zzbj(zzaVar);
                zzaVar = zzf2.zzbs();
            }
            this.zzD = zzaVar;
            this.zzp |= 256;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcp(zzb zzbVar) {
            zzbVar.getClass();
            zzb zzbVar2 = this.zzG;
            if (zzbVar2 != null && zzbVar2 != zzb.zzh()) {
                zzb.zzc zzf2 = zzb.zzf(zzbVar2);
                zzf2.zzbj(zzbVar);
                zzbVar = zzf2.zzbs();
            }
            this.zzG = zzbVar;
            this.zzp |= 2048;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcq(zzm zzmVar) {
            zzmVar.getClass();
            zzm zzmVar2 = this.zzA;
            if (zzmVar2 != null && zzmVar2 != zzm.zzg()) {
                zzm.zza zzd2 = zzm.zzd(zzmVar2);
                zzd2.zzbj(zzmVar);
                zzmVar = zzd2.zzbs();
            }
            this.zzA = zzmVar;
            this.zzp |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcr(zzo zzoVar) {
            zzoVar.getClass();
            zzo zzoVar2 = this.zzB;
            if (zzoVar2 != null && zzoVar2 != zzo.zzd()) {
                zzo.zza zzb2 = zzo.zzb(zzoVar2);
                zzb2.zzbj(zzoVar);
                zzoVar = zzb2.zzbs();
            }
            this.zzB = zzoVar;
            this.zzp |= 64;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcs(zzab zzabVar) {
            zzabVar.getClass();
            zzab zzabVar2 = this.zzC;
            if (zzabVar2 != null && zzabVar2 != zzab.zzd()) {
                zzab.zza zzb2 = zzab.zzb(zzabVar2);
                zzb2.zzbj(zzabVar);
                zzabVar = zzb2.zzbs();
            }
            this.zzC = zzabVar;
            this.zzp |= 128;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzct(zzaf zzafVar) {
            zzafVar.getClass();
            zzaf zzafVar2 = this.zzE;
            if (zzafVar2 != null && zzafVar2 != zzaf.zzl()) {
                zzaf.zzc zzj2 = zzaf.zzj(zzafVar2);
                zzj2.zzbj(zzafVar);
                zzafVar = zzj2.zzbs();
            }
            this.zzE = zzafVar;
            this.zzp |= 512;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcu(zzar zzarVar) {
            zzarVar.getClass();
            zzar zzarVar2 = this.zzy;
            if (zzarVar2 != null && zzarVar2 != zzar.zzh()) {
                zzar.zza zzf2 = zzar.zzf(zzarVar2);
                zzf2.zzbj(zzarVar);
                zzarVar = zzf2.zzbs();
            }
            this.zzy = zzarVar;
            this.zzp |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcv(zzbl zzblVar) {
            zzblVar.getClass();
            zzbl zzblVar2 = this.zzF;
            if (zzblVar2 != null && zzblVar2 != zzbl.zzi()) {
                zzbl.zza zzc2 = zzbl.zzc(zzblVar2);
                zzc2.zzbj(zzblVar);
                zzblVar = zzc2.zzbs();
            }
            this.zzF = zzblVar;
            this.zzp |= 1024;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcw(zza zzaVar) {
            zzaVar.getClass();
            this.zzD = zzaVar;
            this.zzp |= 256;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcx(zzb zzbVar) {
            zzbVar.getClass();
            this.zzG = zzbVar;
            this.zzp |= 2048;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcy(zzm zzmVar) {
            zzmVar.getClass();
            this.zzA = zzmVar;
            this.zzp |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzcz(zzo zzoVar) {
            zzoVar.getClass();
            this.zzB = zzoVar;
            this.zzp |= 64;
        }

        public static zza zzj() {
            return (zza) zzn.zzaZ();
        }

        public static zza zzk(zzt zztVar) {
            return (zza) zzn.zzba(zztVar);
        }

        public static zzt zzm() {
            return zzn;
        }

        public static zzt zzn(InputStream inputStream) throws IOException {
            return (zzt) zzgys.zzbk(zzn, inputStream);
        }

        public static zzt zzo(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzt) zzgys.zzbl(zzn, inputStream, zzgycVar);
        }

        public static zzt zzp(zzgxk zzgxkVar) throws zzgzh {
            return (zzt) zzgys.zzbm(zzn, zzgxkVar);
        }

        public static zzt zzq(zzgxq zzgxqVar) throws IOException {
            return (zzt) zzgys.zzbn(zzn, zzgxqVar);
        }

        public static zzt zzr(InputStream inputStream) throws IOException {
            return (zzt) zzgys.zzbo(zzn, inputStream);
        }

        public static zzt zzs(ByteBuffer byteBuffer) throws zzgzh {
            return (zzt) zzgys.zzbp(zzn, byteBuffer);
        }

        public static zzt zzt(byte[] bArr) throws zzgzh {
            return (zzt) zzgys.zzbq(zzn, bArr);
        }

        public static zzt zzu(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzt) zzgys.zzbr(zzn, zzgxkVar, zzgycVar);
        }

        public static zzt zzv(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzt) zzgys.zzbs(zzn, zzgxqVar, zzgycVar);
        }

        public static zzt zzw(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzt) zzgys.zzbu(zzn, inputStream, zzgycVar);
        }

        public static zzt zzx(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzt) zzgys.zzbv(zzn, byteBuffer, zzgycVar);
        }

        public static zzt zzy(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzt) zzgys.zzbx(zzn, bArr, zzgycVar);
        }

        public static zzhal<zzt> zzz() {
            return zzn.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public int zza() {
            return this.zzz.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzab zzac() {
            zzab zzabVar = this.zzC;
            if (zzabVar == null) {
                return zzab.zzd();
            }
            return zzabVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzaf zzad() {
            zzaf zzafVar = this.zzE;
            if (zzafVar == null) {
                return zzaf.zzl();
            }
            return zzafVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzar zzae() {
            zzar zzarVar = this.zzy;
            if (zzarVar == null) {
                return zzar.zzh();
            }
            return zzarVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzbl zzaf() {
            zzbl zzblVar = this.zzF;
            if (zzblVar == null) {
                return zzbl.zzi();
            }
            return zzblVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzgxk zzag() {
            return zzgxk.zzw(this.zzv);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public String zzah() {
            return this.zzv;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public List<Long> zzai() {
            return this.zzz;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzaj() {
            if ((this.zzp & 256) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzak() {
            if ((this.zzp & 2048) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzal() {
            if ((this.zzp & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzam() {
            if ((this.zzp & 64) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzan() {
            if ((this.zzp & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzao() {
            if ((this.zzp & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzap() {
            if ((this.zzp & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzaq() {
            if ((this.zzp & 128) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzar() {
            if ((this.zzp & 512) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzas() {
            if ((this.zzp & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzat() {
            if ((this.zzp & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public boolean zzau() {
            if ((this.zzp & 1024) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public int zzb() {
            return this.zzu;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public int zzc() {
            return this.zzw;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public long zzd(int i) {
            return this.zzz.zza(i);
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzt> zzhalVar2 = zzo;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzt.class) {
                                            try {
                                                zzhalVar = zzo;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzn);
                                                    zzo = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzn;
                        }
                        return new zza();
                    }
                    return new zzt();
                }
                return zzgys.zzbQ(zzn, "\u0004\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\f᠌\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzp", "zzu", "zzv", "zzw", "zzx", zzq.zze(), "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zza zze() {
            zza zzaVar = this.zzD;
            if (zzaVar == null) {
                return zza.zzh();
            }
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzb zzf() {
            zzb zzbVar = this.zzG;
            if (zzbVar == null) {
                return zzb.zzh();
            }
            return zzbVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzm zzg() {
            zzm zzmVar = this.zzA;
            if (zzmVar == null) {
                return zzm.zzg();
            }
            return zzmVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzo zzh() {
            zzo zzoVar = this.zzB;
            if (zzoVar == null) {
                return zzo.zzd();
            }
            return zzoVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzu
        public zzq zzi() {
            zzq zzb2 = zzq.zzb(this.zzx);
            if (zzb2 == null) {
                return zzq.ENUM_UNKNOWN;
            }
            return zzb2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzu extends zzhae {
        int zza();

        zzab zzac();

        zzaf zzad();

        zzar zzae();

        zzbl zzaf();

        zzgxk zzag();

        String zzah();

        List<Long> zzai();

        boolean zzaj();

        boolean zzak();

        boolean zzal();

        boolean zzam();

        boolean zzan();

        boolean zzao();

        boolean zzap();

        boolean zzaq();

        boolean zzar();

        boolean zzas();

        boolean zzat();

        boolean zzau();

        int zzb();

        int zzc();

        long zzd(int i);

        zza zze();

        zzb zzf();

        zzm zzg();

        zzo zzh();

        zzq zzi();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzv extends zzgys<zzv, zza> implements zzw {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzv zze;
        private static volatile zzhal<zzv> zzf;
        private int zzg;
        private int zzi;
        private zzap zzk;
        private String zzh = "";
        private zzgza zzj = zzgys.zzbG();

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzv, zza> implements zzw {
            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public int zza(int i) {
                return ((zzv) this.zza).zza(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public int zzb() {
                return ((zzv) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public zzq zzc() {
                return ((zzv) this.zza).zzc();
            }

            public zza zzd(Iterable<? extends Integer> iterable) {
                zzbu();
                ((zzv) this.zza).zzO(iterable);
                return this;
            }

            public zza zze(int i) {
                zzbu();
                ((zzv) this.zza).zzP(i);
                return this;
            }

            public zza zzf() {
                zzbu();
                ((zzv) this.zza).zzQ();
                return this;
            }

            public zza zzg() {
                zzbu();
                ((zzv) this.zza).zzR();
                return this;
            }

            public zza zzh() {
                zzbu();
                ((zzv) this.zza).zzS();
                return this;
            }

            public zza zzi() {
                zzbu();
                ((zzv) this.zza).zzT();
                return this;
            }

            public zza zzj(zzap zzapVar) {
                zzbu();
                ((zzv) this.zza).zzV(zzapVar);
                return this;
            }

            public zza zzk(String str) {
                zzbu();
                ((zzv) this.zza).zzW(str);
                return this;
            }

            public zza zzl(zzgxk zzgxkVar) {
                zzbu();
                ((zzv) this.zza).zzX(zzgxkVar);
                return this;
            }

            public zza zzm(zzap.zza zzaVar) {
                zzbu();
                ((zzv) this.zza).zzY(zzaVar.zzbr());
                return this;
            }

            public zza zzn(zzap zzapVar) {
                zzbu();
                ((zzv) this.zza).zzY(zzapVar);
                return this;
            }

            public zza zzo(zzq zzqVar) {
                zzbu();
                ((zzv) this.zza).zzZ(zzqVar);
                return this;
            }

            public zza zzp(int i, int i2) {
                zzbu();
                ((zzv) this.zza).zzaa(i, i2);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public zzap zzq() {
                return ((zzv) this.zza).zzq();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public zzgxk zzr() {
                return ((zzv) this.zza).zzr();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public String zzs() {
                return ((zzv) this.zza).zzs();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public List<Integer> zzt() {
                return Collections.unmodifiableList(((zzv) this.zza).zzt());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public boolean zzu() {
                return ((zzv) this.zza).zzu();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public boolean zzv() {
                return ((zzv) this.zza).zzv();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzw
            public boolean zzw() {
                return ((zzv) this.zza).zzw();
            }

            private zza() {
                super(zzv.zze);
            }
        }

        static {
            zzv zzvVar = new zzv();
            zze = zzvVar;
            zzgys.zzbZ(zzv.class, zzvVar);
        }

        private zzv() {
        }

        public static zzv zzA(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzv) zzgys.zzbx(zze, bArr, zzgycVar);
        }

        public static zzhal<zzv> zzB() {
            return zze.zzbN();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzO(Iterable<? extends Integer> iterable) {
            zzU();
            zzgwt.zzaQ(iterable, this.zzj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzP(int i) {
            zzU();
            this.zzj.zzi(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzQ() {
            this.zzg &= -2;
            this.zzh = zzh().zzs();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzR() {
            this.zzk = null;
            this.zzg &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzS() {
            this.zzg &= -3;
            this.zzi = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzT() {
            this.zzj = zzgys.zzbG();
        }

        private void zzU() {
            zzgza zzgzaVar = this.zzj;
            if (!zzgzaVar.zzc()) {
                this.zzj = zzgys.zzbH(zzgzaVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzV(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzk;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzk = zzapVar;
            this.zzg |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzW(String str) {
            str.getClass();
            this.zzg |= 1;
            this.zzh = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzX(zzgxk zzgxkVar) {
            this.zzh = zzgxkVar.zzx();
            this.zzg |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzY(zzap zzapVar) {
            zzapVar.getClass();
            this.zzk = zzapVar;
            this.zzg |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzZ(zzq zzqVar) {
            this.zzi = zzqVar.zza();
            this.zzg |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaa(int i, int i2) {
            zzU();
            this.zzj.zze(i, i2);
        }

        public static zza zzd() {
            return (zza) zze.zzaZ();
        }

        public static zza zzf(zzv zzvVar) {
            return (zza) zze.zzba(zzvVar);
        }

        public static zzv zzh() {
            return zze;
        }

        public static zzv zzi(InputStream inputStream) throws IOException {
            return (zzv) zzgys.zzbk(zze, inputStream);
        }

        public static zzv zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzv) zzgys.zzbl(zze, inputStream, zzgycVar);
        }

        public static zzv zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzv) zzgys.zzbm(zze, zzgxkVar);
        }

        public static zzv zzl(zzgxq zzgxqVar) throws IOException {
            return (zzv) zzgys.zzbn(zze, zzgxqVar);
        }

        public static zzv zzm(InputStream inputStream) throws IOException {
            return (zzv) zzgys.zzbo(zze, inputStream);
        }

        public static zzv zzn(ByteBuffer byteBuffer) throws zzgzh {
            return (zzv) zzgys.zzbp(zze, byteBuffer);
        }

        public static zzv zzo(byte[] bArr) throws zzgzh {
            return (zzv) zzgys.zzbq(zze, bArr);
        }

        public static zzv zzp(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzv) zzgys.zzbr(zze, zzgxkVar, zzgycVar);
        }

        public static zzv zzx(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzv) zzgys.zzbs(zze, zzgxqVar, zzgycVar);
        }

        public static zzv zzy(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzv) zzgys.zzbu(zze, inputStream, zzgycVar);
        }

        public static zzv zzz(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzv) zzgys.zzbv(zze, byteBuffer, zzgycVar);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public int zza(int i) {
            return this.zzj.zzd(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public int zzb() {
            return this.zzj.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public zzq zzc() {
            zzq zzb2 = zzq.zzb(this.zzi);
            if (zzb2 == null) {
                return zzq.ENUM_FALSE;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzv> zzhalVar2 = zzf;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzv.class) {
                                            try {
                                                zzhalVar = zzf;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zze);
                                                    zzf = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zze;
                        }
                        return new zza();
                    }
                    return new zzv();
                }
                return zzgys.zzbQ(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzg", "zzh", "zzi", zzq.zze(), "zzj", "zzk"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public zzap zzq() {
            zzap zzapVar = this.zzk;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public zzgxk zzr() {
            return zzgxk.zzw(this.zzh);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public String zzs() {
            return this.zzh;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public List<Integer> zzt() {
            return this.zzj;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public boolean zzu() {
            if ((this.zzg & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public boolean zzv() {
            if ((this.zzg & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzw
        public boolean zzw() {
            if ((this.zzg & 2) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzw extends zzhae {
        int zza(int i);

        int zzb();

        zzq zzc();

        zzap zzq();

        zzgxk zzr();

        String zzs();

        List<Integer> zzt();

        boolean zzu();

        boolean zzv();

        boolean zzw();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzx extends zzgys<zzx, zza> implements zzy {
        public static final int zza = 1;
        public static final int zzb = 2;
        private static final zzx zzc;
        private static volatile zzhal<zzx> zzd;
        private int zze;
        private int zzf;
        private zzgza zzg = zzgys.zzbG();

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzx, zza> implements zzy {
            @Override // com.google.android.gms.internal.ads.zzbca.zzy
            public int zza(int i) {
                return ((zzx) this.zza).zza(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzy
            public int zzb() {
                return ((zzx) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzy
            public zzq zzc() {
                return ((zzx) this.zza).zzc();
            }

            public zza zzd(Iterable<? extends Integer> iterable) {
                zzbu();
                ((zzx) this.zza).zzD(iterable);
                return this;
            }

            public zza zze(int i) {
                zzbu();
                ((zzx) this.zza).zzE(i);
                return this;
            }

            public zza zzf() {
                zzbu();
                ((zzx) this.zza).zzF();
                return this;
            }

            public zza zzg() {
                zzbu();
                ((zzx) this.zza).zzG();
                return this;
            }

            public zza zzh(int i, int i2) {
                zzbu();
                ((zzx) this.zza).zzI(i, i2);
                return this;
            }

            public zza zzi(zzq zzqVar) {
                zzbu();
                ((zzx) this.zza).zzJ(zzqVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzy
            public List<Integer> zzj() {
                return Collections.unmodifiableList(((zzx) this.zza).zzj());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzy
            public boolean zzk() {
                return ((zzx) this.zza).zzk();
            }

            private zza() {
                super(zzx.zzc);
            }
        }

        static {
            zzx zzxVar = new zzx();
            zzc = zzxVar;
            zzgys.zzbZ(zzx.class, zzxVar);
        }

        private zzx() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzD(Iterable<? extends Integer> iterable) {
            zzH();
            zzgwt.zzaQ(iterable, this.zzg);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzE(int i) {
            zzH();
            this.zzg.zzi(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzF() {
            this.zzg = zzgys.zzbG();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzG() {
            this.zze &= -2;
            this.zzf = 0;
        }

        private void zzH() {
            zzgza zzgzaVar = this.zzg;
            if (!zzgzaVar.zzc()) {
                this.zzg = zzgys.zzbH(zzgzaVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzI(int i, int i2) {
            zzH();
            this.zzg.zze(i, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzJ(zzq zzqVar) {
            this.zzf = zzqVar.zza();
            this.zze |= 1;
        }

        public static zza zzd() {
            return (zza) zzc.zzaZ();
        }

        public static zza zzf(zzx zzxVar) {
            return (zza) zzc.zzba(zzxVar);
        }

        public static zzx zzh() {
            return zzc;
        }

        public static zzx zzi(InputStream inputStream) throws IOException {
            return (zzx) zzgys.zzbk(zzc, inputStream);
        }

        public static zzx zzl(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzx) zzgys.zzbl(zzc, inputStream, zzgycVar);
        }

        public static zzx zzm(zzgxk zzgxkVar) throws zzgzh {
            return (zzx) zzgys.zzbm(zzc, zzgxkVar);
        }

        public static zzx zzn(zzgxq zzgxqVar) throws IOException {
            return (zzx) zzgys.zzbn(zzc, zzgxqVar);
        }

        public static zzx zzo(InputStream inputStream) throws IOException {
            return (zzx) zzgys.zzbo(zzc, inputStream);
        }

        public static zzx zzp(ByteBuffer byteBuffer) throws zzgzh {
            return (zzx) zzgys.zzbp(zzc, byteBuffer);
        }

        public static zzx zzq(byte[] bArr) throws zzgzh {
            return (zzx) zzgys.zzbq(zzc, bArr);
        }

        public static zzx zzr(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzx) zzgys.zzbr(zzc, zzgxkVar, zzgycVar);
        }

        public static zzx zzs(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzx) zzgys.zzbs(zzc, zzgxqVar, zzgycVar);
        }

        public static zzx zzt(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzx) zzgys.zzbu(zzc, inputStream, zzgycVar);
        }

        public static zzx zzu(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzx) zzgys.zzbv(zzc, byteBuffer, zzgycVar);
        }

        public static zzx zzv(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzx) zzgys.zzbx(zzc, bArr, zzgycVar);
        }

        public static zzhal<zzx> zzw() {
            return zzc.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzy
        public int zza(int i) {
            return this.zzg.zzd(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzy
        public int zzb() {
            return this.zzg.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzy
        public zzq zzc() {
            zzq zzb2 = zzq.zzb(this.zzf);
            if (zzb2 == null) {
                return zzq.ENUM_FALSE;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzx> zzhalVar2 = zzd;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzx.class) {
                                            try {
                                                zzhalVar = zzd;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zzc);
                                                    zzd = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zzc;
                        }
                        return new zza();
                    }
                    return new zzx();
                }
                return zzgys.zzbQ(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u0016", new Object[]{"zze", "zzf", zzq.zze(), "zzg"});
            }
            return (byte) 1;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzy
        public List<Integer> zzj() {
            return this.zzg;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzy
        public boolean zzk() {
            if ((this.zze & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface zzy extends zzhae {
        int zza(int i);

        int zzb();

        zzq zzc();

        List<Integer> zzj();

        boolean zzk();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public final class zzz extends zzgys<zzz, zza> implements zzaa {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        private static final zzz zze;
        private static volatile zzhal<zzz> zzf;
        private int zzg;
        private zzv zzh;
        private zzgze<zzan> zzi = zzgys.zzbK();
        private int zzj;
        private zzap zzk;

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public final class zza extends zzgym<zzz, zza> implements zzaa {
            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public boolean zzA() {
                return ((zzz) this.zza).zzA();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public boolean zzB() {
                return ((zzz) this.zza).zzB();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public int zza() {
                return ((zzz) this.zza).zza();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public zzq zzb() {
                return ((zzz) this.zza).zzb();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public zzv zzc() {
                return ((zzz) this.zza).zzc();
            }

            public zza zzd(Iterable<? extends zzan> iterable) {
                zzbu();
                ((zzz) this.zza).zzR(iterable);
                return this;
            }

            public zza zze(zzan.zza zzaVar) {
                zzbu();
                ((zzz) this.zza).zzS(zzaVar.zzbr());
                return this;
            }

            public zza zzf(zzan zzanVar) {
                zzbu();
                ((zzz) this.zza).zzS(zzanVar);
                return this;
            }

            public zza zzg(int i, zzan.zza zzaVar) {
                zzbu();
                ((zzz) this.zza).zzT(i, zzaVar.zzbr());
                return this;
            }

            public zza zzh(int i, zzan zzanVar) {
                zzbu();
                ((zzz) this.zza).zzT(i, zzanVar);
                return this;
            }

            public zza zzi() {
                zzbu();
                ((zzz) this.zza).zzU();
                return this;
            }

            public zza zzj() {
                zzbu();
                ((zzz) this.zza).zzV();
                return this;
            }

            public zza zzk() {
                zzbu();
                ((zzz) this.zza).zzW();
                return this;
            }

            public zza zzl() {
                zzbu();
                ((zzz) this.zza).zzX();
                return this;
            }

            public zza zzm(zzv zzvVar) {
                zzbu();
                ((zzz) this.zza).zzZ(zzvVar);
                return this;
            }

            public zza zzn(zzap zzapVar) {
                zzbu();
                ((zzz) this.zza).zzaa(zzapVar);
                return this;
            }

            public zza zzo(int i) {
                zzbu();
                ((zzz) this.zza).zzab(i);
                return this;
            }

            public zza zzp(zzv.zza zzaVar) {
                zzbu();
                ((zzz) this.zza).zzac(zzaVar.zzbr());
                return this;
            }

            public zza zzq(zzv zzvVar) {
                zzbu();
                ((zzz) this.zza).zzac(zzvVar);
                return this;
            }

            public zza zzr(zzap.zza zzaVar) {
                zzbu();
                ((zzz) this.zza).zzad(zzaVar.zzbr());
                return this;
            }

            public zza zzs(zzap zzapVar) {
                zzbu();
                ((zzz) this.zza).zzad(zzapVar);
                return this;
            }

            public zza zzt(zzq zzqVar) {
                zzbu();
                ((zzz) this.zza).zzae(zzqVar);
                return this;
            }

            public zza zzu(int i, zzan.zza zzaVar) {
                zzbu();
                ((zzz) this.zza).zzaf(i, zzaVar.zzbr());
                return this;
            }

            public zza zzv(int i, zzan zzanVar) {
                zzbu();
                ((zzz) this.zza).zzaf(i, zzanVar);
                return this;
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public zzan zzw(int i) {
                return ((zzz) this.zza).zzw(i);
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public zzap zzx() {
                return ((zzz) this.zza).zzx();
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public List<zzan> zzy() {
                return Collections.unmodifiableList(((zzz) this.zza).zzy());
            }

            @Override // com.google.android.gms.internal.ads.zzbca.zzaa
            public boolean zzz() {
                return ((zzz) this.zza).zzz();
            }

            private zza() {
                super(zzz.zze);
            }
        }

        static {
            zzz zzzVar = new zzz();
            zze = zzzVar;
            zzgys.zzbZ(zzz.class, zzzVar);
        }

        private zzz() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzR(Iterable<? extends zzan> iterable) {
            zzY();
            zzgwt.zzaQ(iterable, this.zzi);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzS(zzan zzanVar) {
            zzanVar.getClass();
            zzY();
            this.zzi.add(zzanVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzT(int i, zzan zzanVar) {
            zzanVar.getClass();
            zzY();
            this.zzi.add(i, zzanVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzU() {
            this.zzh = null;
            this.zzg &= -2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzV() {
            this.zzk = null;
            this.zzg &= -5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzW() {
            this.zzg &= -3;
            this.zzj = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzX() {
            this.zzi = zzgys.zzbK();
        }

        private void zzY() {
            zzgze<zzan> zzgzeVar = this.zzi;
            if (!zzgzeVar.zzc()) {
                this.zzi = zzgys.zzbL(zzgzeVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzZ(zzv zzvVar) {
            zzvVar.getClass();
            zzv zzvVar2 = this.zzh;
            if (zzvVar2 != null && zzvVar2 != zzv.zzh()) {
                zzv.zza zzf2 = zzv.zzf(zzvVar2);
                zzf2.zzbj(zzvVar);
                zzvVar = zzf2.zzbs();
            }
            this.zzh = zzvVar;
            this.zzg |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaa(zzap zzapVar) {
            zzapVar.getClass();
            zzap zzapVar2 = this.zzk;
            if (zzapVar2 != null && zzapVar2 != zzap.zzi()) {
                zzap.zza zzd2 = zzap.zzd(zzapVar2);
                zzd2.zzbj(zzapVar);
                zzapVar = zzd2.zzbs();
            }
            this.zzk = zzapVar;
            this.zzg |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzab(int i) {
            zzY();
            this.zzi.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzac(zzv zzvVar) {
            zzvVar.getClass();
            this.zzh = zzvVar;
            this.zzg |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzad(zzap zzapVar) {
            zzapVar.getClass();
            this.zzk = zzapVar;
            this.zzg |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzae(zzq zzqVar) {
            this.zzj = zzqVar.zza();
            this.zzg |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaf(int i, zzan zzanVar) {
            zzanVar.getClass();
            zzY();
            this.zzi.set(i, zzanVar);
        }

        public static zza zzd() {
            return (zza) zze.zzaZ();
        }

        public static zza zzf(zzz zzzVar) {
            return (zza) zze.zzba(zzzVar);
        }

        public static zzz zzh() {
            return zze;
        }

        public static zzz zzi(InputStream inputStream) throws IOException {
            return (zzz) zzgys.zzbk(zze, inputStream);
        }

        public static zzz zzj(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzz) zzgys.zzbl(zze, inputStream, zzgycVar);
        }

        public static zzz zzk(zzgxk zzgxkVar) throws zzgzh {
            return (zzz) zzgys.zzbm(zze, zzgxkVar);
        }

        public static zzz zzl(zzgxq zzgxqVar) throws IOException {
            return (zzz) zzgys.zzbn(zze, zzgxqVar);
        }

        public static zzz zzm(InputStream inputStream) throws IOException {
            return (zzz) zzgys.zzbo(zze, inputStream);
        }

        public static zzz zzn(ByteBuffer byteBuffer) throws zzgzh {
            return (zzz) zzgys.zzbp(zze, byteBuffer);
        }

        public static zzz zzo(byte[] bArr) throws zzgzh {
            return (zzz) zzgys.zzbq(zze, bArr);
        }

        public static zzz zzp(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
            return (zzz) zzgys.zzbr(zze, zzgxkVar, zzgycVar);
        }

        public static zzz zzq(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
            return (zzz) zzgys.zzbs(zze, zzgxqVar, zzgycVar);
        }

        public static zzz zzr(InputStream inputStream, zzgyc zzgycVar) throws IOException {
            return (zzz) zzgys.zzbu(zze, inputStream, zzgycVar);
        }

        public static zzz zzs(ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
            return (zzz) zzgys.zzbv(zze, byteBuffer, zzgycVar);
        }

        public static zzz zzt(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
            return (zzz) zzgys.zzbx(zze, bArr, zzgycVar);
        }

        public static zzhal<zzz> zzv() {
            return zze.zzbN();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public boolean zzA() {
            if ((this.zzg & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public boolean zzB() {
            if ((this.zzg & 2) != 0) {
                return true;
            }
            return false;
        }

        public List<? extends zzao> zzC() {
            return this.zzi;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public int zza() {
            return this.zzi.size();
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public zzq zzb() {
            zzq zzb2 = zzq.zzb(this.zzj);
            if (zzb2 == null) {
                return zzq.ENUM_FALSE;
            }
            return zzb2;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public zzv zzc() {
            zzv zzvVar = this.zzh;
            if (zzvVar == null) {
                return zzv.zzh();
            }
            return zzvVar;
        }

        @Override // com.google.android.gms.internal.ads.zzgys
        public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
            zzhal zzhalVar;
            int ordinal = zzgyrVar.ordinal();
            if (ordinal != 0) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                if (ordinal == 6) {
                                    zzhal<zzz> zzhalVar2 = zzf;
                                    if (zzhalVar2 == null) {
                                        synchronized (zzz.class) {
                                            try {
                                                zzhalVar = zzf;
                                                if (zzhalVar == null) {
                                                    zzhalVar = new zzgyn(zze);
                                                    zzf = zzhalVar;
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        return zzhalVar;
                                    }
                                    return zzhalVar2;
                                }
                                throw null;
                            }
                            return zze;
                        }
                        return new zza();
                    }
                    return new zzz();
                }
                return zzgys.zzbQ(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003᠌\u0001\u0004ဉ\u0002", new Object[]{"zzg", "zzh", "zzi", zzan.class, "zzj", zzq.zze(), "zzk"});
            }
            return (byte) 1;
        }

        public zzao zzu(int i) {
            return this.zzi.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public zzan zzw(int i) {
            return this.zzi.get(i);
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public zzap zzx() {
            zzap zzapVar = this.zzk;
            if (zzapVar == null) {
                return zzap.zzi();
            }
            return zzapVar;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public List<zzan> zzy() {
            return this.zzi;
        }

        @Override // com.google.android.gms.internal.ads.zzbca.zzaa
        public boolean zzz() {
            if ((this.zzg & 1) != 0) {
                return true;
            }
            return false;
        }
    }

    private zzbca() {
    }

    public static void zza(zzgyc zzgycVar) {
    }
}
