package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgen {
    public static final zzgex zza(zzgex zzgexVar) throws GeneralSecurityException {
        if (zzgexVar != null) {
            return zzgexVar;
        }
        return zzgez.zza(zzb(null).zzaV());
    }

    public static final zzgtq zzb(zzgex zzgexVar) {
        try {
            return ((zzgoj) zzgnj.zzc().zze(null, zzgoj.class)).zzc();
        } catch (GeneralSecurityException e) {
            throw new zzgot("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat(AbstractJsonLexerKt.NULL), e);
        }
    }
}
