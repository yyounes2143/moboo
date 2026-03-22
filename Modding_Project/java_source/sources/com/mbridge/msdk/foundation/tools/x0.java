package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.foundation.tools.FastKV;
import java.util.LinkedHashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class x0 implements FastKV.b<Set<String>> {

    /* renamed from: a  reason: collision with root package name */
    static final x0 f9122a = new x0();

    private x0() {
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.b
    /* renamed from: b */
    public Set<String> a(byte[] bArr, int i, int i2) {
        int i3;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i2 > 0) {
            z zVar = new z(bArr, i);
            int i4 = i + i2;
            while (true) {
                i3 = zVar.b;
                if (i3 >= i4) {
                    break;
                }
                linkedHashSet.add(zVar.e(zVar.g()));
            }
            if (i3 != i4) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.b
    public byte[] a(Set<String> set) {
        if (set.isEmpty()) {
            return new byte[0];
        }
        int size = set.size();
        int[] iArr = new int[size];
        String[] strArr = new String[size];
        int i = 0;
        int i2 = 0;
        for (String str : set) {
            if (str == null) {
                i += 5;
                iArr[i2] = -1;
            } else {
                int b = z.b(str);
                strArr[i2] = str;
                iArr[i2] = b;
                i += z.f(b) + b;
            }
            i2++;
        }
        z zVar = new z(i);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            zVar.h(i4);
            if (i4 >= 0) {
                zVar.c(strArr[i3]);
            }
        }
        return zVar.f9123a;
    }

    @Override // com.mbridge.msdk.foundation.tools.FastKV.b
    public String a() {
        return "StringSet";
    }
}
