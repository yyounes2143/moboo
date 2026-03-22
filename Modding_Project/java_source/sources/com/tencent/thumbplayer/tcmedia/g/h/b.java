package com.tencent.thumbplayer.tcmedia.g.h;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static int f10642a = 2;
    private static boolean b = true;
    private static a c = new a() { // from class: com.tencent.thumbplayer.tcmedia.g.h.b.1
        @Override // com.tencent.thumbplayer.tcmedia.g.h.a
        public final void d(String str, String str2) {
        }

        @Override // com.tencent.thumbplayer.tcmedia.g.h.a
        public final void i(String str, String str2) {
        }

        @Override // com.tencent.thumbplayer.tcmedia.g.h.a
        public final void v(String str, String str2) {
        }

        @Override // com.tencent.thumbplayer.tcmedia.g.h.a
        public final void e(String str, String str2, Throwable th) {
        }

        @Override // com.tencent.thumbplayer.tcmedia.g.h.a
        public final void w(String str, String str2, Throwable th) {
        }
    };

    public static void a(a aVar) {
        c = aVar;
    }

    public static void b(String str, String str2) {
        if (a(3)) {
            c.d("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void c(String str, String str2) {
        if (a(4)) {
            c.i("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void d(String str, String str2) {
        if (a(5)) {
            c.w("TMediaCodec.".concat(String.valueOf(str)), str2, null);
        }
    }

    public static void e(String str, String str2) {
        if (a(6)) {
            c.e("TMediaCodec.".concat(String.valueOf(str)), str2, null);
        }
    }

    public static void a(String str, String str2) {
        if (a(2)) {
            c.v("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (a(6)) {
            c.e("TMediaCodec.".concat(String.valueOf(str)), str2, th);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (a(5)) {
            c.w("TMediaCodec.".concat(String.valueOf(str)), str2, th);
        }
    }

    public static void a(boolean z) {
        b = z;
    }

    public static boolean a() {
        return b;
    }

    public static boolean a(int i) {
        return b && i >= f10642a;
    }
}
