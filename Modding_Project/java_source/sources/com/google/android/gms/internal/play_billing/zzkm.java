package com.google.android.gms.internal.play_billing;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzkm implements zzhm {
    static final zzhm zza = new zzkm();

    private zzkm() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final boolean zza(int i) {
        zzkn zzknVar;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        zzknVar = null;
                    } else {
                        zzknVar = zzkn.ALTERNATIVE_BILLING_ACTION;
                    }
                } else {
                    zzknVar = zzkn.LOCAL_PURCHASES_UPDATED_ACTION;
                }
            } else {
                zzknVar = zzkn.PURCHASES_UPDATED_ACTION;
            }
        } else {
            zzknVar = zzkn.BROADCAST_ACTION_UNSPECIFIED;
        }
        if (zzknVar != null) {
            return true;
        }
        return false;
    }
}
