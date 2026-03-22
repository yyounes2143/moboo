package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.click.o;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.task.a;
import com.mbridge.msdk.foundation.tools.s0;
import java.util.concurrent.Semaphore;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class p extends f implements a.InterfaceC0108a {
    private g b;
    private JumpLoaderResult c;
    private boolean e;
    private Context f;
    private com.mbridge.msdk.foundation.same.task.b g;
    private com.mbridge.msdk.click.entity.a h;
    private boolean d = true;
    private Handler i = new Handler(Looper.getMainLooper());

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements k {
        public a() {
        }

        @Override // com.mbridge.msdk.click.k
        public void a(JumpLoaderResult jumpLoaderResult) {
            p.this.c = jumpLoaderResult;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (p.this.b != null) {
                if (p.this.c.isSuccess()) {
                    p.this.b.a(p.this.c);
                } else {
                    p.this.b.a(p.this.c, p.this.c.getMsg());
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c extends com.mbridge.msdk.foundation.same.task.a {
        private final Context b;
        private String c;
        private String d;
        private String e;
        private CampaignEx f;
        private boolean g;
        private boolean h;
        private int i;

        /* renamed from: a  reason: collision with root package name */
        private final Semaphore f8793a = new Semaphore(0);
        private o.f j = new a();

        public c(Context context, String str, String str2, String str3, CampaignEx campaignEx, boolean z, boolean z2, int i) {
            this.b = context;
            this.c = str;
            this.d = str2;
            this.e = str3;
            this.f = campaignEx;
            this.g = z;
            this.h = z2;
            this.i = i;
        }

        private boolean a(int i) {
            return i == 200;
        }

        private boolean b(int i) {
            return i == 301 || i == 302 || i == 307;
        }

        private boolean c(String str) {
            return str.startsWith("/");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean d(String str) {
            return q.a(str, this.f, p.this.c);
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void runTask() {
            if (p.this.b != null) {
                p.this.b.b(null);
            }
            p.this.c = new JumpLoaderResult();
            p.this.c.setUrl(this.c);
            p.this.c = a(this.c, this.g, this.h, this.f, this.i);
            if (!TextUtils.isEmpty(p.this.c.getExceptionMsg())) {
                p.this.c.setSuccess(true);
            }
            if (!p.this.d || !p.this.c.isSuccess()) {
                return;
            }
            if (p.this.h != null) {
                p.this.c.setStatusCode(p.this.h.f);
            }
            q.a(this.f, p.this.c, p.this.h, this.d, this.e, this.b, this.j, this.f8793a);
        }

        /* compiled from: Proguard */
        /* loaded from: classes5.dex */
        public class a implements o.f {
            public a() {
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean a(String str) {
                boolean d = c.this.d(str);
                if (d) {
                    a();
                }
                return d;
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean b(String str) {
                return false;
            }

            @Override // com.mbridge.msdk.click.o.f
            public boolean c(String str) {
                boolean d = c.this.d(str);
                if (d) {
                    a();
                }
                return d;
            }

            @Override // com.mbridge.msdk.click.o.f
            public void a(String str, boolean z, String str2) {
                c.this.d(str);
                p.this.c.setContent(str2);
                a();
            }

            @Override // com.mbridge.msdk.click.o.f
            public void a(int i, String str, String str2, String str3) {
                if (!TextUtils.isEmpty(str2)) {
                    p.this.c.setExceptionMsg(str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    p.this.c.setContent(str3);
                }
                c.this.d(str);
                a();
            }

            private void a() {
                synchronized (p.this) {
                    p.this.c.setSuccess(true);
                    c.this.a();
                }
            }
        }

        private boolean b(String str) {
            return !URLUtil.isNetworkUrl(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.f8793a.release();
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x01ed A[EDGE_INSN: B:88:0x01ed->B:75:0x01ed ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.mbridge.msdk.click.entity.JumpLoaderResult a(java.lang.String r14, boolean r15, boolean r16, com.mbridge.msdk.foundation.entity.CampaignEx r17, int r18) {
            /*
                Method dump skipped, instructions count: 494
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.p.c.a(java.lang.String, boolean, boolean, com.mbridge.msdk.foundation.entity.CampaignEx, int):com.mbridge.msdk.click.entity.JumpLoaderResult");
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void cancelTask() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void pauseTask(boolean z) {
        }

        private boolean a(String str) {
            return s0.a.b(str);
        }
    }

    public p(Context context) {
        this.f = context;
        this.g = new com.mbridge.msdk.foundation.same.task.b(context, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(String str, g gVar, boolean z, String str2, String str3, CampaignEx campaignEx, boolean z2, boolean z3, int i) {
        c cVar;
        this.b = gVar;
        this.e = z;
        com.mbridge.msdk.click.entity.b bVar = new com.mbridge.msdk.click.entity.b();
        bVar.a(this.f);
        bVar.c(str);
        bVar.b(z);
        bVar.a(str2);
        bVar.b(str3);
        bVar.a(campaignEx);
        bVar.a(z2);
        bVar.c(z3);
        bVar.a(i);
        if (str.startsWith("tcp")) {
            l lVar = new l(bVar);
            lVar.a(this.b);
            lVar.a(new a());
            cVar = lVar;
        } else {
            cVar = new c(this.f, str, str2, str3, campaignEx, z2, z3, i);
        }
        this.g.b(cVar, this);
    }

    @Override // com.mbridge.msdk.foundation.same.task.a.InterfaceC0108a
    public void a(a.b bVar) {
        if (bVar == a.b.FINISH && this.d) {
            this.i.post(new b());
        }
    }
}
