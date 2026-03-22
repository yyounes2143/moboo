package org.objectweb.asm.tree.analysis;

import java.util.List;
import org.objectweb.asm.Type;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class SimpleVerifier extends BasicVerifier {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ClassLoader f14169Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14170Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Type> f14171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Type f14172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Type f14173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SimpleVerifier() {
        this(null, null, false);
    }

    public SimpleVerifier(Type type, Type type2, boolean z) {
        this(type, type2, null, z);
    }

    public SimpleVerifier(Type type, Type type2, List<Type> list, boolean z) {
        this(589824, type, type2, list, z);
        if (getClass() != SimpleVerifier.class) {
            throw new IllegalStateException();
        }
    }

    public SimpleVerifier(int i, Type type, Type type2, List<Type> list, boolean z) {
        super(i);
        this.f14169Wwwwwwwwwwwwwwwwwwwwwwwwwwww = getClass().getClassLoader();
        this.f14173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = type;
        this.f14172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = type2;
        this.f14171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f14170Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }
}
