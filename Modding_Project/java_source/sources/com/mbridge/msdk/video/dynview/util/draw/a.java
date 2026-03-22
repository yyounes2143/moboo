package com.mbridge.msdk.video.dynview.util.draw;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.video.dynview.c;
import com.mbridge.msdk.video.dynview.shape.a;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a {
    private static volatile a d;

    /* renamed from: a  reason: collision with root package name */
    private View f9797a;
    private Bitmap b;
    private Bitmap c;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.video.dynview.util.draw.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class RunnableC0179a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bitmap f9798a;
        final /* synthetic */ int b;
        final /* synthetic */ float c;
        final /* synthetic */ float d;

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.video.dynview.util.draw.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public class RunnableC0180a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a.b f9799a;

            public RunnableC0180a(a.b bVar) {
                this.f9799a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f9797a != null && this.f9799a.a() != null) {
                    a.this.f9797a.setBackground(this.f9799a.a());
                }
            }
        }

        public RunnableC0179a(Bitmap bitmap, int i, float f, float f2) {
            this.f9798a = bitmap;
            this.b = i;
            this.c = f;
            this.d = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Bitmap a2 = y.a(this.f9798a, 10);
                Bitmap a3 = y.a(this.f9798a, 10);
                a.b a4 = com.mbridge.msdk.video.dynview.shape.a.a();
                a4.a(this.b).b(a2).a(a3);
                if (this.b == 2) {
                    float f = this.c;
                    float f2 = this.d;
                    if (f > f2) {
                        a4.b(f).a(this.d);
                    } else {
                        a4.b(f2).a(this.c);
                    }
                } else {
                    a4.b(this.c).a(this.d);
                }
                if (a.this.f9797a != null) {
                    a.this.f9797a.post(new RunnableC0180a(a4));
                }
            } catch (Exception e) {
                o0.b("ChoiceOneDrawBitBg", e.getMessage());
            }
        }
    }

    private a() {
    }

    public void b() {
        if (this.f9797a != null) {
            this.f9797a = null;
        }
        Bitmap bitmap = this.b;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.b.recycle();
            this.b = null;
        }
        Bitmap bitmap2 = this.c;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.c.recycle();
            this.c = null;
        }
    }

    public static a a() {
        a aVar;
        if (d == null) {
            synchronized (a.class) {
                try {
                    if (d == null) {
                        d = new a();
                    }
                    aVar = d;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return aVar;
        }
        return d;
    }

    public void a(Map<String, Bitmap> map, c cVar, View view) {
        if (view == null || cVar == null || map == null || map.size() == 0 || map.size() < 2 || cVar.b() == null || cVar.b().size() < 2) {
            return;
        }
        this.f9797a = view;
        int h = cVar.h();
        float m = cVar.m();
        float k = cVar.k();
        try {
            List<CampaignEx> b = cVar.b();
            String md5 = b.get(0) != null ? SameMD5.getMD5(b.get(0).getImageUrl()) : "";
            String md52 = b.get(1) != null ? SameMD5.getMD5(b.get(1).getImageUrl()) : "";
            Bitmap bitmap = null;
            Bitmap bitmap2 = (TextUtils.isEmpty(md5) || !map.containsKey(md5)) ? null : map.get(md5);
            if (!TextUtils.isEmpty(md52) && map.containsKey(md52)) {
                bitmap = map.get(md52);
            }
            Bitmap bitmap3 = bitmap;
            if (bitmap2 == null || bitmap2.isRecycled() || bitmap3 == null || bitmap3.isRecycled()) {
                return;
            }
            a(h, m, k, bitmap2, bitmap3);
        } catch (Exception e) {
            o0.b("ChoiceOneDrawBitBg", e.getMessage());
        }
    }

    private synchronized void a(int i, float f, float f2, Bitmap bitmap, Bitmap bitmap2) {
        try {
            try {
                try {
                    com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new RunnableC0179a(bitmap, i, f, f2));
                } catch (Exception e) {
                    e = e;
                    o0.a("ChoiceOneDrawBitBg", e.getMessage());
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }
}
