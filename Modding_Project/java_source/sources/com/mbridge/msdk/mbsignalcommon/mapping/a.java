package com.mbridge.msdk.mbsignalcommon.mapping;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a extends Throwable {

    /* renamed from: a  reason: collision with root package name */
    private Class<?> f9291a;
    private String b;

    public a(String str) {
        super(str);
    }

    public void a(Class<?> cls) {
        this.f9291a = cls;
    }

    @Override // java.lang.Throwable
    public String toString() {
        if (getCause() != null) {
            return getClass().getName() + ": " + getCause();
        }
        return super.toString();
    }

    public a(Exception exc) {
        super(exc);
    }

    public void a(String str) {
        this.b = str;
    }
}
