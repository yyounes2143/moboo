package org.apache.commons.io.serialization;

import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ValidatingObjectInputStream extends ObjectInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ClassNameMatcher> f13464Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ClassNameMatcher> f13465Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) throws InvalidClassException {
        for (ClassNameMatcher classNameMatcher : this.f13464Wwwwwwwwwwwwwwwwwwwwwwww) {
            if (classNameMatcher.matches(str)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            }
        }
        for (ClassNameMatcher classNameMatcher2 : this.f13465Wwwwwwwwwwwwwwwwwwwwwwwww) {
            if (classNameMatcher2.matches(str)) {
                return;
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) throws InvalidClassException {
        throw new InvalidClassException("Class name not accepted: " + str);
    }

    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(objectStreamClass.getName());
        return super.resolveClass(objectStreamClass);
    }
}
