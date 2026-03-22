package org.jacoco.core.internal.flow;

import org.objectweb.asm.ClassVisitor;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class ClassProbesVisitor extends ClassVisitor {
    public ClassProbesVisitor() {
        this(null);
    }

    public ClassProbesVisitor(ClassVisitor classVisitor) {
        super(589824, classVisitor);
    }
}
