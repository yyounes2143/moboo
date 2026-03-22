package org.jacoco.core;

import java.util.ResourceBundle;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class JaCoCo {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13482Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13483Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f13486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        ResourceBundle bundle = ResourceBundle.getBundle("org.jacoco.core.jacoco");
        f13486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle.getString("VERSION");
        String string = bundle.getString("COMMITID");
        f13485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = string;
        f13484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = string.substring(0, 7);
        f13483Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle.getString("HOMEURL");
        f13482Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle.getString("RUNTIMEPACKAGE");
    }
}
