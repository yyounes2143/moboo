package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflc {
    private final zzfln zza;
    private final zzfln zzb;
    private final boolean zzc;
    private final zzflg zzd;
    private final zzflj zze;

    private zzflc(zzflg zzflgVar, zzflj zzfljVar, zzfln zzflnVar, zzfln zzflnVar2, boolean z) {
        this.zzd = zzflgVar;
        this.zze = zzfljVar;
        this.zza = zzflnVar;
        if (zzflnVar2 == null) {
            this.zzb = zzfln.NONE;
        } else {
            this.zzb = zzflnVar2;
        }
        this.zzc = z;
    }

    public static zzflc zza(zzflg zzflgVar, zzflj zzfljVar, zzfln zzflnVar, zzfln zzflnVar2, boolean z) {
        zzfmx.zzc(zzflgVar, "CreativeType is null");
        zzfmx.zzc(zzfljVar, "ImpressionType is null");
        zzfmx.zzc(zzflnVar, "Impression owner is null");
        if (zzflnVar != zzfln.NONE) {
            if (zzflgVar == zzflg.DEFINED_BY_JAVASCRIPT && zzflnVar == zzfln.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            if (zzfljVar == zzflj.DEFINED_BY_JAVASCRIPT && zzflnVar == zzfln.NATIVE) {
                throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
            }
            return new zzflc(zzflgVar, zzfljVar, zzflnVar, zzflnVar2, z);
        }
        throw new IllegalArgumentException("Impression owner is none");
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        zzfmt.zze(jSONObject, "impressionOwner", this.zza);
        zzfmt.zze(jSONObject, "mediaEventsOwner", this.zzb);
        zzfmt.zze(jSONObject, "creativeType", this.zzd);
        zzfmt.zze(jSONObject, "impressionType", this.zze);
        zzfmt.zze(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.zzc));
        return jSONObject;
    }
}
