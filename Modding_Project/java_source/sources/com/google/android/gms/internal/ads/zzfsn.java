package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfsn extends zzftp {
    private final int zza;
    @Nullable
    private final String zzb;

    public /* synthetic */ zzfsn(int i, String str, zzfsm zzfsmVar) {
        this.zza = i;
        this.zzb = str;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzftp) {
            zzftp zzftpVar = (zzftp) obj;
            if (this.zza == zzftpVar.zza() && ((str = this.zzb) != null ? str.equals(zzftpVar.zzb()) : zzftpVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.zzb;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode ^ ((this.zza ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "OverlayDisplayState{statusCode=" + this.zza + ", sessionToken=" + this.zzb + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzftp
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzftp
    @Nullable
    public final String zzb() {
        return this.zzb;
    }
}
