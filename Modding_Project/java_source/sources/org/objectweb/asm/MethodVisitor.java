package org.objectweb.asm;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class MethodVisitor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodVisitor f14080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14081Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public MethodVisitor(int i) {
        this(i, null);
    }

    public MethodVisitor(int i, MethodVisitor methodVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
        this.f14081Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f14080Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = methodVisitor;
    }
}
