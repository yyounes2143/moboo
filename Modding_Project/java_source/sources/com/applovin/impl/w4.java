package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class w4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f3803a;
    protected final String b;
    protected final com.applovin.impl.sdk.o c;
    private final Context d;
    private String e;
    private boolean f;

    public w4(String str, com.applovin.impl.sdk.k kVar) {
        this(str, kVar, false, null);
    }

    public Context a() {
        return this.d;
    }

    public com.applovin.impl.sdk.k b() {
        return this.f3803a;
    }

    public String c() {
        return this.b;
    }

    public boolean d() {
        return this.f;
    }

    public w4(String str, com.applovin.impl.sdk.k kVar, boolean z) {
        this(str, kVar, z, null);
    }

    public void a(String str) {
        this.e = str;
    }

    public ScheduledFuture b(final Thread thread, final long j) {
        if (j <= 0) {
            return null;
        }
        com.applovin.impl.sdk.k kVar = this.f3803a;
        return this.f3803a.q0().b(new f6(kVar, "timeout:" + this.b, new Runnable() { // from class: com.applovin.impl.Xxxxx
            @Override // java.lang.Runnable
            public final void run() {
                w4.this.a(thread, j);
            }
        }), r5.b.TIMEOUT, j);
    }

    public w4(String str, com.applovin.impl.sdk.k kVar, String str2) {
        this(str, kVar, false, str2);
    }

    public void a(boolean z) {
        this.f = z;
    }

    public w4(String str, com.applovin.impl.sdk.k kVar, boolean z, String str2) {
        this.b = str;
        this.f3803a = kVar;
        this.c = kVar.O();
        this.d = com.applovin.impl.sdk.k.o();
        this.f = z;
        this.e = str2;
    }

    public void a(Throwable th) {
        Map map = CollectionUtils.map("source", this.b);
        map.put("top_main_method", th.toString());
        map.put("details", StringUtils.emptyIfNull(this.e));
        this.f3803a.E().d(y1.z0, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Thread thread, long j) {
        HashMap<String, String> hashMap = CollectionUtils.hashMap("name", thread.getState().name());
        if (StringUtils.isValidString(this.e)) {
            hashMap.put("details", this.e);
        }
        this.f3803a.E().a(y1.A0, this.b, hashMap);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.k(str, "Task has been executing for over " + TimeUnit.MILLISECONDS.toSeconds(j) + " seconds");
        }
    }
}
