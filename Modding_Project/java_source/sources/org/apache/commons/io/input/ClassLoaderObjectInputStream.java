package org.apache.commons.io.input;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Proxy;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ClassLoaderObjectInputStream extends ObjectInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ClassLoader f13359Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
        try {
            return Class.forName(objectStreamClass.getName(), false, this.f13359Wwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (ClassNotFoundException unused) {
            return super.resolveClass(objectStreamClass);
        }
    }

    @Override // java.io.ObjectInputStream
    public Class<?> resolveProxyClass(String[] strArr) throws IOException, ClassNotFoundException {
        Class[] clsArr = new Class[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            clsArr[i] = Class.forName(strArr[i], false, this.f13359Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
        try {
            return Proxy.getProxyClass(this.f13359Wwwwwwwwwwwwwwwwwwwwwwwww, clsArr);
        } catch (IllegalArgumentException unused) {
            return super.resolveProxyClass(strArr);
        }
    }
}
