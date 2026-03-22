package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaql {
    protected static final Comparator zza = new zzaqk();
    private final List zzb = new ArrayList();
    private final List zzc = new ArrayList(64);
    private int zzd = 0;

    public zzaql(int i) {
    }

    private final synchronized void zzc() {
        while (this.zzd > 4096) {
            byte[] bArr = (byte[]) this.zzb.remove(0);
            this.zzc.remove(bArr);
            this.zzd -= bArr.length;
        }
    }

    public final synchronized void zza(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            if (length <= 4096) {
                this.zzb.add(bArr);
                List list = this.zzc;
                int binarySearch = Collections.binarySearch(list, bArr, zza);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                list.add(binarySearch, bArr);
                this.zzd += length;
                zzc();
            }
        }
    }

    public final synchronized byte[] zzb(int i) {
        int i2 = 0;
        while (true) {
            List list = this.zzc;
            if (i2 < list.size()) {
                byte[] bArr = (byte[]) list.get(i2);
                int length = bArr.length;
                if (length >= i) {
                    this.zzd -= length;
                    list.remove(i2);
                    this.zzb.remove(bArr);
                    return bArr;
                }
                i2++;
            } else {
                return new byte[i];
            }
        }
    }
}
