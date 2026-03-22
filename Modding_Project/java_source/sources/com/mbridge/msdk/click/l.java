package com.mbridge.msdk.click;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.click.o;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.task.a;
import java.util.concurrent.Semaphore;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class l extends com.mbridge.msdk.foundation.same.task.a {
    private final Context b;
    private final String c;
    private final String d;
    private final String e;
    private final CampaignEx f;
    private final boolean g;
    private final boolean h;
    private final int i;
    private final boolean j;
    private com.mbridge.msdk.click.entity.a k;
    private JumpLoaderResult l;
    private g m;
    private k n;

    /* renamed from: a  reason: collision with root package name */
    private final Semaphore f8782a = new Semaphore(0);
    private final o.f o = new a();

    public l(com.mbridge.msdk.click.entity.b bVar) {
        this.b = bVar.c();
        this.c = bVar.e();
        this.d = bVar.b();
        this.e = bVar.d();
        this.f = bVar.a();
        this.g = bVar.g();
        this.h = bVar.i();
        this.i = bVar.f();
        this.j = bVar.h();
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void runTask() {
        JumpLoaderResult jumpLoaderResult;
        g gVar = this.m;
        if (gVar != null) {
            gVar.b(null);
        }
        JumpLoaderResult jumpLoaderResult2 = new JumpLoaderResult();
        this.l = jumpLoaderResult2;
        jumpLoaderResult2.setUrl(this.c);
        JumpLoaderResult c = c(this.c);
        this.l = c;
        if (c != null && !TextUtils.isEmpty(c.getExceptionMsg())) {
            this.l.setSuccess(true);
        }
        if (this.mState != a.b.RUNNING) {
            k kVar = this.n;
            if (kVar != null) {
                kVar.a(this.l);
                return;
            }
            return;
        }
        JumpLoaderResult jumpLoaderResult3 = this.l;
        if (jumpLoaderResult3 != null && !jumpLoaderResult3.isSuccess()) {
            k kVar2 = this.n;
            if (kVar2 != null) {
                kVar2.a(this.l);
                return;
            }
            return;
        }
        com.mbridge.msdk.click.entity.a aVar = this.k;
        if (aVar != null && (jumpLoaderResult = this.l) != null) {
            jumpLoaderResult.setStatusCode(aVar.f);
        }
        m.a(this.f, this.l, this.k, this.d, this.e, this.b, this.o, this.n, this.f8782a);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements o.f {
        public a() {
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean a(String str) {
            boolean b = l.this.b(str);
            if (b) {
                a();
            }
            return b;
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean b(String str) {
            return false;
        }

        @Override // com.mbridge.msdk.click.o.f
        public boolean c(String str) {
            boolean b = l.this.b(str);
            if (b) {
                a();
            }
            return b;
        }

        @Override // com.mbridge.msdk.click.o.f
        public void a(String str, boolean z, String str2) {
            l.this.b(str);
            l.this.l.setContent(str2);
            a();
        }

        private void a() {
            synchronized (this) {
                try {
                    l.this.l.setSuccess(true);
                    if (l.this.n != null) {
                        l.this.n.a(l.this.l);
                    }
                    l.this.a();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.mbridge.msdk.click.o.f
        public void a(int i, String str, String str2, String str3) {
            if (!TextUtils.isEmpty(str2)) {
                l.this.l.setExceptionMsg(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                l.this.l.setContent(str3);
            }
            l.this.b(str);
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        return m.a(str, this.f, this.l);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x016b A[EDGE_INSN: B:72:0x016b->B:66:0x016b ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.mbridge.msdk.click.entity.JumpLoaderResult c(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.l.c(java.lang.String):com.mbridge.msdk.click.entity.JumpLoaderResult");
    }

    public void a(g gVar) {
        this.m = gVar;
    }

    public void a(k kVar) {
        this.n = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f8782a.release();
    }

    private String a(String str) {
        if (this.j) {
            String a2 = com.mbridge.msdk.setting.b.a(this.b, str);
            if (!TextUtils.isEmpty(a2)) {
                str = str + a2;
            }
        }
        return com.mbridge.msdk.util.b.a() ? m.a(this.f, str) : str;
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void cancelTask() {
    }

    @Override // com.mbridge.msdk.foundation.same.task.a
    public void pauseTask(boolean z) {
    }
}
