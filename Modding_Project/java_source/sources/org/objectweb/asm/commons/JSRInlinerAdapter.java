package org.objectweb.asm.commons;

import java.util.AbstractMap;
import java.util.BitSet;
import java.util.Map;
import java.util.Set;
import org.objectweb.asm.Opcodes;
import org.objectweb.asm.tree.LabelNode;
import org.objectweb.asm.tree.MethodNode;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class JSRInlinerAdapter extends MethodNode implements Opcodes {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitSet f14117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public class Instantiation extends AbstractMap<LabelNode, LabelNode> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ JSRInlinerAdapter f14118Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<LabelNode, LabelNode> f14119Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BitSet f14120Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Instantiation f14121Wwwwwwwwwwwwwwwwwwwwwwwww;

        public LabelNode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LabelNode labelNode) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f14118Wwwwwwwwwwwwwwwwwwwwww.f14152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(labelNode)).f14119Wwwwwwwwwwwwwwwwwwwwwww.get(labelNode);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public LabelNode get(Object obj) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((LabelNode) obj);
        }

        public Instantiation Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (!this.f14120Wwwwwwwwwwwwwwwwwwwwwwww.get(i)) {
                return null;
            }
            if (!this.f14118Wwwwwwwwwwwwwwwwwwwwww.f14117Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i)) {
                return this;
            }
            Instantiation instantiation = this;
            for (Instantiation instantiation2 = this.f14121Wwwwwwwwwwwwwwwwwwwwwwwww; instantiation2 != null; instantiation2 = instantiation2.f14121Wwwwwwwwwwwwwwwwwwwwwwwww) {
                if (instantiation2.f14120Wwwwwwwwwwwwwwwwwwwwwwww.get(i)) {
                    instantiation = instantiation2;
                }
            }
            return instantiation;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<LabelNode, LabelNode>> entrySet() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            throw new UnsupportedOperationException();
        }
    }
}
