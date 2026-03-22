package org.objectweb.asm.tree;

import java.util.ArrayList;
import org.objectweb.asm.MethodVisitor;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class MethodNode extends MethodVisitor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public InsnList f14152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f14153Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* renamed from: org.objectweb.asm.tree.MethodNode$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    class AnonymousClass1 extends ArrayList<Object> {
        public AnonymousClass1(int i) {
            super(i);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(Object obj) {
            MethodNode.this.f14153Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
            return super.add(obj);
        }
    }

    public MethodNode() {
        this(589824);
        if (getClass() != MethodNode.class) {
            throw new IllegalStateException();
        }
    }

    public MethodNode(int i) {
        super(i);
        this.f14152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new InsnList();
    }
}
