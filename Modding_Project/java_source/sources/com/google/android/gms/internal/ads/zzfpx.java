package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfpx {
    @VisibleForTesting
    final zzfqa zza;
    @VisibleForTesting
    final boolean zzb;

    private zzfpx(zzfqa zzfqaVar) {
        boolean z;
        this.zza = zzfqaVar;
        if (zzfqaVar != null) {
            z = true;
        } else {
            z = false;
        }
        this.zzb = z;
    }

    public static zzfpx zzb(Context context, String str, String str2) {
        zzfqa zzfpyVar;
        try {
            try {
                try {
                    IBinder instantiate = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (instantiate == null) {
                        zzfpyVar = null;
                    } else {
                        IInterface queryLocalInterface = instantiate.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        if (queryLocalInterface instanceof zzfqa) {
                            zzfpyVar = (zzfqa) queryLocalInterface;
                        } else {
                            zzfpyVar = new zzfpy(instantiate);
                        }
                    }
                    zzfpyVar.zze(ObjectWrapper.wrap(context), str, null);
                    return new zzfpx(zzfpyVar);
                } catch (Exception e) {
                    throw new zzfoz(e);
                }
            } catch (Exception e2) {
                throw new zzfoz(e2);
            }
        } catch (RemoteException | zzfoz | NullPointerException | SecurityException unused) {
            return new zzfpx(new zzfqb());
        }
    }

    public static zzfpx zzc() {
        return new zzfpx(new zzfqb());
    }

    public final zzfpv zza(byte[] bArr) {
        return new zzfpv(this, bArr, null);
    }
}
