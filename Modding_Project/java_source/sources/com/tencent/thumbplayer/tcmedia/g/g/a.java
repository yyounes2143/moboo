package com.tencent.thumbplayer.tcmedia.g.g;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class a {
    private long b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean g;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Long> f10641a = new HashMap();
    private String f = "";

    public a(boolean z) {
        this.g = z;
    }

    public final void a() {
        this.f = "";
        this.f10641a.clear();
        this.b = System.currentTimeMillis();
    }

    public final void b() {
        this.f10641a.put("createCodec", Long.valueOf(System.currentTimeMillis() - this.b));
    }

    public final void c() {
        this.b = System.currentTimeMillis();
    }

    public final void d() {
        this.f10641a.put("startCodec", Long.valueOf(System.currentTimeMillis() - this.b));
    }

    public final String e() {
        if (TextUtils.isEmpty(this.f)) {
            StringBuilder sb = new StringBuilder("{");
            sb.append("\"isVideo\":");
            sb.append(this.g + " ,");
            if (this.e) {
                sb.append("\"isReuse\":");
                sb.append(this.c + " ,");
            }
            sb.append("\"reuseEnable\":");
            sb.append(this.d + " ,");
            long j = 0;
            for (Map.Entry<String, Long> entry : this.f10641a.entrySet()) {
                if (entry != null) {
                    j += entry.getValue().longValue();
                }
                sb.append("\"" + ((Object) entry.getKey()) + "\":");
                sb.append(entry.getValue().longValue() + " ,");
            }
            sb.append("\"totalCodec\":");
            sb.append(j);
            sb.append("}");
            this.f = sb.toString();
        }
        return this.f;
    }

    private final void c(boolean z) {
        this.c = z;
        this.e = true;
    }

    private final void d(boolean z) {
        this.d = z;
    }

    public final void a(boolean z) {
        d(z);
        this.b = System.currentTimeMillis();
    }

    public final void b(boolean z) {
        c(z);
        this.f10641a.put("configCodec", Long.valueOf(System.currentTimeMillis() - this.b));
    }
}
