package org.jacoco.core.internal.data;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class CRC64 {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final long[] f13527Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new long[256];

    static {
        for (int i = 0; i < 256; i++) {
            long j = i;
            for (int i2 = 0; i2 < 8; i2++) {
                if ((j & 1) == 1) {
                    j = (j >>> 1) ^ (-2882303761517117440L);
                } else {
                    j >>>= 1;
                }
            }
            f13527Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = j;
        }
    }
}
