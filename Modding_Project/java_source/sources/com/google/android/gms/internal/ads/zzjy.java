package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzjy implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzacc, zzqb, zzxh, zztz, zzht {
    public static final /* synthetic */ int zzb = 0;
    final /* synthetic */ zzkc zza;

    public /* synthetic */ zzjy(zzkc zzkcVar, zzkb zzkbVar) {
        this.zza = zzkcVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzkc zzkcVar = this.zza;
        zzkc.zzO(zzkcVar, surfaceTexture);
        zzkcVar.zzab(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzkc zzkcVar = this.zza;
        zzkcVar.zzad(null);
        zzkcVar.zzab(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zza.zzab(i, i2);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.zza.zzab(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.zza.zzab(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zza(Exception exc) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzw(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzb(String str, long j, long j2) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzx(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzc(String str) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzy(str);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzd(zzia zziaVar) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzz(zziaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zze(zzia zziaVar) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzA(zziaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzf(zzz zzzVar, @Nullable zzib zzibVar) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzB(zzzVar, zzibVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzg(long j) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzC(j);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzh(Exception exc) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzD(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzi(zzqc zzqcVar) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzE(zzqcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzj(zzqc zzqcVar) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzF(zzqcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzk(int i, long j, long j2) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzG(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzl(int i, long j) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzH(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzm(Object obj, long j) {
        zzmj zzmjVar;
        Object obj2;
        zzdw zzdwVar;
        zzkc zzkcVar = this.zza;
        zzmjVar = zzkcVar.zzr;
        zzmjVar.zzI(obj, j);
        obj2 = zzkcVar.zzI;
        if (obj2 == obj) {
            zzdwVar = zzkcVar.zzm;
            zzdwVar.zzd(26, new zzdt() { // from class: com.google.android.gms.internal.ads.zzjx
                @Override // com.google.android.gms.internal.ads.zzdt
                public final void zza(Object obj3) {
                    zzbe zzbeVar = (zzbe) obj3;
                }
            });
            zzdwVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzn(final boolean z) {
        boolean z2;
        zzdw zzdwVar;
        zzkc zzkcVar = this.zza;
        z2 = zzkcVar.zzO;
        if (z2 != z) {
            zzkcVar.zzO = z;
            zzdwVar = zzkcVar.zzm;
            zzdwVar.zzd(23, new zzdt() { // from class: com.google.android.gms.internal.ads.zzjv
                @Override // com.google.android.gms.internal.ads.zzdt
                public final void zza(Object obj) {
                    ((zzbe) obj).zzo(z);
                }
            });
            zzdwVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzo(Exception exc) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzK(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzp(String str, long j, long j2) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzL(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzq(String str) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzM(str);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzr(zzia zziaVar) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzN(zziaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzs(zzia zziaVar) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzO(zziaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzt(long j, int i) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzP(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzu(zzz zzzVar, @Nullable zzib zzibVar) {
        zzmj zzmjVar;
        zzmjVar = this.zza.zzr;
        zzmjVar.zzQ(zzzVar, zzibVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacc
    public final void zzv(final zzcd zzcdVar) {
        zzdw zzdwVar;
        zzdwVar = this.zza.zzm;
        zzdwVar.zzd(25, new zzdt() { // from class: com.google.android.gms.internal.ads.zzjw
            @Override // com.google.android.gms.internal.ads.zzdt
            public final void zza(Object obj) {
                ((zzbe) obj).zzs(zzcd.this);
            }
        });
        zzdwVar.zzc();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }
}
