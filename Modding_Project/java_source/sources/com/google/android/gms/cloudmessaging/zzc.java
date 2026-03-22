package com.google.android.gms.cloudmessaging;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzc extends ClassLoader {
    @Override // java.lang.ClassLoader
    public final Class loadClass(String str, boolean z) throws ClassNotFoundException {
        if (Objects.equals(str, "com.google.android.gms.iid.MessengerCompat")) {
            return zzd.class;
        }
        return super.loadClass(str, z);
    }
}
