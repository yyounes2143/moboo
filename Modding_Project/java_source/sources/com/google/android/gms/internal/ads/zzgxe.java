package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgxe extends zzgxh {
    private final int zzc;
    private final int zzd;

    public zzgxe(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgxk.zzq(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh, com.google.android.gms.internal.ads.zzgxk
    public final byte zza(int i) {
        zzgxk.zzy(i, this.zzd);
        return ((zzgxh) this).zza[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.ads.zzgxh, com.google.android.gms.internal.ads.zzgxk
    public final byte zzb(int i) {
        return ((zzgxh) this).zza[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.ads.zzgxh
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh, com.google.android.gms.internal.ads.zzgxk
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgxh, com.google.android.gms.internal.ads.zzgxk
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(((zzgxh) this).zza, this.zzc + i, bArr, i2, i3);
    }
}
