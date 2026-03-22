package com.tencent.liteav.txcplayer.common;

import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f10291a = null;
    private static int b = -1;
    private static List<String> c;

    public static void a(String str) {
        f10291a = str;
    }

    public static int b() {
        return b;
    }

    public static List<String> c() {
        return c;
    }

    public static void a(int i) {
        b = i;
    }

    public static String a() {
        return f10291a;
    }

    public static void a(List<String> list) {
        c = new ArrayList(list);
    }
}
