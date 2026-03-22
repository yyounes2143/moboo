package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgif {
    @Nullable
    private zzgih zza;
    @Nullable
    private String zzb;
    @Nullable
    private zzgig zzc;
    @Nullable
    private zzgfl zzd;

    private zzgif() {
        throw null;
    }

    public final zzgif zza(zzgfl zzgflVar) {
        this.zzd = zzgflVar;
        return this;
    }

    public final zzgif zzb(zzgig zzgigVar) {
        this.zzc = zzgigVar;
        return this;
    }

    public final zzgif zzc(String str) {
        this.zzb = str;
        return this;
    }

    public final zzgif zzd(zzgih zzgihVar) {
        this.zza = zzgihVar;
        return this;
    }

    public final zzgij zze() throws GeneralSecurityException {
        if (this.zza == null) {
            this.zza = zzgih.zzb;
        }
        if (this.zzb != null) {
            zzgig zzgigVar = this.zzc;
            if (zzgigVar != null) {
                zzgfl zzgflVar = this.zzd;
                if (zzgflVar != null) {
                    if (!zzgflVar.zza()) {
                        if ((zzgigVar.equals(zzgig.zza) && (zzgflVar instanceof zzggx)) || ((zzgigVar.equals(zzgig.zzc) && (zzgflVar instanceof zzgho)) || ((zzgigVar.equals(zzgig.zzb) && (zzgflVar instanceof zzgjl)) || ((zzgigVar.equals(zzgig.zzd) && (zzgflVar instanceof zzggc)) || ((zzgigVar.equals(zzgig.zze) && (zzgflVar instanceof zzggm)) || (zzgigVar.equals(zzgig.zzf) && (zzgflVar instanceof zzghi))))))) {
                            return new zzgij(this.zza, this.zzb, this.zzc, this.zzd, null);
                        }
                        String zzgigVar2 = this.zzc.toString();
                        String valueOf = String.valueOf(this.zzd);
                        throw new GeneralSecurityException("Cannot use parsing strategy " + zzgigVar2 + " when new keys are picked according to " + valueOf + ".");
                    }
                    throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
                }
                throw new GeneralSecurityException("dekParametersForNewKeys must be set");
            }
            throw new GeneralSecurityException("dekParsingStrategy must be set");
        }
        throw new GeneralSecurityException("kekUri must be set");
    }

    public /* synthetic */ zzgif(zzgii zzgiiVar) {
    }
}
