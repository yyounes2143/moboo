package com.tencent.thumbplayer.tcmedia.tplayer.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.tencent.thumbplayer.tcmedia.api.reportv2.ITPExtendReportController;
import com.tencent.thumbplayer.tcmedia.api.reportv2.ITPReportChannelListener;
import com.tencent.thumbplayer.tcmedia.api.reportv2.ITPReportInfoGetter;
import com.tencent.thumbplayer.tcmedia.d.b;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.o;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes6.dex */
public class g implements ITPExtendReportController, com.tencent.thumbplayer.tcmedia.d.a {
    private static final Map<Integer, Integer> k;
    private Context g;

    /* renamed from: a  reason: collision with root package name */
    private ITPReportInfoGetter f10661a = null;
    private HandlerThread b = null;
    private a c = null;
    private com.tencent.thumbplayer.tcmedia.tplayer.a.a d = null;
    private l e = new l();
    private com.tencent.thumbplayer.tcmedia.tplayer.a.a.a h = null;
    private h i = new h();
    private Object j = new Object();
    private CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> f = new CopyOnWriteArrayList<>();

    /* loaded from: classes6.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            b.a aVar = (b.a) message.obj;
            g.this.a(i, aVar);
            if (g.this.d != null) {
                g.this.d.a(i, aVar);
            }
            g.this.b(i, aVar);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        k = hashMap;
        hashMap.put(117, 0);
        hashMap.put(204, 103);
        hashMap.put(101, 1);
        hashMap.put(102, 2);
        hashMap.put(103, 3);
        hashMap.put(104, 4);
        hashMap.put(105, 5);
        hashMap.put(107, 5);
        hashMap.put(108, 5);
        hashMap.put(106, 6);
        hashMap.put(109, 7);
        hashMap.put(110, 8);
        hashMap.put(111, 9);
        hashMap.put(112, 10);
        hashMap.put(114, 11);
        hashMap.put(115, 12);
        hashMap.put(201, 100);
        hashMap.put(202, 101);
        hashMap.put(203, 102);
        hashMap.put(116, 14);
        hashMap.put(113, 13);
        hashMap.put(118, 15);
    }

    public g(Context context) {
        this.g = null;
        this.g = context.getApplicationContext();
    }

    private void c(b.a aVar) {
        if (!(aVar instanceof b.u)) {
            return;
        }
        b.u uVar = (b.u) aVar;
        this.e.f10665a = uVar.b();
        this.e.e = uVar.d();
        this.e.h = uVar.e() ? 1 : 0;
        this.e.f = uVar.f();
        TPLogUtil.i("TPReportController", "onSetDataSource url:" + this.e.e + " isUseProxy:" + this.e.h + " urlProtocol:" + this.e.f);
    }

    private void d(b.a aVar) {
        this.i.a(2);
        if (!(aVar instanceof b.p)) {
            return;
        }
        b.p pVar = (b.p) aVar;
        this.e.c = pVar.b();
        this.e.d = pVar.c();
        this.e.i = pVar.d();
    }

    private void e(b.a aVar) {
        if (!this.i.b(2)) {
            TPLogUtil.e("TPReportController", "onPrepareEnd Current state is not match:" + this.i.toString());
            return;
        }
        this.i.a(3);
        if (!(aVar instanceof b.o)) {
            return;
        }
        b.o oVar = (b.o) aVar;
        this.e.g = j.b(oVar.e());
        TPLogUtil.i("TPReportController", "onPrepareEnd durationMs:" + oVar.d() + " playType:" + this.e.g);
        if (oVar.d() == 0) {
            a(1);
        } else {
            a(0);
        }
    }

    private void f(b.a aVar) {
        if (this.i.b(2)) {
            a(2);
        }
        this.i.a(1);
    }

    private void g(b.a aVar) {
        this.i.a(1);
        com.tencent.thumbplayer.tcmedia.tplayer.a.a aVar2 = this.d;
        if (aVar2 != null) {
            aVar2.a();
            this.d = null;
        }
        this.e = new l();
    }

    private void h(b.a aVar) {
        TPLogUtil.i("TPReportController", "onControllerRelease");
        synchronized (this.j) {
            try {
                if (this.b != null) {
                    o.a().a(this.b, this.c);
                    this.b = null;
                    this.c = null;
                }
                this.f.clear();
                this.j.notifyAll();
                this.j = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.reportv2.ITPExtendReportController
    public void addReportChannelListener(ITPReportChannelListener iTPReportChannelListener) {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.f;
        if (copyOnWriteArrayList == null) {
            TPLogUtil.w("TPReportController", "mReportChannelListenerList is null");
            return;
        }
        Iterator<WeakReference<ITPReportChannelListener>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (it.next().get() == iTPReportChannelListener) {
                TPLogUtil.w("TPReportController", "mReportChannelListenerList has contain reportChannelListener");
                return;
            }
        }
        this.f.add(new WeakReference<>(iTPReportChannelListener));
    }

    public void b() {
        TPLogUtil.i("TPReportController", "release");
        synchronized (this.j) {
            a aVar = this.c;
            if (aVar != null) {
                aVar.sendEmptyMessage(1000);
            }
            try {
                this.j.wait(500L);
            } catch (InterruptedException e) {
                TPLogUtil.e("TPReportController", e);
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.reportv2.ITPExtendReportController
    public void setReportInfoGetter(ITPReportInfoGetter iTPReportInfoGetter) {
        this.f10661a = iTPReportInfoGetter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, b.a aVar) {
        if (i == 5) {
            g(aVar);
        } else if (i != 1000) {
        } else {
            h(aVar);
        }
    }

    public void a() {
        this.b = o.a().a("TPReportController_Thread");
        this.c = new a(this.b.getLooper());
    }

    private void a(int i) {
        String str;
        if (this.d != null) {
            str = "mITPReporter has been create, do not create again.";
        } else {
            com.tencent.thumbplayer.tcmedia.tplayer.a.a a2 = k.a(i);
            this.d = a2;
            if (a2 != null) {
                a2.a(this.g, this.e);
                this.d.a(this.f10661a);
                this.d.a(this.h);
                Iterator<WeakReference<ITPReportChannelListener>> it = this.f.iterator();
                while (it.hasNext()) {
                    ITPReportChannelListener iTPReportChannelListener = it.next().get();
                    if (iTPReportChannelListener != null) {
                        this.d.a(iTPReportChannelListener);
                    }
                }
                return;
            }
            str = "initReporter(" + i + ") fail, mITPReporter is null.";
        }
        TPLogUtil.w("TPReportController", str);
    }

    private void b(b.a aVar) {
        if (aVar instanceof b.g) {
            this.e.b = ((b.g) aVar).b();
            TPLogUtil.i("TPReportController", "onGetConvertedDataSource time:" + this.e.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, b.a aVar) {
        if (i == 0) {
            c(aVar);
        } else if (i == 1) {
            d(aVar);
        } else if (i == 2) {
            e(aVar);
        } else if (i == 6) {
            f(aVar);
        } else if (i != 103) {
        } else {
            b(aVar);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.d.a
    public void a(b.a aVar) {
        Map<Integer, Integer> map = k;
        if (map.containsKey(Integer.valueOf(aVar.a()))) {
            this.c.obtainMessage(map.get(Integer.valueOf(aVar.a())).intValue(), aVar).sendToTarget();
            return;
        }
        TPLogUtil.w("TPReportController", "EventId:" + aVar.a() + " is not need process");
    }

    public void a(com.tencent.thumbplayer.tcmedia.tplayer.a.a.a aVar) {
        this.h = aVar;
    }

    public void a(boolean z) {
        TPLogUtil.i("TPReportController", "reporting is needed:".concat(String.valueOf(z)));
        this.e.j = Boolean.valueOf(z);
    }
}
