package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbca;
import com.tencent.liteav.TXLiteAVCode;
import com.tencent.rtmp.TXLiveConstants;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdqs implements zzcyv, zzcxh, zzcvw, zzcwn, com.google.android.gms.ads.internal.client.zza, zzdbh {
    private final zzbbt zza;
    private boolean zzb = false;

    public zzdqs(zzbbt zzbbtVar, @Nullable zzezp zzezpVar) {
        this.zza = zzbbtVar;
        zzbbtVar.zzc(2);
        if (zzezpVar != null) {
            zzbbtVar.zzc(1101);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        if (!this.zzb) {
            this.zza.zzc(7);
            this.zzb = true;
            return;
        }
        this.zza.zzc(8);
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdD(com.google.android.gms.ads.internal.client.zze zzeVar) {
        switch (zzeVar.zza) {
            case 1:
                this.zza.zzc(101);
                return;
            case 2:
                this.zza.zzc(102);
                return;
            case 3:
                this.zza.zzc(5);
                return;
            case 4:
                this.zza.zzc(103);
                return;
            case 5:
                this.zza.zzc(104);
                return;
            case 6:
                this.zza.zzc(105);
                return;
            case 7:
                this.zza.zzc(106);
                return;
            default:
                this.zza.zzc(4);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdo(final zzfcg zzfcgVar) {
        this.zza.zzb(new zzbbs() { // from class: com.google.android.gms.internal.ads.zzdqo
            @Override // com.google.android.gms.internal.ads.zzbbs
            public final void zza(zzbca.zzt.zza zzaVar) {
                zzbca.zza.zzb zzbM = zzaVar.zze().zzbM();
                zzbca.zzi.zza zzbM2 = zzaVar.zze().zzad().zzbM();
                zzbM2.zzo(zzfcg.this.zzb.zzb.zzb);
                zzbM.zzT(zzbM2);
                zzaVar.zzG(zzbM);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzh() {
        this.zza.zzc(TXLiteAVCode.WARNING_SW_ENCODER_START_FAIL);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzi(final zzbca.zzb zzbVar) {
        zzbbs zzbbsVar = new zzbbs() { // from class: com.google.android.gms.internal.ads.zzdqr
            @Override // com.google.android.gms.internal.ads.zzbbs
            public final void zza(zzbca.zzt.zza zzaVar) {
                zzaVar.zzJ(zzbca.zzb.this);
            }
        };
        zzbbt zzbbtVar = this.zza;
        zzbbtVar.zzb(zzbbsVar);
        zzbbtVar.zzc(1103);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzj(final zzbca.zzb zzbVar) {
        zzbbs zzbbsVar = new zzbbs() { // from class: com.google.android.gms.internal.ads.zzdqp
            @Override // com.google.android.gms.internal.ads.zzbbs
            public final void zza(zzbca.zzt.zza zzaVar) {
                zzaVar.zzJ(zzbca.zzb.this);
            }
        };
        zzbbt zzbbtVar = this.zza;
        zzbbtVar.zzb(zzbbsVar);
        zzbbtVar.zzc(1102);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzl(boolean z) {
        int i;
        if (true != z) {
            i = TXLiteAVCode.WARNING_INSUFFICIENT_CAPTURE_FPS;
        } else {
            i = 1107;
        }
        this.zza.zzc(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzm(final zzbca.zzb zzbVar) {
        zzbbs zzbbsVar = new zzbbs() { // from class: com.google.android.gms.internal.ads.zzdqq
            @Override // com.google.android.gms.internal.ads.zzbbs
            public final void zza(zzbca.zzt.zza zzaVar) {
                zzaVar.zzJ(zzbca.zzb.this);
            }
        };
        zzbbt zzbbtVar = this.zza;
        zzbbtVar.zzb(zzbbsVar);
        zzbbtVar.zzc(1104);
    }

    @Override // com.google.android.gms.internal.ads.zzdbh
    public final void zzn(boolean z) {
        int i;
        if (true != z) {
            i = TXLiveConstants.PUSH_WARNING_VIDEO_ENCODE_BITRATE_OVERFLOW;
        } else {
            i = TXLiveConstants.PUSH_WARNING_BEAUTYSURFACE_VIEW_INIT_FAIL;
        }
        this.zza.zzc(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final synchronized void zzs() {
        this.zza.zzc(6);
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzt() {
        this.zza.zzc(3);
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdn(zzbvl zzbvlVar) {
    }
}
