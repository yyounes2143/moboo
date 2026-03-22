package com.sensorsdata.analytics.android.sdk.encrypt.biz;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.encrypt.SAEncryptListener;
import com.sensorsdata.analytics.android.sdk.encrypt.SecreteKey;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAEventEncryptTools {
    private final SecretKeyManager mSecretKeyManager;
    private SecreteKey mSecreteKey;

    public SAEventEncryptTools(SAContextManager sAContextManager) {
        this.mSecretKeyManager = SecretKeyManager.getInstance(sAContextManager);
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0023: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:11:0x0023 */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private byte[] gzipEventData(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r1.<init>()     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            java.util.zip.GZIPOutputStream r2 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            byte[] r4 = r4.getBytes()     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L25
            r2.write(r4)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L25
            r2.finish()     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L25
            byte[] r4 = r1.toByteArray()     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L25
            r2.close()     // Catch: java.lang.Exception -> L1d
            return r4
        L1d:
            r0 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r0)
            return r4
        L22:
            r4 = move-exception
            r0 = r2
            goto L39
        L25:
            r4 = move-exception
            goto L2b
        L27:
            r4 = move-exception
            goto L39
        L29:
            r4 = move-exception
            r2 = r0
        L2b:
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r4)     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L38
            r2.close()     // Catch: java.lang.Exception -> L34
            goto L38
        L34:
            r4 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r4)
        L38:
            return r0
        L39:
            if (r0 == 0) goto L43
            r0.close()     // Catch: java.lang.Exception -> L3f
            goto L43
        L3f:
            r0 = move-exception
            com.sensorsdata.analytics.android.sdk.SALog.printStackTrace(r0)
        L43:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.encrypt.biz.SAEventEncryptTools.gzipEventData(java.lang.String):byte[]");
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [org.json.JSONObject, T] */
    public <T> T encryptTrackData(T t) {
        try {
            if (this.mSecretKeyManager.isSecretKeyNull(this.mSecreteKey)) {
                SecreteKey loadSecretKey = this.mSecretKeyManager.loadSecretKey();
                this.mSecreteKey = loadSecretKey;
                if (this.mSecretKeyManager.isSecretKeyNull(loadSecretKey)) {
                    return t;
                }
            }
            SAEncryptListener encryptListener = this.mSecretKeyManager.getEncryptListener(this.mSecreteKey);
            if (encryptListener != null) {
                String str = this.mSecreteKey.key;
                if (str.startsWith("EC:")) {
                    str = str.substring(str.indexOf(":") + 1);
                }
                String encryptSymmetricKeyWithPublicKey = encryptListener.encryptSymmetricKeyWithPublicKey(str);
                if (!TextUtils.isEmpty(encryptSymmetricKeyWithPublicKey)) {
                    String encryptEvent = encryptListener.encryptEvent(gzipEventData(t.toString()));
                    if (TextUtils.isEmpty(encryptEvent)) {
                        return t;
                    }
                    ?? r2 = (T) new JSONObject();
                    r2.put("ekey", encryptSymmetricKeyWithPublicKey);
                    r2.put("pkv", this.mSecreteKey.version);
                    r2.put("payloads", encryptEvent);
                    if (t instanceof String) {
                        return (T) r2.toString();
                    }
                    return r2;
                }
            }
            return t;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return t;
        }
    }
}
