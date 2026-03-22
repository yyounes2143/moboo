package org.objectweb.asm;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class ClassVisitor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ClassVisitor f14068Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14069Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ClassVisitor(int i) {
        this(i, null);
    }

    public ClassVisitor(int i, ClassVisitor classVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
        this.f14069Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f14068Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = classVisitor;
    }
}
