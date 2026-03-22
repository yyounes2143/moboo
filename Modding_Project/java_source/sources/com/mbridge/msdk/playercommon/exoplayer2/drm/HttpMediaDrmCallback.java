package com.mbridge.msdk.playercommon.exoplayer2.drm;

import android.annotation.TargetApi;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.drm.ExoMediaDrm;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* compiled from: Proguard */
@TargetApi(18)
/* loaded from: classes5.dex */
public final class HttpMediaDrmCallback implements MediaDrmCallback {
    private static final int MAX_MANUAL_REDIRECTS = 5;
    private final HttpDataSource.Factory dataSourceFactory;
    private final String defaultLicenseUrl;
    private final boolean forceDefaultLicenseUrl;
    private final Map<String, String> keyRequestProperties;

    public HttpMediaDrmCallback(String str, HttpDataSource.Factory factory) {
        this(str, false, factory);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0069 A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #1 {all -> 0x004d, blocks: (B:10:0x0045, B:16:0x0051, B:18:0x0057, B:26:0x0069, B:31:0x0077, B:20:0x005d), top: B:34:0x0045, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0071 A[LOOP:1: B:9:0x002d->B:30:0x0071, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0077 A[EDGE_INSN: B:39:0x0077->B:31:0x0077 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] executePost(com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource.Factory r14, java.lang.String r15, byte[] r16, java.util.Map<java.lang.String, java.lang.String> r17) throws java.io.IOException {
        /*
            com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource r14 = r14.createDataSource()
            if (r17 == 0) goto L2a
            java.util.Set r0 = r17.entrySet()
            java.util.Iterator r0 = r0.iterator()
        Le:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L2a
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r14.setRequestProperty(r2, r1)
            goto Le
        L2a:
            r1 = 0
            r0 = r15
            r2 = r1
        L2d:
            com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec r3 = new com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec
            android.net.Uri r4 = android.net.Uri.parse(r0)
            r12 = 0
            r13 = 1
            r6 = 0
            r8 = 0
            r10 = -1
            r5 = r16
            r3.<init>(r4, r5, r6, r8, r10, r12, r13)
            com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSourceInputStream r4 = new com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSourceInputStream
            r4.<init>(r14, r3)
            byte[] r14 = com.mbridge.msdk.playercommon.exoplayer2.util.Util.toByteArray(r4)     // Catch: java.lang.Throwable -> L4d com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException -> L50
            com.mbridge.msdk.playercommon.exoplayer2.util.Util.closeQuietly(r4)
            return r14
        L4d:
            r0 = move-exception
            r14 = r0
            goto L78
        L50:
            r0 = move-exception
            int r3 = r0.responseCode     // Catch: java.lang.Throwable -> L4d
            r5 = 307(0x133, float:4.3E-43)
            if (r3 == r5) goto L5d
            int r3 = r0.responseCode     // Catch: java.lang.Throwable -> L4d
            r5 = 308(0x134, float:4.32E-43)
            if (r3 != r5) goto L65
        L5d:
            int r3 = r2 + 1
            r5 = 5
            if (r2 >= r5) goto L64
            r2 = 1
            goto L67
        L64:
            r2 = r3
        L65:
            r3 = r2
            r2 = r1
        L67:
            if (r2 == 0) goto L6e
            java.lang.String r2 = getRedirectUrl(r0)     // Catch: java.lang.Throwable -> L4d
            goto L6f
        L6e:
            r2 = 0
        L6f:
            if (r2 == 0) goto L77
            com.mbridge.msdk.playercommon.exoplayer2.util.Util.closeQuietly(r4)
            r0 = r2
            r2 = r3
            goto L2d
        L77:
            throw r0     // Catch: java.lang.Throwable -> L4d
        L78:
            com.mbridge.msdk.playercommon.exoplayer2.util.Util.closeQuietly(r4)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.playercommon.exoplayer2.drm.HttpMediaDrmCallback.executePost(com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource$Factory, java.lang.String, byte[], java.util.Map):byte[]");
    }

    private static String getRedirectUrl(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException) {
        List<String> list;
        Map<String, List<String>> map = invalidResponseCodeException.headerFields;
        if (map != null && (list = map.get("Location")) != null && !list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    public void clearAllKeyRequestProperties() {
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.clear();
        }
    }

    public void clearKeyRequestProperty(String str) {
        Assertions.checkNotNull(str);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.remove(str);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.MediaDrmCallback
    public byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest, @Nullable String str) throws Exception {
        String str2;
        String defaultUrl = keyRequest.getDefaultUrl();
        if (!TextUtils.isEmpty(defaultUrl)) {
            str = defaultUrl;
        }
        if (this.forceDefaultLicenseUrl || TextUtils.isEmpty(str)) {
            str = this.defaultLicenseUrl;
        }
        HashMap hashMap = new HashMap();
        UUID uuid2 = C.PLAYREADY_UUID;
        if (uuid2.equals(uuid)) {
            str2 = "text/xml";
        } else if (C.CLEARKEY_UUID.equals(uuid)) {
            str2 = "application/json";
        } else {
            str2 = "application/octet-stream";
        }
        hashMap.put("Content-Type", str2);
        if (uuid2.equals(uuid)) {
            hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.keyRequestProperties) {
            hashMap.putAll(this.keyRequestProperties);
        }
        return executePost(this.dataSourceFactory, str, keyRequest.getData(), hashMap);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.MediaDrmCallback
    public byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws IOException {
        return executePost(this.dataSourceFactory, provisionRequest.getDefaultUrl() + "&signedRequest=" + Util.fromUtf8Bytes(provisionRequest.getData()), new byte[0], null);
    }

    public void setKeyRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.put(str, str2);
        }
    }

    public HttpMediaDrmCallback(String str, boolean z, HttpDataSource.Factory factory) {
        this.dataSourceFactory = factory;
        this.defaultLicenseUrl = str;
        this.forceDefaultLicenseUrl = z;
        this.keyRequestProperties = new HashMap();
    }
}
