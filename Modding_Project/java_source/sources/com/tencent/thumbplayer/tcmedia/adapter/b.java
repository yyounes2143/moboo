package com.tencent.thumbplayer.tcmedia.adapter;

import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class b {
    private static String t = "TPPlaybackInfo";

    /* renamed from: a  reason: collision with root package name */
    private String f10529a;
    private String b;
    private int c;
    private int d;
    private long e;
    private long f;
    private long g;
    private String h;
    private int i;
    private long j;
    private int k;
    private long l;
    private int m;
    private long n;
    private long o;
    private long p;
    private int q;
    private String r;
    private long[] s = {-1, -1};
    private int u;

    public long a() {
        return this.e;
    }

    public long b() {
        return this.f;
    }

    public String c() {
        return this.f10529a;
    }

    public String d() {
        return this.r;
    }

    public int e() {
        return this.c;
    }

    public long f() {
        return this.g;
    }

    public long g() {
        return this.j;
    }

    public int h() {
        return this.m;
    }

    public long i() {
        return this.n;
    }

    public long[] j() {
        return this.s;
    }

    public long k() {
        return this.o;
    }

    public long l() {
        return this.p;
    }

    public int m() {
        return this.u;
    }

    public int n() {
        return this.d;
    }

    public void o() {
        this.f10529a = null;
        this.b = null;
        this.c = 0;
        this.d = 0;
        this.e = 0L;
        this.f = 0L;
        this.g = 0L;
        this.h = null;
        this.i = 0;
        this.j = 0L;
        this.k = 0;
        this.l = 0L;
        this.q = 2;
        this.m = 0;
        this.n = 0L;
        this.o = 0L;
        this.p = 0L;
        this.u = 0;
        this.s = new long[]{-1, -1};
    }

    public static b a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new b();
        }
        String[] split = str.split("\n");
        HashMap hashMap = new HashMap();
        for (int i = 0; i < split.length; i++) {
            if (!split[i].startsWith("#") && split[i].contains("=")) {
                String[] split2 = split[i].split("=");
                if (split2 == null || split2.length < 2) {
                    String str2 = t;
                    StringBuilder sb = new StringBuilder("parseInfo, ");
                    sb.append((split2 == null || split2.length <= 0) ? "param null, " : split2[0]);
                    sb.append("is empty");
                    TPLogUtil.i(str2, sb.toString());
                } else {
                    hashMap.put(split2[0], split2[1]);
                }
            }
        }
        b bVar = new b();
        if (hashMap.containsKey("ContainerFormat")) {
            bVar.b((String) hashMap.get("ContainerFormat"));
        }
        if (hashMap.containsKey("VideoCodec")) {
            bVar.d((String) hashMap.get("VideoCodec"));
        }
        if (hashMap.containsKey("AudioCodec")) {
            bVar.e((String) hashMap.get("AudioCodec"));
        }
        if (hashMap.containsKey(HttpHeaders.WIDTH)) {
            bVar.a(Long.valueOf((String) hashMap.get(HttpHeaders.WIDTH)).longValue());
        }
        if (hashMap.containsKey("Height")) {
            bVar.b(Long.valueOf((String) hashMap.get("Height")).longValue());
        }
        if (hashMap.containsKey("VideoBitRate")) {
            bVar.c(Long.valueOf((String) hashMap.get("VideoBitRate")).longValue());
        }
        if (hashMap.containsKey("AudioBitRate")) {
            bVar.d(Long.valueOf((String) hashMap.get("AudioBitRate")).longValue());
        }
        if (hashMap.containsKey("SampleRate")) {
            bVar.e(Long.valueOf((String) hashMap.get("SampleRate")).longValue());
        }
        if (hashMap.containsKey("Channels")) {
            bVar.d(Integer.valueOf((String) hashMap.get("Channels")).intValue());
        }
        if (hashMap.containsKey("Definition")) {
            bVar.c((String) hashMap.get("Definition"));
        }
        return bVar;
    }

    public void b(int i) {
        this.q = i;
    }

    public void c(int i) {
        this.i = i;
    }

    public void d(int i) {
        this.k = i;
    }

    public void e(int i) {
        this.m = i;
    }

    public void f(int i) {
        this.u = i;
    }

    public void g(int i) {
        this.d = i;
    }

    public void h(long j) {
        this.p = j;
    }

    public void a(int i) {
        this.c = i;
    }

    public void b(long j) {
        this.f = j;
    }

    public void c(long j) {
        this.g = j;
    }

    public void d(long j) {
        this.j = j;
    }

    public void e(long j) {
        this.l = j;
    }

    public void f(long j) {
        this.n = j;
    }

    public void g(long j) {
        this.o = j;
    }

    public void a(long j) {
        this.e = j;
    }

    public void b(String str) {
        this.f10529a = str;
    }

    public void c(String str) {
        this.r = str;
    }

    public void d(String str) {
        this.b = str;
    }

    public void e(String str) {
        this.h = str;
    }

    public void a(long[] jArr) {
        this.s = jArr;
    }
}
