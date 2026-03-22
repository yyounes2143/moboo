package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzro extends zztj implements zzkw {
    private final Context zzb;
    private final zzqa zzc;
    private final zzqi zzd;
    @Nullable
    private final zzsv zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    @Nullable
    private zzz zzi;
    @Nullable
    private zzz zzj;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private int zzo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzro(Context context, zzsx zzsxVar, zztl zztlVar, boolean z, @Nullable Handler handler, @Nullable zzqb zzqbVar, zzqi zzqiVar) {
        super(1, zzsxVar, zztlVar, false, 44100.0f);
        zzsv zzsvVar;
        if (Build.VERSION.SDK_INT >= 35) {
            zzsvVar = new zzsv(zzsu.zza);
        } else {
            zzsvVar = null;
        }
        this.zzb = context.getApplicationContext();
        this.zzd = zzqiVar;
        this.zze = zzsvVar;
        this.zzo = -1000;
        this.zzc = new zzqa(handler, zzqbVar);
        zzqiVar.zzq(new zzrm(this, null));
    }

    private final int zzaR(zztc zztcVar, zzz zzzVar) {
        int i;
        if ("OMX.google.raw.decoder".equals(zztcVar.zza) && (i = Build.VERSION.SDK_INT) < 24 && (i != 23 || !zzeu.zzN(this.zzb))) {
            return -1;
        }
        return zzzVar.zzp;
    }

    private static List zzaS(zztl zztlVar, zzz zzzVar, boolean z, zzqi zzqiVar) throws zztq {
        zztc zza;
        if (zzzVar.zzo == null) {
            return zzfyc.zzn();
        }
        if (zzqiVar.zzA(zzzVar) && (zza = zztw.zza()) != null) {
            return zzfyc.zzo(zza);
        }
        return zztw.zze(zztlVar, zzzVar, false, false);
    }

    private final void zzaT() {
        long zzb = this.zzd.zzb(zzW());
        if (zzb != Long.MIN_VALUE) {
            if (!this.zzl) {
                zzb = Math.max(this.zzk, zzb);
            }
            this.zzk = zzb;
            this.zzl = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void zzA() {
        zzsv zzsvVar;
        this.zzd.zzk();
        if (Build.VERSION.SDK_INT >= 35 && (zzsvVar = this.zze) != null) {
            zzsvVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzC() {
        this.zzn = false;
        try {
            super.zzC();
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzl();
            }
        } catch (Throwable th) {
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzl();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void zzD() {
        this.zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzhz
    public final void zzE() {
        zzaT();
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzly
    public final String zzU() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzlv
    public final boolean zzW() {
        if (super.zzW() && this.zzd.zzz()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzlv
    public final boolean zzX() {
        if (!this.zzd.zzy() && !super.zzX()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final float zzZ(float f, zzz zzzVar, zzz[] zzzVarArr) {
        int i = -1;
        for (zzz zzzVar2 : zzzVarArr) {
            int i2 = zzzVar2.zzF;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final long zza() {
        if (zzcU() == 2) {
            zzaT();
        }
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final int zzaa(zztl zztlVar, zzz zzzVar) throws zztq {
        int i;
        boolean z;
        int i2;
        int i3;
        String str = zzzVar.zzo;
        int i4 = 128;
        if (!zzay.zzh(str)) {
            return 128;
        }
        int i5 = zzzVar.zzL;
        boolean zzaQ = zztj.zzaQ(zzzVar);
        int i6 = 1;
        if (!zzaQ || (i5 != 0 && zztw.zza() == null)) {
            i = 0;
        } else {
            zzqi zzqiVar = this.zzd;
            zzpn zzd = zzqiVar.zzd(zzzVar);
            if (!zzd.zzb) {
                i = 0;
            } else {
                if (true != zzd.zzc) {
                    i = 512;
                } else {
                    i = 1536;
                }
                if (zzd.zzd) {
                    i |= 2048;
                }
            }
            if (zzqiVar.zzA(zzzVar)) {
                return i | 172;
            }
        }
        if (!"audio/raw".equals(str) || this.zzd.zzA(zzzVar)) {
            zzqi zzqiVar2 = this.zzd;
            if (zzqiVar2.zzA(zzeu.zzA(2, zzzVar.zzE, zzzVar.zzF))) {
                List zzaS = zzaS(zztlVar, zzzVar, false, zzqiVar2);
                if (!zzaS.isEmpty()) {
                    if (!zzaQ) {
                        i6 = 2;
                    } else {
                        zztc zztcVar = (zztc) zzaS.get(0);
                        boolean zze = zztcVar.zze(zzzVar);
                        if (!zze) {
                            for (int i7 = 1; i7 < zzaS.size(); i7++) {
                                zztc zztcVar2 = (zztc) zzaS.get(i7);
                                if (zztcVar2.zze(zzzVar)) {
                                    z = false;
                                    zze = true;
                                    zztcVar = zztcVar2;
                                    break;
                                }
                            }
                        }
                        z = true;
                        if (true != zze) {
                            i2 = 3;
                        } else {
                            i2 = 4;
                        }
                        int i8 = 8;
                        if (zze && zztcVar.zzf(zzzVar)) {
                            i8 = 16;
                        }
                        if (true != zztcVar.zzg) {
                            i3 = 0;
                        } else {
                            i3 = 64;
                        }
                        if (true != z) {
                            i4 = 0;
                        }
                        return i2 | i8 | 32 | i3 | i4 | i;
                    }
                }
            }
        }
        return i6 | 128;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final zzib zzab(zztc zztcVar, zzz zzzVar, zzz zzzVar2) {
        int i;
        int i2;
        zzib zzb = zztcVar.zzb(zzzVar, zzzVar2);
        int i3 = zzb.zze;
        if (zzaM(zzzVar2)) {
            i3 |= 32768;
        }
        if (zzaR(zztcVar, zzzVar2) > this.zzf) {
            i3 |= 64;
        }
        String str = zztcVar.zza;
        if (i3 != 0) {
            i2 = 0;
            i = i3;
        } else {
            i = 0;
            i2 = zzb.zzd;
        }
        return new zzib(str, zzzVar, zzzVar2, i2, i);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    @Nullable
    public final zzib zzac(zzkq zzkqVar) throws zzik {
        zzz zzzVar = zzkqVar.zza;
        zzzVar.getClass();
        this.zzi = zzzVar;
        zzib zzac = super.zzac(zzkqVar);
        this.zzc.zzu(zzzVar, zzac);
        return zzac;
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x00cb, code lost:
        if ("AXON 7 mini".equals(r4) == false) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0129  */
    @Override // com.google.android.gms.internal.ads.zztj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzsw zzaf(com.google.android.gms.internal.ads.zztc r10, com.google.android.gms.internal.ads.zzz r11, @androidx.annotation.Nullable android.media.MediaCrypto r12, float r13) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzro.zzaf(com.google.android.gms.internal.ads.zztc, com.google.android.gms.internal.ads.zzz, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzsw");
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final List zzag(zztl zztlVar, zzz zzzVar, boolean z) throws zztq {
        return zztw.zzf(zzaS(zztlVar, zzzVar, false, this.zzd), zzzVar);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzaj(zzhp zzhpVar) {
        zzz zzzVar;
        if (Build.VERSION.SDK_INT >= 29 && (zzzVar = zzhpVar.zza) != null && Objects.equals(zzzVar.zzo, "audio/opus") && zzaL()) {
            ByteBuffer byteBuffer = zzhpVar.zzf;
            byteBuffer.getClass();
            zzz zzzVar2 = zzhpVar.zza;
            zzzVar2.getClass();
            int i = zzzVar2.zzH;
            if (byteBuffer.remaining() == 8) {
                this.zzd.zzr(i, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzak(Exception exc) {
        zzdx.zzd("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zzm(exc);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzal(String str, zzsw zzswVar, long j, long j2) {
        this.zzc.zzq(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzam(String str) {
        this.zzc.zzr(str);
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzan(zzz zzzVar, @Nullable MediaFormat mediaFormat) throws zzik {
        int i;
        int i2;
        zzz zzzVar2 = this.zzj;
        int[] iArr = null;
        boolean z = true;
        if (zzzVar2 != null) {
            zzzVar = zzzVar2;
        } else if (zzaz() != null) {
            mediaFormat.getClass();
            if ("audio/raw".equals(zzzVar.zzo)) {
                i = zzzVar.zzG;
            } else if (Build.VERSION.SDK_INT >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                i = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                i = zzeu.zzn(mediaFormat.getInteger("v-bits-per-sample"));
            } else {
                i = 2;
            }
            zzx zzxVar = new zzx();
            zzxVar.zzad("audio/raw");
            zzxVar.zzX(i);
            zzxVar.zzI(zzzVar.zzH);
            zzxVar.zzJ(zzzVar.zzI);
            zzxVar.zzW(zzzVar.zzl);
            zzxVar.zzO(zzzVar.zza);
            zzxVar.zzQ(zzzVar.zzb);
            zzxVar.zzR(zzzVar.zzc);
            zzxVar.zzS(zzzVar.zzd);
            zzxVar.zzaf(zzzVar.zze);
            zzxVar.zzab(zzzVar.zzf);
            zzxVar.zzB(mediaFormat.getInteger("channel-count"));
            zzxVar.zzae(mediaFormat.getInteger("sample-rate"));
            zzz zzaj = zzxVar.zzaj();
            if (this.zzg && zzaj.zzE == 6 && (i2 = zzzVar.zzE) < 6) {
                iArr = new int[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    iArr[i3] = i3;
                }
            } else if (this.zzh) {
                int i4 = zzaj.zzE;
                if (i4 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i4 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i4 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i4 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i4 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
            }
            zzzVar = zzaj;
        }
        try {
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 29) {
                if (zzaL()) {
                    zzn();
                }
                if (i5 < 29) {
                    z = false;
                }
                zzdc.zzf(z);
            }
            this.zzd.zze(zzzVar, 0, iArr);
        } catch (zzqd e) {
            throw zzcX(e, e.zza, false, 5001);
        }
    }

    @CallSuper
    public final void zzao() {
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzap() {
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final void zzaq() throws zzik {
        int i;
        try {
            this.zzd.zzj();
        } catch (zzqh e) {
            if (true != zzaL()) {
                i = 5002;
            } else {
                i = 5003;
            }
            throw zzcX(e, e.zzc, e.zzb, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zzar(long j, long j2, @Nullable zzsz zzszVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzz zzzVar) throws zzik {
        byteBuffer.getClass();
        if (this.zzj != null && (i2 & 2) != 0) {
            zzszVar.getClass();
            zzszVar.zzo(i, false);
            return true;
        } else if (z) {
            if (zzszVar != null) {
                zzszVar.zzo(i, false);
            }
            ((zztj) this).zza.zzf += i3;
            this.zzd.zzg();
            return true;
        } else {
            try {
                if (!this.zzd.zzx(byteBuffer, j3, i3)) {
                    return false;
                }
                if (zzszVar != null) {
                    zzszVar.zzo(i, false);
                }
                ((zztj) this).zza.zze += i3;
                return true;
            } catch (zzqe e) {
                zzz zzzVar2 = this.zzi;
                if (zzaL()) {
                    zzn();
                }
                throw zzcX(e, zzzVar2, e.zzb, 5001);
            } catch (zzqh e2) {
                if (zzaL()) {
                    zzn();
                }
                throw zzcX(e2, zzzVar, e2.zzb, 5002);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj
    public final boolean zzas(zzz zzzVar) {
        zzn();
        return this.zzd.zzA(zzzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final zzbb zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final void zzg(zzbb zzbbVar) {
        this.zzd.zzs(zzbbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final boolean zzj() {
        boolean z = this.zzn;
        this.zzn = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz, com.google.android.gms.internal.ads.zzlq
    public final void zzu(int i, @Nullable Object obj) throws zzik {
        zzsv zzsvVar;
        if (i != 2) {
            if (i != 3) {
                if (i != 6) {
                    if (i != 12) {
                        if (i != 16) {
                            if (i != 9) {
                                if (i != 10) {
                                    super.zzu(i, obj);
                                    return;
                                }
                                obj.getClass();
                                int intValue = ((Integer) obj).intValue();
                                this.zzd.zzn(intValue);
                                if (Build.VERSION.SDK_INT >= 35 && (zzsvVar = this.zze) != null) {
                                    zzsvVar.zzd(intValue);
                                    return;
                                }
                                return;
                            }
                            zzqi zzqiVar = this.zzd;
                            obj.getClass();
                            zzqiVar.zzv(((Boolean) obj).booleanValue());
                            return;
                        }
                        obj.getClass();
                        this.zzo = ((Integer) obj).intValue();
                        zzsz zzaz = zzaz();
                        if (zzaz != null && Build.VERSION.SDK_INT >= 35) {
                            Bundle bundle = new Bundle();
                            bundle.putInt("importance", Math.max(0, -this.zzo));
                            zzaz.zzq(bundle);
                            return;
                        }
                        return;
                    }
                    this.zzd.zzu((AudioDeviceInfo) obj);
                    return;
                }
                zzf zzfVar = (zzf) obj;
                zzqi zzqiVar2 = this.zzd;
                zzfVar.getClass();
                zzqiVar2.zzo(zzfVar);
                return;
            }
            zze zzeVar = (zze) obj;
            zzqi zzqiVar3 = this.zzd;
            zzeVar.getClass();
            zzqiVar3.zzm(zzeVar);
            return;
        }
        zzqi zzqiVar4 = this.zzd;
        obj.getClass();
        zzqiVar4.zzw(((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzx() {
        this.zzm = true;
        this.zzi = null;
        try {
            this.zzd.zzf();
            super.zzx();
        } finally {
            this.zzc.zzs(((zztj) this).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzy(boolean z, boolean z2) throws zzik {
        super.zzy(z, z2);
        this.zzc.zzt(((zztj) this).zza);
        zzn();
        zzqi zzqiVar = this.zzd;
        zzqiVar.zzt(zzo());
        zzqiVar.zzp(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zztj, com.google.android.gms.internal.ads.zzhz
    public final void zzz(long j, boolean z) throws zzik {
        super.zzz(j, z);
        this.zzd.zzf();
        this.zzk = j;
        this.zzn = false;
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhz, com.google.android.gms.internal.ads.zzlv
    @Nullable
    public final zzkw zzl() {
        return this;
    }
}
