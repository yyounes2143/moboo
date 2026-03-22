package com.tencent.thumbplayer.tcmedia.tplayer;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.n;
import com.tencent.thumbplayer.tcmedia.utils.q;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
/* loaded from: classes6.dex */
public class d implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private b f10672a;
    private q b;

    public d(b bVar) {
        this.f10672a = bVar;
        this.b = new q(bVar.b(), this.f10672a.a(), this.f10672a);
    }

    private int a(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    private Object b(Method method, Object[] objArr) {
        String name = method.getName();
        if (name.equals("setDataSource")) {
            objArr = b(objArr);
        }
        if (method.getReturnType().getName().equals("void")) {
            this.b.b(name, objArr);
            return null;
        }
        Object a2 = this.b.a(name, objArr);
        String b = this.f10672a.b();
        TPLogUtil.i(b, "dealThreadSwitch: " + name + ", var count:" + a(objArr) + ", result:" + a2);
        return a2;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        if (!a(method, objArr)) {
            return method.invoke(this.f10672a, objArr);
        }
        return b(method, objArr);
    }

    private Object[] b(Object[] objArr) {
        String b;
        StringBuilder sb;
        Object obj = objArr[0];
        if (obj == null || !(obj instanceof ParcelFileDescriptor)) {
            if (obj != null && (obj instanceof AssetFileDescriptor)) {
                try {
                    AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
                    objArr[0] = new AssetFileDescriptor(ParcelFileDescriptor.fromFd(assetFileDescriptor.getParcelFileDescriptor().detachFd()), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                    assetFileDescriptor.close();
                    return objArr;
                } catch (Exception e) {
                    e = e;
                    b = this.f10672a.b();
                    sb = new StringBuilder("setDataSource, fromFd has exception:");
                }
            }
            return objArr;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
            objArr[0] = ParcelFileDescriptor.fromFd(parcelFileDescriptor.detachFd());
            parcelFileDescriptor.close();
            return objArr;
        } catch (Exception e2) {
            e = e2;
            b = this.f10672a.b();
            sb = new StringBuilder("setDataSource, fromFd has exception:");
        }
        sb.append(e.toString());
        TPLogUtil.e(b, sb.toString());
        return objArr;
    }

    public Object a() {
        return Proxy.newProxyInstance(this.f10672a.getClass().getClassLoader(), this.f10672a.getClass().getInterfaces(), this);
    }

    private boolean a(Method method, Object[] objArr) {
        return n.a(this.f10672a.getClass(), method.getName(), objArr) != null;
    }
}
