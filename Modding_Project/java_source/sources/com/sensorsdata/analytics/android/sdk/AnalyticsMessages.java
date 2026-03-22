package com.sensorsdata.analytics.android.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.common.net.HttpHeaders;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.exceptions.ConnectErrorException;
import com.sensorsdata.analytics.android.sdk.exceptions.InvalidDataException;
import com.sensorsdata.analytics.android.sdk.exceptions.ResponseErrorException;
import com.sensorsdata.analytics.android.sdk.internal.beans.InternalConfigOptions;
import com.sensorsdata.analytics.android.sdk.util.Base64Coder;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AnalyticsMessages {
    private static final int DELETE_ALL = 4;
    private static final int FLUSH_INSTANT_EVENT = 7;
    private static final int FLUSH_QUEUE = 3;
    private static final int FLUSH_SCHEDULE = 5;
    private static final Map<Context, AnalyticsMessages> S_INSTANCES = new HashMap();
    private static final String TAG = "SA.AnalyticsMessages";
    private final Context mContext;
    private final InternalConfigOptions mInternalConfigs;
    private final SensorsDataAPI mSensorsDataAPI;
    private final DbAdapter mDbAdapter = DbAdapter.getInstance();
    private final Worker mWorker = new Worker();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class Worker {
        private final Handler mHandler;
        private final Object mHandlerLock = new Object();

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public class AnalyticsMessageHandler extends Handler {
            public AnalyticsMessageHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                try {
                    int i = message.what;
                    if (i == 3) {
                        AnalyticsMessages.this.sendData(true);
                        AnalyticsMessages.this.sendData(false);
                    } else if (i == 4) {
                        try {
                            AnalyticsMessages.this.mDbAdapter.deleteAllEvents();
                        } catch (Exception e) {
                            SALog.printStackTrace(e);
                        }
                    } else if (i == 5) {
                        AnalyticsMessages.this.flushScheduled();
                        AnalyticsMessages.this.sendData(false);
                    } else if (i == 7) {
                        AnalyticsMessages.this.sendData(true);
                    } else {
                        SALog.i(AnalyticsMessages.TAG, "Unexpected message received by SensorsData worker: " + message);
                    }
                } catch (RuntimeException e2) {
                    SALog.i(AnalyticsMessages.TAG, "Worker threw an unhandled exception", e2);
                }
            }
        }

        public Worker() {
            HandlerThread handlerThread = new HandlerThread("com.sensorsdata.analytics.android.sdk.AnalyticsMessages.Worker", 1);
            handlerThread.start();
            this.mHandler = new AnalyticsMessageHandler(handlerThread.getLooper());
        }

        public void runMessage(Message message) {
            synchronized (this.mHandlerLock) {
                try {
                    Handler handler = this.mHandler;
                    if (handler == null) {
                        SALog.i(AnalyticsMessages.TAG, "Dead worker dropping a message: " + message.what);
                    } else {
                        handler.sendMessage(message);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void runMessageOnce(Message message, long j) {
            synchronized (this.mHandlerLock) {
                try {
                    Handler handler = this.mHandler;
                    if (handler == null) {
                        SALog.i(AnalyticsMessages.TAG, "Dead worker dropping a message: " + message.what);
                    } else if (!handler.hasMessages(message.what)) {
                        this.mHandler.sendMessageDelayed(message, j);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private AnalyticsMessages(Context context, SensorsDataAPI sensorsDataAPI, InternalConfigOptions internalConfigOptions) {
        this.mContext = context;
        this.mSensorsDataAPI = sensorsDataAPI;
        this.mInternalConfigs = internalConfigOptions;
    }

    private void closeStream(BufferedOutputStream bufferedOutputStream, OutputStream outputStream, InputStream inputStream, HttpURLConnection httpURLConnection) {
        if (bufferedOutputStream != null) {
            try {
                bufferedOutputStream.close();
            } catch (Exception e) {
                SALog.i(TAG, e.getMessage());
            }
        }
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (Exception e2) {
                SALog.i(TAG, e2.getMessage());
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e3) {
                SALog.i(TAG, e3.getMessage());
            }
        }
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e4) {
                SALog.i(TAG, e4.getMessage());
            }
        }
    }

    private String encodeData(String str) throws InvalidDataException {
        byte[] bytes;
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        try {
            try {
                bytes = str.getBytes("UTF-8");
                byteArrayOutputStream = new ByteArrayOutputStream(bytes.length);
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            gZIPOutputStream.write(bytes);
            gZIPOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            String str2 = new String(Base64Coder.encode(byteArray));
            try {
                gZIPOutputStream.close();
            } catch (IOException unused) {
            }
            return str2;
        } catch (IOException e2) {
            e = e2;
            throw new InvalidDataException(e);
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                try {
                    gZIPOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    public static AnalyticsMessages getInstance(Context context, SensorsDataAPI sensorsDataAPI, InternalConfigOptions internalConfigOptions) {
        AnalyticsMessages analyticsMessages;
        Map<Context, AnalyticsMessages> map = S_INSTANCES;
        synchronized (map) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (!map.containsKey(applicationContext)) {
                    analyticsMessages = new AnalyticsMessages(applicationContext, sensorsDataAPI, internalConfigOptions);
                    map.put(applicationContext, analyticsMessages);
                } else {
                    analyticsMessages = map.get(applicationContext);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return analyticsMessages;
    }

    private boolean isDeleteEventsByCode(int i) {
        if (i != 404 && i != 403) {
            if (i < 500 || i >= 600) {
                return true;
            }
            return false;
        }
        return false;
    }

    private boolean sendCheck() {
        try {
            if (!this.mSensorsDataAPI.isNetworkRequestEnable()) {
                SALog.i(TAG, "NetworkRequest is disabled");
                return false;
            } else if (TextUtils.isEmpty(this.mSensorsDataAPI.getServerUrl())) {
                SALog.i(TAG, "Server url is null or empty.");
                return false;
            } else if (!NetworkUtils.isNetworkAvailable(this.mContext)) {
                return false;
            } else {
                String networkType = NetworkUtils.networkType(this.mContext);
                if (!NetworkUtils.isShouldFlush(networkType, this.mSensorsDataAPI.getSAContextManager().getInternalConfigs().saConfigOptions.mNetworkTypePolicy)) {
                    SALog.i(TAG, String.format("Invalid NetworkType = %s", networkType));
                    return false;
                }
                if (this.mInternalConfigs.saConfigOptions.isMultiProcessFlush()) {
                    if (DbAdapter.getInstance().isSubProcessFlushing()) {
                        return false;
                    }
                    DbAdapter.getInstance().commitSubProcessFlushState(true);
                } else if (!this.mInternalConfigs.isMainProcess) {
                    return false;
                }
                return true;
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02a8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02ca A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:164:0x02f5 -> B:195:0x02f6). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendData(boolean r14) {
        /*
            Method dump skipped, instructions count: 781
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.AnalyticsMessages.sendData(boolean):void");
    }

    private void sendHttpRequest(String str, String str2, String str3, String str4, boolean z, boolean z2) throws ConnectErrorException, ResponseErrorException {
        InputStream inputStream;
        HttpURLConnection httpURLConnection;
        OutputStream outputStream;
        BufferedOutputStream bufferedOutputStream;
        InputStream errorStream;
        SSLSocketFactory sSLSocketFactory;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            URL url = new URL(str);
            httpURLConnection = (HttpURLConnection) url.openConnection();
            try {
                if (httpURLConnection == null) {
                    SALog.i(TAG, String.format("can not connect %s, it shouldn't happen", url));
                    closeStream(null, null, null, httpURLConnection);
                    return;
                }
                int i = SensorsDataAPI.VTRACK_SUPPORTED_MIN_API;
                SAConfigOptions configOptions = AbstractSensorsDataAPI.getConfigOptions();
                if (configOptions != null && (sSLSocketFactory = configOptions.mSSLSocketFactory) != null && (httpURLConnection instanceof HttpsURLConnection)) {
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
                }
                httpURLConnection.setInstanceFollowRedirects(false);
                if (this.mSensorsDataAPI.getDebugMode() == SensorsDataAPI.DebugMode.DEBUG_ONLY) {
                    httpURLConnection.addRequestProperty("Dry-Run", "true");
                }
                String cookie = this.mSensorsDataAPI.getCookie(false);
                if (!TextUtils.isEmpty(cookie)) {
                    httpURLConnection.setRequestProperty(HttpHeaders.COOKIE, cookie);
                }
                Uri.Builder builder = new Uri.Builder();
                if (!TextUtils.isEmpty(str2)) {
                    builder.appendQueryParameter("crc", String.valueOf(str2.hashCode()));
                }
                builder.appendQueryParameter("gzip", str3);
                builder.appendQueryParameter("data_list", str2);
                if (z2) {
                    builder.appendQueryParameter("instant_event", "true");
                }
                String encodedQuery = builder.build().getEncodedQuery();
                if (TextUtils.isEmpty(encodedQuery)) {
                    closeStream(null, null, null, httpURLConnection);
                    return;
                }
                httpURLConnection.setFixedLengthStreamingMode(encodedQuery.getBytes("UTF-8").length);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                httpURLConnection.setConnectTimeout(30000);
                httpURLConnection.setReadTimeout(30000);
                outputStream = httpURLConnection.getOutputStream();
                try {
                    bufferedOutputStream = new BufferedOutputStream(outputStream);
                    try {
                        bufferedOutputStream.write(encodedQuery.getBytes("UTF-8"));
                        bufferedOutputStream.flush();
                        int responseCode = httpURLConnection.getResponseCode();
                        SALog.i(TAG, "responseCode: " + responseCode);
                        if (!z && NetworkUtils.needRedirects(responseCode)) {
                            String location = NetworkUtils.getLocation(httpURLConnection, str);
                            if (!TextUtils.isEmpty(location)) {
                                closeStream(bufferedOutputStream, outputStream, null, httpURLConnection);
                                sendHttpRequest(location, str2, str3, str4, true, z2);
                                closeStream(bufferedOutputStream, outputStream, null, httpURLConnection);
                                return;
                            }
                        }
                        try {
                            errorStream = httpURLConnection.getInputStream();
                        } catch (FileNotFoundException unused) {
                            errorStream = httpURLConnection.getErrorStream();
                        }
                        inputStream = errorStream;
                        try {
                            byte[] slurp = slurp(inputStream);
                            inputStream.close();
                            String str5 = new String(slurp, "UTF-8");
                            if (SALog.isLogEnabled()) {
                                String formatJson = JSONUtils.formatJson(str4);
                                if (responseCode >= 200 && responseCode < 300) {
                                    SALog.i(TAG, "valid message: \n" + formatJson);
                                } else {
                                    SALog.i(TAG, "invalid message: \n" + formatJson);
                                    SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "ret_code: %d", Integer.valueOf(responseCode)));
                                    SALog.i(TAG, String.format(TimeUtils.SDK_LOCALE, "ret_content: %s", str5));
                                }
                            }
                            if (responseCode >= 200 && responseCode < 300) {
                                closeStream(bufferedOutputStream, outputStream, null, httpURLConnection);
                                return;
                            }
                            throw new ResponseErrorException(String.format("flush failure with response '%s', the response code is '%d'", str5, Integer.valueOf(responseCode)), responseCode);
                        } catch (IOException e) {
                            e = e;
                            bufferedOutputStream2 = httpURLConnection;
                            try {
                                throw new ConnectErrorException(e);
                            } catch (Throwable th) {
                                th = th;
                                httpURLConnection = bufferedOutputStream2;
                                bufferedOutputStream2 = bufferedOutputStream;
                                closeStream(bufferedOutputStream2, outputStream, inputStream, httpURLConnection);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream2 = bufferedOutputStream;
                            closeStream(bufferedOutputStream2, outputStream, inputStream, httpURLConnection);
                            throw th;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        inputStream = null;
                        bufferedOutputStream2 = httpURLConnection;
                        throw new ConnectErrorException(e);
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = null;
                        bufferedOutputStream2 = bufferedOutputStream;
                        closeStream(bufferedOutputStream2, outputStream, inputStream, httpURLConnection);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    inputStream = null;
                    bufferedOutputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = null;
                    closeStream(bufferedOutputStream2, outputStream, inputStream, httpURLConnection);
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
                inputStream = null;
                outputStream = null;
                bufferedOutputStream = null;
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
                outputStream = null;
            }
        } catch (IOException e5) {
            e = e5;
            inputStream = null;
            outputStream = null;
            bufferedOutputStream = null;
        } catch (Throwable th6) {
            th = th6;
            inputStream = null;
            httpURLConnection = null;
            outputStream = null;
        }
    }

    private static byte[] slurp(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr, 0, 8192);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public void deleteAll() {
        try {
            Message obtain = Message.obtain();
            obtain.what = 4;
            this.mWorker.runMessage(obtain);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void flush() {
        try {
            Message obtain = Message.obtain();
            obtain.what = 3;
            this.mWorker.runMessage(obtain);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void flushEventMessage(boolean z) {
        try {
            synchronized (this.mDbAdapter) {
                Message obtain = Message.obtain();
                obtain.what = 3;
                if (z) {
                    this.mWorker.runMessage(obtain);
                } else {
                    this.mWorker.runMessageOnce(obtain, this.mSensorsDataAPI.getFlushInterval());
                }
            }
        } catch (Exception e) {
            SALog.i(TAG, "enqueueEventMessage error:" + e);
        }
    }

    public void flushInstanceEvent() {
        try {
            Message obtain = Message.obtain();
            obtain.what = 7;
            this.mWorker.runMessage(obtain);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void flushScheduled() {
        try {
            Message obtain = Message.obtain();
            obtain.what = 5;
            this.mWorker.runMessageOnce(obtain, this.mSensorsDataAPI.getFlushInterval());
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static AnalyticsMessages getInstance(Context context) {
        return S_INSTANCES.get(context);
    }
}
