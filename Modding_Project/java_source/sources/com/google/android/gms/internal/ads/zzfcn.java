package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfcn {
    private com.google.android.gms.ads.internal.client.zzm zza;
    private com.google.android.gms.ads.internal.client.zzr zzb;
    private String zzc;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzfw zzd;
    private boolean zze;
    private ArrayList zzf;
    private ArrayList zzg;
    @Nullable
    private zzbfv zzh;
    private com.google.android.gms.ads.internal.client.zzx zzi;
    private AdManagerAdViewOptions zzj;
    private PublisherAdViewOptions zzk;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzcl zzl;
    @Nullable
    private zzbmg zzn;
    @Nullable
    private zzekr zzr;
    private Bundle zzt;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzcp zzu;
    private int zzm = 1;
    private final zzfca zzo = new zzfca();
    private boolean zzp = false;
    private boolean zzq = false;
    private boolean zzs = false;

    public final zzfcn zzA(Bundle bundle) {
        this.zzt = bundle;
        return this;
    }

    public final zzfcn zzB(boolean z) {
        this.zze = z;
        return this;
    }

    public final zzfcn zzC(int i) {
        this.zzm = i;
        return this;
    }

    public final zzfcn zzD(@Nullable zzbfv zzbfvVar) {
        this.zzh = zzbfvVar;
        return this;
    }

    public final zzfcn zzE(ArrayList arrayList) {
        this.zzf = arrayList;
        return this;
    }

    public final zzfcn zzF(ArrayList arrayList) {
        this.zzg = arrayList;
        return this;
    }

    public final zzfcn zzG(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzk = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.zze = publisherAdViewOptions.zzb();
            this.zzl = publisherAdViewOptions.zza();
        }
        return this;
    }

    public final zzfcn zzH(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        this.zza = zzmVar;
        return this;
    }

    public final zzfcn zzI(@Nullable com.google.android.gms.ads.internal.client.zzfw zzfwVar) {
        this.zzd = zzfwVar;
        return this;
    }

    public final zzfcp zzJ() {
        Preconditions.checkNotNull(this.zzc, "ad unit must not be null");
        Preconditions.checkNotNull(this.zzb, "ad size must not be null");
        Preconditions.checkNotNull(this.zza, "ad request must not be null");
        return new zzfcp(this, null);
    }

    public final String zzL() {
        return this.zzc;
    }

    public final boolean zzS() {
        return this.zzp;
    }

    public final boolean zzT() {
        return this.zzq;
    }

    public final zzfcn zzV(@Nullable com.google.android.gms.ads.internal.client.zzcp zzcpVar) {
        this.zzu = zzcpVar;
        return this;
    }

    public final com.google.android.gms.ads.internal.client.zzm zzf() {
        return this.zza;
    }

    public final com.google.android.gms.ads.internal.client.zzr zzh() {
        return this.zzb;
    }

    public final zzfca zzp() {
        return this.zzo;
    }

    public final zzfcn zzq(zzfcp zzfcpVar) {
        this.zzo.zza(zzfcpVar.zzo.zza);
        this.zza = zzfcpVar.zzd;
        this.zzb = zzfcpVar.zze;
        this.zzu = zzfcpVar.zzt;
        this.zzc = zzfcpVar.zzf;
        this.zzd = zzfcpVar.zza;
        this.zzf = zzfcpVar.zzg;
        this.zzg = zzfcpVar.zzh;
        this.zzh = zzfcpVar.zzi;
        this.zzi = zzfcpVar.zzj;
        zzr(zzfcpVar.zzl);
        zzG(zzfcpVar.zzm);
        this.zzp = zzfcpVar.zzp;
        this.zzq = zzfcpVar.zzq;
        this.zzr = zzfcpVar.zzc;
        this.zzs = zzfcpVar.zzr;
        this.zzt = zzfcpVar.zzs;
        return this;
    }

    public final zzfcn zzr(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zzj = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.zze = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }

    public final zzfcn zzs(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.zzb = zzrVar;
        return this;
    }

    public final zzfcn zzt(String str) {
        this.zzc = str;
        return this;
    }

    public final zzfcn zzu(com.google.android.gms.ads.internal.client.zzx zzxVar) {
        this.zzi = zzxVar;
        return this;
    }

    public final zzfcn zzv(@Nullable zzekr zzekrVar) {
        this.zzr = zzekrVar;
        return this;
    }

    public final zzfcn zzw(@Nullable zzbmg zzbmgVar) {
        this.zzn = zzbmgVar;
        this.zzd = new com.google.android.gms.ads.internal.client.zzfw(false, true, false);
        return this;
    }

    public final zzfcn zzx(boolean z) {
        this.zzp = z;
        return this;
    }

    public final zzfcn zzy(boolean z) {
        this.zzq = z;
        return this;
    }

    public final zzfcn zzz(boolean z) {
        this.zzs = true;
        return this;
    }
}
