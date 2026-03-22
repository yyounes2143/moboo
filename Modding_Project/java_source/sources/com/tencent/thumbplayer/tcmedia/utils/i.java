package com.tencent.thumbplayer.tcmedia.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public class i extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static int f10692a = 0;
    private static String b = "unknown";
    private static int c;
    private static int d;
    private static String e;
    private ArrayList<b> f;
    private HandlerThread g;

    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static i f10693a = new i();
    }

    /* loaded from: classes6.dex */
    public interface b {
        void a(int i, int i2, int i3, int i4);
    }

    private i() {
        this.f = null;
        this.f = new ArrayList<>();
    }

    public static i a() {
        return a.f10693a;
    }

    public static int b() {
        return c;
    }

    public static int c() {
        return f10692a;
    }

    private static boolean d() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0060 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:3:0x0001, B:5:0x0008, B:12:0x0018, B:14:0x0060, B:16:0x0069, B:17:0x007b), top: B:22:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void e() {
        /*
            r8 = this;
            monitor-enter(r8)
            int r0 = com.tencent.thumbplayer.tcmedia.utils.i.f10692a     // Catch: java.lang.Throwable -> L15
            int r1 = com.tencent.thumbplayer.tcmedia.utils.i.d     // Catch: java.lang.Throwable -> L15
            r2 = 0
            if (r0 != r1) goto L17
            java.lang.String r0 = com.tencent.thumbplayer.tcmedia.utils.i.b     // Catch: java.lang.Throwable -> L15
            java.lang.String r1 = com.tencent.thumbplayer.tcmedia.utils.i.e     // Catch: java.lang.Throwable -> L15
            boolean r0 = android.text.TextUtils.equals(r0, r1)     // Catch: java.lang.Throwable -> L15
            if (r0 != 0) goto L13
            goto L17
        L13:
            r0 = r2
            goto L18
        L15:
            r0 = move-exception
            goto L85
        L17:
            r0 = 1
        L18:
            java.lang.String r1 = "TPNetworkChangeMonitor"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L15
            java.lang.String r4 = "notifyIfNetChanged, isNetChanged: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L15
            r3.append(r0)     // Catch: java.lang.Throwable -> L15
            java.lang.String r4 = ",  mListeners:  "
            r3.append(r4)     // Catch: java.lang.Throwable -> L15
            java.util.ArrayList<com.tencent.thumbplayer.tcmedia.utils.i$b> r4 = r8.f     // Catch: java.lang.Throwable -> L15
            r3.append(r4)     // Catch: java.lang.Throwable -> L15
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L15
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.i(r1, r3)     // Catch: java.lang.Throwable -> L15
            java.lang.String r1 = "TPNetworkChangeMonitor"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L15
            java.lang.String r4 = "onNetworkStatusChanged oldNetStatus: "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L15
            int r4 = com.tencent.thumbplayer.tcmedia.utils.i.d     // Catch: java.lang.Throwable -> L15
            r3.append(r4)     // Catch: java.lang.Throwable -> L15
            java.lang.String r4 = ", netStatus: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L15
            int r4 = com.tencent.thumbplayer.tcmedia.utils.i.f10692a     // Catch: java.lang.Throwable -> L15
            r3.append(r4)     // Catch: java.lang.Throwable -> L15
            java.lang.String r4 = ", mobileNetSubType"
            r3.append(r4)     // Catch: java.lang.Throwable -> L15
            int r4 = com.tencent.thumbplayer.tcmedia.utils.i.c     // Catch: java.lang.Throwable -> L15
            r3.append(r4)     // Catch: java.lang.Throwable -> L15
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L15
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.i(r1, r3)     // Catch: java.lang.Throwable -> L15
            if (r0 == 0) goto L83
            java.util.ArrayList<com.tencent.thumbplayer.tcmedia.utils.i$b> r0 = r8.f     // Catch: java.lang.Throwable -> L15
            int r1 = r0.size()     // Catch: java.lang.Throwable -> L15
            r3 = r2
        L67:
            if (r3 >= r1) goto L7b
            java.lang.Object r4 = r0.get(r3)     // Catch: java.lang.Throwable -> L15
            int r3 = r3 + 1
            com.tencent.thumbplayer.tcmedia.utils.i$b r4 = (com.tencent.thumbplayer.tcmedia.utils.i.b) r4     // Catch: java.lang.Throwable -> L15
            int r5 = com.tencent.thumbplayer.tcmedia.utils.i.d     // Catch: java.lang.Throwable -> L15
            int r6 = com.tencent.thumbplayer.tcmedia.utils.i.f10692a     // Catch: java.lang.Throwable -> L15
            int r7 = com.tencent.thumbplayer.tcmedia.utils.i.c     // Catch: java.lang.Throwable -> L15
            r4.a(r5, r6, r2, r7)     // Catch: java.lang.Throwable -> L15
            goto L67
        L7b:
            int r0 = com.tencent.thumbplayer.tcmedia.utils.i.f10692a     // Catch: java.lang.Throwable -> L15
            com.tencent.thumbplayer.tcmedia.utils.i.d = r0     // Catch: java.lang.Throwable -> L15
            java.lang.String r0 = com.tencent.thumbplayer.tcmedia.utils.i.b     // Catch: java.lang.Throwable -> L15
            com.tencent.thumbplayer.tcmedia.utils.i.e = r0     // Catch: java.lang.Throwable -> L15
        L83:
            monitor-exit(r8)
            return
        L85:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L15
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.utils.i.e():void");
    }

    private void f() {
        TPLogUtil.d("TPNetworkChangeMonitor", "-->updateNetStatus(), mNetStatus=" + f10692a + "[wifi: 2, mobile: 3], lastNetStatus=" + d + ", mDetailNetworkType=" + b + ", mobileNetSubType=" + c + "[2G:2 3G:3 4G:4], currentDetailNetType=" + b + ", lastDetailNetType=" + e);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        StringBuilder sb = new StringBuilder("onReceive broadcast action and update net status,onReceive broadcast in ");
        if (d()) {
            str = "main";
        } else {
            str = "work";
        }
        sb.append(str);
        sb.append(" thread.");
        TPLogUtil.d("TPNetworkChangeMonitor", sb.toString());
        b(context);
    }

    private static int b(NetworkInfo networkInfo) {
        if (networkInfo != null) {
            switch (networkInfo.getSubtype()) {
                case 0:
                    break;
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return 2;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return 3;
                case 13:
                    return 4;
                default:
                    return 3;
            }
        }
        return 0;
    }

    private String c(NetworkInfo networkInfo) {
        String str = "unknown";
        if (networkInfo != null && networkInfo.isConnected()) {
            int type = networkInfo.getType();
            if (type == 1) {
                str = "wifi";
            } else if (type == 9) {
                str = "ethernet";
            } else if (type == 0) {
                str = "mobilenet";
            }
            TPLogUtil.d("TPNetworkChangeMonitor", "getDetailNetworkType, typeDesc: ".concat(str));
        }
        return str;
    }

    public synchronized void a(Context context) {
        try {
            com.tencent.thumbplayer.tcmedia.utils.b.a(context, "context can not be null!");
            if (this.g == null) {
                this.g = o.a().b();
            }
            a(context, new Handler(this.g.getLooper()));
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void a(Context context, Handler handler) {
        if (context != null) {
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"), null, handler);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005b A[Catch: Exception -> 0x0073, TryCatch #0 {Exception -> 0x0073, blocks: (B:3:0x0002, B:6:0x000e, B:8:0x0020, B:10:0x0026, B:23:0x0048, B:31:0x005d, B:33:0x0067, B:34:0x006d, B:28:0x0051, B:29:0x0058, B:30:0x005b, B:11:0x0029, B:13:0x002f, B:14:0x0033, B:15:0x0036, B:17:0x003c, B:21:0x0045), top: B:37:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0067 A[Catch: Exception -> 0x0073, TryCatch #0 {Exception -> 0x0073, blocks: (B:3:0x0002, B:6:0x000e, B:8:0x0020, B:10:0x0026, B:23:0x0048, B:31:0x005d, B:33:0x0067, B:34:0x006d, B:28:0x0051, B:29:0x0058, B:30:0x005b, B:11:0x0029, B:13:0x002f, B:14:0x0033, B:15:0x0036, B:17:0x003c, B:21:0x0045), top: B:37:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(android.content.Context r8) {
        /*
            r7 = this;
            if (r8 == 0) goto Lb
            java.lang.String r0 = "connectivity"
            java.lang.Object r8 = r8.getSystemService(r0)     // Catch: java.lang.Exception -> L73
            android.net.ConnectivityManager r8 = (android.net.ConnectivityManager) r8     // Catch: java.lang.Exception -> L73
            goto Lc
        Lb:
            r8 = 0
        Lc:
            if (r8 == 0) goto L73
            r0 = 0
            android.net.NetworkInfo r1 = r8.getNetworkInfo(r0)     // Catch: java.lang.Exception -> L73
            r2 = 1
            android.net.NetworkInfo r3 = r8.getNetworkInfo(r2)     // Catch: java.lang.Exception -> L73
            android.net.NetworkInfo r8 = r8.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L73
            r4 = 2
            r5 = 3
            if (r8 != 0) goto L36
            boolean r6 = r7.a(r1)     // Catch: java.lang.Exception -> L73
            if (r6 == 0) goto L29
            com.tencent.thumbplayer.tcmedia.utils.i.f10692a = r5     // Catch: java.lang.Exception -> L73
            goto L48
        L29:
            boolean r1 = r7.a(r3)     // Catch: java.lang.Exception -> L73
            if (r1 == 0) goto L33
            com.tencent.thumbplayer.tcmedia.utils.i.f10692a = r4     // Catch: java.lang.Exception -> L73
            r1 = r3
            goto L48
        L33:
            com.tencent.thumbplayer.tcmedia.utils.i.f10692a = r2     // Catch: java.lang.Exception -> L73
            goto L47
        L36:
            boolean r3 = r7.a(r8)     // Catch: java.lang.Exception -> L73
            if (r3 == 0) goto L33
            boolean r1 = r7.a(r1)     // Catch: java.lang.Exception -> L73
            if (r1 == 0) goto L44
            r1 = r5
            goto L45
        L44:
            r1 = r4
        L45:
            com.tencent.thumbplayer.tcmedia.utils.i.f10692a = r1     // Catch: java.lang.Exception -> L73
        L47:
            r1 = r8
        L48:
            int r8 = com.tencent.thumbplayer.tcmedia.utils.i.f10692a     // Catch: java.lang.Exception -> L73
            if (r8 == r2) goto L5b
            if (r8 == r4) goto L58
            if (r8 == r5) goto L51
            goto L5d
        L51:
            int r8 = b(r1)     // Catch: java.lang.Exception -> L73
            com.tencent.thumbplayer.tcmedia.utils.i.c = r8     // Catch: java.lang.Exception -> L73
            goto L5d
        L58:
            com.tencent.thumbplayer.tcmedia.utils.i.c = r2     // Catch: java.lang.Exception -> L73
            goto L5d
        L5b:
            com.tencent.thumbplayer.tcmedia.utils.i.c = r0     // Catch: java.lang.Exception -> L73
        L5d:
            java.lang.String r8 = r7.c(r1)     // Catch: java.lang.Exception -> L73
            com.tencent.thumbplayer.tcmedia.utils.i.b = r8     // Catch: java.lang.Exception -> L73
            int r0 = com.tencent.thumbplayer.tcmedia.utils.i.d     // Catch: java.lang.Exception -> L73
            if (r0 != 0) goto L6d
            int r0 = com.tencent.thumbplayer.tcmedia.utils.i.f10692a     // Catch: java.lang.Exception -> L73
            com.tencent.thumbplayer.tcmedia.utils.i.d = r0     // Catch: java.lang.Exception -> L73
            com.tencent.thumbplayer.tcmedia.utils.i.e = r8     // Catch: java.lang.Exception -> L73
        L6d:
            r7.f()     // Catch: java.lang.Exception -> L73
            r7.e()     // Catch: java.lang.Exception -> L73
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.utils.i.b(android.content.Context):void");
    }

    public synchronized void a(b bVar) {
        ArrayList<b> arrayList = this.f;
        if (arrayList != null && !arrayList.contains(bVar)) {
            this.f.add(bVar);
        }
    }

    public synchronized void b(b bVar) {
        ArrayList<b> arrayList = this.f;
        if (arrayList != null) {
            arrayList.remove(bVar);
        }
    }

    private boolean a(NetworkInfo networkInfo) {
        if (networkInfo != null) {
            return networkInfo.isConnected() || networkInfo.isConnectedOrConnecting();
        }
        return false;
    }
}
