package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdnc extends zzbhz {
    @Nullable
    private final String zza;
    private final zzdij zzb;
    private final zzdio zzc;
    private final zzdsd zzd;

    public zzdnc(@Nullable String str, zzdij zzdijVar, zzdio zzdioVar, zzdsd zzdsdVar) {
        this.zza = str;
        this.zzb = zzdijVar;
        this.zzc = zzdioVar;
        this.zzd = zzdsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzA() {
        this.zzb.zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzB(Bundle bundle) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzni)).booleanValue()) {
            this.zzb.zzI(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzC(Bundle bundle) throws RemoteException {
        this.zzb.zzM(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzD() {
        this.zzb.zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzE(com.google.android.gms.ads.internal.client.zzdc zzdcVar) throws RemoteException {
        this.zzb.zzP(zzdcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzF(com.google.android.gms.ads.internal.client.zzdq zzdqVar) throws RemoteException {
        try {
            if (!zzdqVar.zzf()) {
                this.zzd.zze();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzb.zzQ(zzdqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzG(zzbhx zzbhxVar) throws RemoteException {
        this.zzb.zzR(zzbhxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final boolean zzH() {
        return this.zzb.zzW();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final boolean zzI() throws RemoteException {
        zzdio zzdioVar = this.zzc;
        if (!zzdioVar.zzH().isEmpty() && zzdioVar.zzk() != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final boolean zzJ(Bundle bundle) throws RemoteException {
        return this.zzb.zzZ(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final double zze() throws RemoteException {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final Bundle zzf() throws RemoteException {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdx zzg() throws RemoteException {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgT)).booleanValue()) {
            return null;
        }
        return this.zzb.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final com.google.android.gms.ads.internal.client.zzea zzh() throws RemoteException {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final zzbfz zzi() throws RemoteException {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final zzbgd zzj() throws RemoteException {
        return this.zzb.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final zzbgg zzk() throws RemoteException {
        return this.zzc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final IObjectWrapper zzl() throws RemoteException {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final IObjectWrapper zzm() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzn() throws RemoteException {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzo() throws RemoteException {
        return this.zzc.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzp() throws RemoteException {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzq() throws RemoteException {
        return this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzr() throws RemoteException {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzs() throws RemoteException {
        return this.zzc.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final String zzt() throws RemoteException {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final List zzu() throws RemoteException {
        return this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final List zzv() throws RemoteException {
        if (zzI()) {
            return this.zzc.zzH();
        }
        return Collections.EMPTY_LIST;
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzw() throws RemoteException {
        this.zzb.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzx() throws RemoteException {
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzy(@Nullable com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        this.zzb.zzC(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbia
    public final void zzz(Bundle bundle) throws RemoteException {
        this.zzb.zzG(bundle);
    }
}
