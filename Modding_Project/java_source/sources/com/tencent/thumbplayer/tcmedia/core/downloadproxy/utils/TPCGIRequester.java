package com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils;

import androidx.media3.common.C;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDLProxyLogListener;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TPCGIRequester {
    private static final String FILE_NAME = "TPCGIRequester";
    private static final int MAX_RETRY_TIMES = 3;
    private static final int MSG_CONFIG_URL = 2011;
    private static final int MSG_REPORT_URL = 2010;
    private static final int MSG_WUJI_CONFIG_URL = 2013;
    private static final int RETRY_INTERVAL = 3000;
    private static final int TIMEOUT = 3000;
    private static volatile ExecutorService mCustomExecutor;
    private static TPCGIRequester mRequester;
    private LinkedBlockingQueue<TPRequestItem> mRetryQueue = new LinkedBlockingQueue<>();
    private LinkedBlockingQueue<TPRequestItem> mRequestQueue = new LinkedBlockingQueue<>();
    private TimerTask mTimerTask = new TimerTask() { // from class: com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPCGIRequester.1
        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            while (TPCGIRequester.this.mRetryQueue.peek() != null && System.currentTimeMillis() - ((TPRequestItem) TPCGIRequester.this.mRetryQueue.peek()).getRequestFailedTime() > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                TPCGIRequester tPCGIRequester = TPCGIRequester.this;
                tPCGIRequester.addNotifyReqQueue((TPRequestItem) tPCGIRequester.mRetryQueue.poll());
            }
        }
    };

    private TPCGIRequester() {
        new Timer(true).scheduleAtFixedRate(this.mTimerTask, 0L, 1000L);
        process();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addNotifyReqQueue(TPRequestItem tPRequestItem) {
        try {
            this.mRequestQueue.put(tPRequestItem);
        } catch (Throwable th) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "RequestQueue add failed:" + th.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRetryRequestItem(TPRequestItem tPRequestItem) {
        try {
            if (tPRequestItem.getRequestTimes() <= 3) {
                this.mRetryQueue.put(tPRequestItem);
            }
        } catch (Throwable th) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "retry queue add failed" + th.toString());
        }
    }

    public static TPCGIRequester getInstance() {
        if (mRequester == null) {
            synchronized (TPCGIRequester.class) {
                try {
                    if (mRequester == null) {
                        mRequester = new TPCGIRequester();
                    }
                } finally {
                }
            }
        }
        return mRequester;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e4 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleRequestItem(com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPRequestItem r13) {
        /*
            r12 = this;
            java.lang.String r0 = "tpdlnative"
            java.lang.String r1 = "TPCGIRequester"
            java.lang.String r2 = r13.getUrl()
            r3 = 0
            r4 = 0
            java.net.URL r5 = new java.net.URL     // Catch: java.lang.Throwable -> Lcb
            r5.<init>(r2)     // Catch: java.lang.Throwable -> Lcb
            java.net.URLConnection r2 = r5.openConnection()     // Catch: java.lang.Throwable -> Lcb
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r3 = "GET"
            r2.setRequestMethod(r3)     // Catch: java.lang.Throwable -> Lc7
            r3 = 3000(0xbb8, float:4.204E-42)
            r2.setConnectTimeout(r3)     // Catch: java.lang.Throwable -> Lc7
            r2.connect()     // Catch: java.lang.Throwable -> Lc7
            int r3 = r2.getResponseCode()     // Catch: java.lang.Throwable -> Lc7
            r5 = 200(0xc8, float:2.8E-43)
            if (r3 == r5) goto L2e
            r5 = 206(0xce, float:2.89E-43)
            if (r3 != r5) goto Lc3
        L2e:
            r3 = 1
            int r5 = r13.getRequestType()     // Catch: java.lang.Throwable -> L40
            r6 = 2011(0x7db, float:2.818E-42)
            r7 = 2013(0x7dd, float:2.821E-42)
            if (r5 == r6) goto L46
            int r5 = r13.getRequestType()     // Catch: java.lang.Throwable -> L40
            if (r5 != r7) goto Lc2
            goto L46
        L40:
            r13 = move-exception
            r11 = r3
            r3 = r2
            r2 = r11
            goto Lcd
        L46:
            java.lang.StringBuffer r5 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L40
            r5.<init>()     // Catch: java.lang.Throwable -> L40
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L40
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L40
            java.io.InputStream r9 = r2.getInputStream()     // Catch: java.lang.Throwable -> L40
            java.lang.String r10 = "UTF-8"
            r8.<init>(r9, r10)     // Catch: java.lang.Throwable -> L40
            r6.<init>(r8)     // Catch: java.lang.Throwable -> L40
        L5b:
            java.lang.String r8 = r6.readLine()     // Catch: java.lang.Throwable -> L40
            if (r8 == 0) goto L6a
            r5.append(r8)     // Catch: java.lang.Throwable -> L40
            java.lang.String r8 = "\n"
            r5.append(r8)     // Catch: java.lang.Throwable -> L40
            goto L5b
        L6a:
            r6.close()     // Catch: java.lang.Throwable -> L40
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L40
            java.lang.String r6 = "QZOutputJson="
            java.lang.String r8 = ""
            java.lang.String r5 = r5.replace(r6, r8)     // Catch: java.lang.Throwable -> L40
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L40
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L40
            java.lang.String r8 = "start update config. responce data: "
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L40
            java.lang.String r5 = r8.concat(r5)     // Catch: java.lang.Throwable -> L40
            com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPDLProxyLog.i(r1, r4, r0, r5)     // Catch: java.lang.Throwable -> L40
            int r13 = r13.getRequestType()     // Catch: java.lang.Throwable -> L40
            java.lang.String r5 = "proxy_config"
            if (r13 != r7) goto La9
            java.lang.String r13 = "code"
            int r13 = r6.getInt(r13)     // Catch: java.lang.Throwable -> L40
            if (r13 != 0) goto Lc2
            java.lang.String r13 = "data"
            java.lang.String r13 = r6.getString(r13)     // Catch: java.lang.Throwable -> L40
            com.tencent.thumbplayer.tcmedia.core.downloadproxy.jni.TPDownloadProxyNative r6 = com.tencent.thumbplayer.tcmedia.core.downloadproxy.jni.TPDownloadProxyNative.getInstance()     // Catch: java.lang.Throwable -> L40
            r6.setUserData(r5, r13)     // Catch: java.lang.Throwable -> L40
            goto Lc2
        La9:
            java.lang.String r13 = "ret"
            int r13 = r6.getInt(r13)     // Catch: java.lang.Throwable -> L40
            if (r13 != 0) goto Lc2
            java.lang.String r13 = "config"
            org.json.JSONObject r13 = r6.getJSONObject(r13)     // Catch: java.lang.Throwable -> L40
            java.lang.String r13 = r13.toString()     // Catch: java.lang.Throwable -> L40
            com.tencent.thumbplayer.tcmedia.core.downloadproxy.jni.TPDownloadProxyNative r6 = com.tencent.thumbplayer.tcmedia.core.downloadproxy.jni.TPDownloadProxyNative.getInstance()     // Catch: java.lang.Throwable -> L40
            r6.setUserData(r5, r13)     // Catch: java.lang.Throwable -> L40
        Lc2:
            r4 = r3
        Lc3:
            r2.disconnect()
            return r4
        Lc7:
            r13 = move-exception
            r3 = r2
        Lc9:
            r2 = r4
            goto Lcd
        Lcb:
            r13 = move-exception
            goto Lc9
        Lcd:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le8
            java.lang.String r6 = "Send Request Routine error:"
            r5.<init>(r6)     // Catch: java.lang.Throwable -> Le8
            java.lang.String r13 = r13.toString()     // Catch: java.lang.Throwable -> Le8
            r5.append(r13)     // Catch: java.lang.Throwable -> Le8
            java.lang.String r13 = r5.toString()     // Catch: java.lang.Throwable -> Le8
            com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPDLProxyLog.e(r1, r4, r0, r13)     // Catch: java.lang.Throwable -> Le8
            if (r3 == 0) goto Le7
            r3.disconnect()
        Le7:
            return r2
        Le8:
            r13 = move-exception
            if (r3 == 0) goto Lee
            r3.disconnect()
        Lee:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPCGIRequester.handleRequestItem(com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPRequestItem):boolean");
    }

    private static ExecutorService obtainThreadExcutor() {
        if (mCustomExecutor == null) {
            synchronized (TPCGIRequester.class) {
                try {
                    if (mCustomExecutor == null) {
                        mCustomExecutor = Executors.newSingleThreadExecutor();
                    }
                } finally {
                }
            }
        }
        return mCustomExecutor;
    }

    private void process() {
        obtainThreadExcutor().execute(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPCGIRequester.2
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        TPRequestItem tPRequestItem = (TPRequestItem) TPCGIRequester.this.mRequestQueue.take();
                        if (!TPCGIRequester.this.handleRequestItem(tPRequestItem)) {
                            tPRequestItem.updateFailedTime();
                            TPCGIRequester.this.addRetryRequestItem(tPRequestItem);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e(TPCGIRequester.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "request queue take failed: " + th.toString());
                    }
                }
            }
        });
    }

    public void addRequestItem(String str, int i) {
        if (str.isEmpty()) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "request url null");
        } else {
            addNotifyReqQueue(new TPRequestItem(str, i));
        }
    }
}
