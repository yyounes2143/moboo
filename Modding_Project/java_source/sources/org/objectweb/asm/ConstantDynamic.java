package org.objectweb.asm;

import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ConstantDynamic {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object[] f14070Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handle f14071Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConstantDynamic)) {
            return false;
        }
        ConstantDynamic constantDynamic = (ConstantDynamic) obj;
        if (this.f14073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(constantDynamic.f14073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f14072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(constantDynamic.f14072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f14071Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(constantDynamic.f14071Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Arrays.equals(this.f14070Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, constantDynamic.f14070Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f14073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() ^ Integer.rotateLeft(this.f14072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode(), 8)) ^ Integer.rotateLeft(this.f14071Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode(), 16)) ^ Integer.rotateLeft(Arrays.hashCode(this.f14070Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), 24);
    }

    public String toString() {
        return this.f14073Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " : " + this.f14072Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ' ' + this.f14071Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ' ' + Arrays.toString(this.f14070Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
