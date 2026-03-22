package com.applovin.impl;

import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class d1 {

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleDateFormat f3110a;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        f3110a = simpleDateFormat;
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
    }

    public static synchronized String a(long j) {
        String format;
        synchronized (d1.class) {
            format = f3110a.format(new Date(j));
        }
        return format;
    }
}
