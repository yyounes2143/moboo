package org.objectweb.asm.tree.analysis;

import java.util.Set;
import org.objectweb.asm.tree.AbstractInsnNode;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class SourceValue implements Value {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<AbstractInsnNode> f14178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14179Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public boolean equals(Object obj) {
        if (!(obj instanceof SourceValue)) {
            return false;
        }
        SourceValue sourceValue = (SourceValue) obj;
        if (this.f14179Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != sourceValue.f14179Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || !this.f14178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(sourceValue.f14178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f14178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }
}
