package org.objectweb.asm.tree;

import java.util.ArrayList;
import java.util.List;
import org.objectweb.asm.ClassVisitor;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ClassNode extends ClassVisitor {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<MethodNode> f14140Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<FieldNode> f14141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<InnerClassNode> f14142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<String> f14143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ClassNode() {
        this(589824);
        if (getClass() != ClassNode.class) {
            throw new IllegalStateException();
        }
    }

    public ClassNode(int i) {
        super(i);
        this.f14143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f14142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f14141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        this.f14140Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    }
}
