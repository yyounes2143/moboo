package com.tencent.thumbplayer.tcmedia.adapter;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.adapter.a.c;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPDrmInfo;
import com.tencent.thumbplayer.tcmedia.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tcmedia.d.b;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class f implements InvocationHandler {
    private static final Map<String, Class> f;

    /* renamed from: a  reason: collision with root package name */
    private d f10538a;
    private com.tencent.thumbplayer.tcmedia.tplayer.a b;
    private g c = new g("TPPlayerAdapterProxy");
    private a d;
    private Object e;

    /* loaded from: classes6.dex */
    public class a implements c.f, c.g, c.h, c.i, c.j {
        private a() {
        }

        private void b(long j, long j2, Object obj) {
            f.this.b.b().a(new b.C0225b());
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.i
        public void a() {
            b.o oVar = new b.o();
            oVar.b(f.this.f10538a.d());
            oVar.a(f.this.f10538a.n());
            f.this.b.b().a(oVar);
            f.this.c.a();
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.j
        public void c() {
            f.this.b.b().a(new b.q());
            f.this.c.c();
        }

        private void c(long j, long j2, Object obj) {
            b.s sVar = new b.s();
            sVar.a(((Long) obj).longValue());
            sVar.b((int) j2);
            f.this.b.b().a(sVar);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.f
        public void a(@TPCommonEnum.TPErrorType int i, int i2, long j, long j2) {
            b.i iVar = new b.i();
            iVar.c(i2);
            iVar.b(i);
            TPGeneralPlayFlowParams v = f.this.f10538a.v();
            if (v == null) {
                v = new TPGeneralPlayFlowParams();
            }
            iVar.a(v);
            TPDynamicStatisticParams c = f.this.f10538a.c(false);
            if (c == null) {
                c = new TPDynamicStatisticParams();
            }
            iVar.a(c);
            f.this.b.b().a(iVar);
            f.this.c.a(i, i2, j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.h
        public void a(int i, long j, long j2, Object obj) {
            long j3;
            long j4;
            Object obj2;
            a aVar;
            if (i != 4) {
                if (i == 200) {
                    j3 = j;
                    j4 = j2;
                    obj2 = obj;
                    a(j3, j4, obj2);
                } else if (i != 201) {
                    j3 = j;
                    j4 = j2;
                    obj2 = obj;
                } else {
                    j3 = j;
                    j4 = j2;
                    obj2 = obj;
                    b(j3, j4, obj2);
                }
                aVar = this;
            } else {
                j3 = j;
                j4 = j2;
                obj2 = obj;
                c(j3, j4, obj2);
                aVar = this;
            }
            f.this.c.a(i, j3, j4, obj2);
        }

        private void a(long j, long j2, Object obj) {
            f.this.b.b().a(new b.c());
        }

        @Override // com.tencent.thumbplayer.tcmedia.adapter.a.c.g
        public void a(TPDrmInfo tPDrmInfo) {
            b.h hVar = new b.h();
            hVar.a(tPDrmInfo);
            f.this.b.b().a(hVar);
            f.this.c.a(tPDrmInfo);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f = hashMap;
        hashMap.put("setOnPreparedListener", c.i.class);
        hashMap.put("setOnInfoListener", c.h.class);
        hashMap.put("setOnErrorListener", c.f.class);
        hashMap.put("setOnSeekCompleteListener", c.j.class);
    }

    public f(d dVar, com.tencent.thumbplayer.tcmedia.tplayer.a aVar) {
        a aVar2 = new a();
        this.d = aVar2;
        this.f10538a = dVar;
        this.b = aVar;
        dVar.a((c.g) aVar2);
    }

    private void d(Object[] objArr) {
        b.n nVar = new b.n();
        TPGeneralPlayFlowParams v = this.f10538a.v();
        if (v == null) {
            v = new TPGeneralPlayFlowParams();
        }
        nVar.a(v);
        TPDynamicStatisticParams c = this.f10538a.c(false);
        if (c == null) {
            c = new TPDynamicStatisticParams();
        }
        nVar.a(c);
        this.b.b().a(nVar);
    }

    private void e(Object[] objArr) {
        b.l lVar = new b.l();
        TPGeneralPlayFlowParams v = this.f10538a.v();
        if (v == null) {
            v = new TPGeneralPlayFlowParams();
        }
        lVar.a(v);
        TPDynamicStatisticParams c = this.f10538a.c(false);
        if (c == null) {
            c = new TPDynamicStatisticParams();
        }
        lVar.a(c);
        this.b.b().a(lVar);
    }

    private void f(Object[] objArr) {
        this.b.b().a(new b.k());
    }

    private void g(Object[] objArr) {
        this.b.b().a(new b.r());
    }

    private void h(Object[] objArr) {
        b.v vVar = new b.v();
        vVar.a(((Float) objArr[0]).floatValue());
        this.b.b().a(vVar);
    }

    private void i(Object[] objArr) {
        b.t tVar = new b.t();
        tVar.b(((Integer) objArr[0]).intValue());
        tVar.a(((Long) objArr[1]).longValue());
        tVar.a(this.f10538a.s()[((Integer) objArr[0]).intValue()]);
        this.b.b().a(tVar);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        StringBuilder sb;
        String th;
        try {
            a(method, objArr);
            b(method, objArr);
            return method.invoke(this.f10538a, objArr);
        } catch (InvocationTargetException e) {
            if (e.getTargetException() == null) {
                sb = new StringBuilder("invokeMethod ");
                sb.append(method.getName());
                sb.append(" has excecption: ");
                th = e.toString();
                sb.append(th);
                TPLogUtil.e("TPPlayerAdapterProxy", sb.toString());
                return a(method);
            }
            throw e.getTargetException();
        } catch (Throwable th2) {
            sb = new StringBuilder("invokeMethod ");
            sb.append(method.getName());
            sb.append(" has excecption: ");
            th = th2.toString();
            sb.append(th);
            TPLogUtil.e("TPPlayerAdapterProxy", sb.toString());
            return a(method);
        }
    }

    private void b(Method method, Object[] objArr) {
        Map<String, Class> map = f;
        if (map.containsKey(method.getName())) {
            try {
                this.c.getClass().getMethod(method.getName(), map.get(method.getName())).invoke(this.c, objArr[0]);
                objArr[0] = this.d;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
    }

    private void c(Object[] objArr) {
        this.b.b().a(new b.j());
    }

    public synchronized Object a() {
        try {
            if (this.e == null) {
                this.e = Proxy.newProxyInstance(this.f10538a.getClass().getClassLoader(), this.f10538a.getClass().getInterfaces(), this);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.e;
    }

    private static Object a(Method method) {
        String name = method.getReturnType().getName();
        if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
            return Boolean.FALSE;
        }
        if (name.equals("int")) {
            return 0;
        }
        if (name.equals("long")) {
            return 0L;
        }
        if (name.equals(TypedValues.Custom.S_FLOAT)) {
            return Float.valueOf(0.0f);
        }
        return null;
    }

    private void b(Object[] objArr) {
        this.b.b().a(new b.m());
    }

    private void a(Method method, Object[] objArr) {
        String name = method.getName();
        name.getClass();
        char c = 65535;
        switch (name.hashCode()) {
            case -2055859787:
                if (name.equals("prepareAsync")) {
                    c = 0;
                    break;
                }
                break;
            case -906224877:
                if (name.equals("seekTo")) {
                    c = 1;
                    break;
                }
                break;
            case 3540994:
                if (name.equals("stop")) {
                    c = 2;
                    break;
                }
                break;
            case 106440182:
                if (name.equals(CampaignEx.JSON_NATIVE_VIDEO_PAUSE)) {
                    c = 3;
                    break;
                }
                break;
            case 108404047:
                if (name.equals("reset")) {
                    c = 4;
                    break;
                }
                break;
            case 109757538:
                if (name.equals("start")) {
                    c = 5;
                    break;
                }
                break;
            case 205228463:
                if (name.equals("selectTrack")) {
                    c = 6;
                    break;
                }
                break;
            case 218603354:
                if (name.equals("setPlaySpeedRatio")) {
                    c = 7;
                    break;
                }
                break;
            case 1090594823:
                if (name.equals("release")) {
                    c = '\b';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                a(objArr);
                return;
            case 1:
                g(objArr);
                return;
            case 2:
                d(objArr);
                return;
            case 3:
                c(objArr);
                return;
            case 4:
                e(objArr);
                return;
            case 5:
                b(objArr);
                return;
            case 6:
                i(objArr);
                return;
            case 7:
                h(objArr);
                return;
            case '\b':
                f(objArr);
                return;
            default:
                return;
        }
    }

    private void a(Object[] objArr) {
    }
}
