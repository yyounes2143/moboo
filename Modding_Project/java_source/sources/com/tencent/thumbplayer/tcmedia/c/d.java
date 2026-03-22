package com.tencent.thumbplayer.tcmedia.c;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.tcmedia.d.b;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
/* loaded from: classes6.dex */
public class d implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private e f10565a;
    private com.tencent.thumbplayer.tcmedia.tplayer.a b;
    private ITPPlayListener c;
    private a d = new a();
    private Object e;

    /* loaded from: classes6.dex */
    public class a implements ITPPlayListener {
        private a() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getAdvRemainTime() {
            return d.this.c.getAdvRemainTime();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public String getContentType(int i, String str) {
            return d.this.c.getContentType(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int getCurrentPlayClipNo() {
            return d.this.c.getCurrentPlayClipNo();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long[] getCurrentPlayOffset() {
            return d.this.c.getCurrentPlayOffset();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getCurrentPosition() {
            return d.this.c.getCurrentPosition();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public String getDataFilePath(int i, String str) {
            return d.this.c.getDataFilePath(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getDataTotalSize(int i, String str) {
            return d.this.c.getDataTotalSize(i, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(long j) {
            return d.this.c.getPlayInfo(j);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public long getPlayerBufferLength() {
            return d.this.c.getPlayerBufferLength();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlExpired(Map<String, String> map) {
            d.this.c.onDownloadCdnUrlExpired(map);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            b.d dVar = new b.d();
            dVar.a(str2);
            dVar.b(str3);
            d.this.b.b().a(dVar);
            d.this.c.onDownloadCdnUrlInfoUpdate(str, str2, str3, str4);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadCdnUrlUpdate(String str) {
            d.this.c.onDownloadCdnUrlUpdate(str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadError(int i, int i2, String str) {
            d.this.c.onDownloadError(i, i2, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadFinish() {
            d.this.c.onDownloadFinish();
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
            b.e eVar = new b.e();
            eVar.b(i2 * 8);
            d.this.b.b().a(eVar);
            d.this.c.onDownloadProgressUpdate(i, i2, j, j2, str);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadProtocolUpdate(String str, String str2) {
            b.f fVar = new b.f();
            fVar.b(str);
            fVar.a(str2);
            d.this.b.b().a(fVar);
            d.this.c.onDownloadProtocolUpdate(str, str2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public void onDownloadStatusUpdate(int i) {
            d.this.c.onDownloadStatusUpdate(i);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object onPlayCallback(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            return d.this.c.onPlayCallback(i, obj, obj2, obj3, obj4);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onReadData(int i, String str, long j, long j2) {
            return d.this.c.onReadData(i, str, j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onStartReadData(int i, String str, long j, long j2) {
            return d.this.c.onStartReadData(i, str, j, j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public int onStopReadData(int i, String str, int i2) {
            return d.this.c.onStopReadData(i, str, i2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPlayListener
        public Object getPlayInfo(String str) {
            return d.this.c.getPlayInfo(str);
        }
    }

    public d(e eVar, com.tencent.thumbplayer.tcmedia.tplayer.a aVar) {
        this.f10565a = eVar;
        this.b = aVar;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        StringBuilder sb;
        String th;
        b(method, objArr);
        try {
            Object invoke = method.invoke(this.f10565a, objArr);
            a(method, objArr);
            return invoke;
        } catch (InvocationTargetException e) {
            if (e.getTargetException() == null) {
                sb = new StringBuilder("invokeMethod ");
                sb.append(method.getName());
                sb.append(" has excecption: ");
                th = e.toString();
                sb.append(th);
                TPLogUtil.e("TPDataTransportManagerProxy", sb.toString());
                return a(method);
            }
            throw e.getTargetException();
        } catch (Throwable th2) {
            sb = new StringBuilder("invokeMethod ");
            sb.append(method.getName());
            sb.append(" has excecption: ");
            th = th2.toString();
            sb.append(th);
            TPLogUtil.e("TPDataTransportManagerProxy", sb.toString());
            return a(method);
        }
    }

    private void b(Method method, Object[] objArr) {
        if (method.getName().equals("setPlayListener")) {
            this.c = (ITPPlayListener) objArr[0];
            objArr[0] = this.d;
        }
    }

    public synchronized Object a() {
        try {
            if (this.e == null) {
                this.e = Proxy.newProxyInstance(this.f10565a.getClass().getClassLoader(), this.f10565a.getClass().getInterfaces(), this);
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

    private void a(Method method, Object[] objArr) {
        String name = method.getName();
        name.getClass();
        if (name.equals("startDownloadPlayByAsset") || name.equals("startDownloadPlay")) {
            a(objArr);
        }
    }

    private void a(Object[] objArr) {
        this.b.b().a(new b.g());
    }
}
