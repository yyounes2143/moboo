package org.objectweb.asm.signature;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class SignatureVisitor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14134Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SignatureVisitor(int i) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        this.f14134Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }
}
